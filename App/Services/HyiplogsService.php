<?php

namespace App\Services;

use DiDom\Document;
use App\Exceptions\ErrorException;
use App\Helpers\HttpClient\CurlHttpClient;
use App\Helpers\HttpClient\CurlRequestDto;
use App\Helpers\HttpClient\CurlResponseDto;
use App\Helpers\Validator;
use App\Mappers\HyiplogsMapper;
use App\Models\Constant\PlanPeriodType;
use App\Traits\Instance;
use App\Traits\UrlValidate;

class HyiplogsService
{
    use Instance, UrlValidate;

    const PREFIX = 'https://hyiplogs.com/';

    private Document $document;

    public function setUrl(string $url): ?self {
        $url = self::PREFIX . $url;

        $client = (new CurlHttpClient());
        $request = new CurlRequestDto($url);
        $result = $this->reTry(static function() use ($client, $request) {
            return $client->get($request);
        });

        $options = 	[
            "indent" => false,
            "output-xml" => false,
            "clean" => true,
            "drop-proprietary-attributes" => true,
            "drop-empty-paras" => true,
            "hide-comments" => true,
            "join-classes" => true,
            "join-styles" => true,
            "show-body-only" => true,
        ];
        $tidy = new \tidy();
        $tidy->parseString($result->getRawBody(), $options, 'utf8');
        $tidy->cleanRepair();

        $this->document = new Document($tidy->html()->value, false);
        return $this;
    }

    public function getDocument()
    {
        return $this->document;
    }

    /** @return CurlResponseDto */
    private function reTry(callable $functionForCall, int $try = 1)
    {
        $result = $functionForCall();
        if ($result->getError() !== '') {
            if ($try === 1) {
                throw new ErrorException(__CLASS__, $result->getError());
            }
            sleep($try * 10);
            return $this->reTry($functionForCall, ++$try);
        }
        return $result;
    }

    public function getProjectId() {
        return $this->document->xpath('//@data-hid')[0] ?? null;
    }

    public function getPayments(): array {
        $str = $this->document->first('div.container-fluid div.info-box div.item:nth-child(6) div.txt')->text();
        $str = str_replace(["\n", "\r", ' '], ['', '', ''], $str);
        $str = explode(',', $str);
        return (new HyiplogsMapper())->payments($str);
    }

    public function getRating() {
        return $this->document->first('div.container-fluid div.hl-index-box span')->text();
    }

    public function getReferralPlans()
    {
        $str = trim($this->document->first('.content div.info-box div.item:nth-child(5) div.txt')->text());
        $str = str_replace(["\n", "\r"], ['', ''], $str);
        $str = preg_replace('/[^'.Validator::FLOAT.'\-,]/', '', $str);
        $str = str_replace([','], ['-'], $str);
        return array_filter(explode('-', $str), fn($plan) => $plan > 0 && $plan < 1000);
    }

    public function getPlans() {
//        try {
            $str = $this->document->first('.content div.info-box div.item:nth-child(1) div.txt')->text();
            $str = str_replace(["\n", "\r"], ['', ''], $str);
//        } catch (\Throwable $e) {
//            return [];
//        }

        $result = [];
        $strPlans = explode(';', strtolower($str));
        foreach ($strPlans as $strPlan) {
            $strPlan = str_replace(["\n", "\r"], ['', ''], $strPlan);
            $strPlan = preg_replace('/\(.*?\)/', '', $strPlan); // убираем скобки
            $strPlan = preg_replace('/( \+ .*)/', '', $strPlan);
            $strPlan = str_replace('up to ', '', $strPlan);
            $strPlan = trim($strPlan);
            $strPlan = str_replace(['forever', 'for lifetime'], ' for 1 ___', $strPlan);

            if (strpos($strPlan, 'roi') !== false) {
                continue;
            }

            // 1.25% - 2.1% daily for 20 - 60 days
            // 1.2% - 10.3% daily for 15 - 30 business days
            if (preg_match('/^([0-9.]+)% ?- ?([0-9.]+)% ?(\w+) ?for ?(\d+) ?- ?(\d+) ?(\w+ )?(\w+)$/', $strPlan, $v)) {
                if ($v[7] === '___') {
                    $v[7] = PlanPeriodType::getConstNameLower($this->getPlanPeriodType($v[3]));
                }
                $coefficient = $this->calculateCoefficientForPeriodTypes(
                        $this->getPlanPeriodType($v[3]),
                        $this->getPlanPeriodType($v[7]),
                    ) * $this->businessCoefficient($v[6]);
                $result[] = [
                    $this->round($v[1] * $coefficient * $v[4]),
                    $v[4],
                    $this->getPlanPeriodType($v[7]),
                ];
                $result[] = [
                    $this->round($v[2] * $coefficient * $v[5]),
                    $v[5],
                    $this->getPlanPeriodType($v[7]),
                ];
                continue;
            }

            // 3% - 5% business daily for 150% profit
            // 3% - 5% daily for 150% profit
            if (preg_match('/^([0-9.]+)% ?- ?([0-9.]+)% ?( ?\w*) (\w+) \w+ (\d+)% profit$/', $strPlan, $v)) {
                $percent = ($v[1] + $v[2]) * 0.5 * $this->businessCoefficient($v[3]);
                $period = round(($v[5] / $percent), 0, PHP_ROUND_HALF_UP);
                $result[] = [
                    $this->round($percent * $period),
                    $period,
                    $this->getPlanPeriodType($v[4]),
                ];
                continue;
            }

            // 415% after 51 business days
            // 415% after 51 days
            if (preg_match('/^([0-9.]+)% ?after ?(\d+) ?(\w+ )?(\w+)$/', $strPlan, $v)) {
                $result[] = [
                    $this->round($v[1] * $this->businessCoefficient($v[3])),
                    $v[2],
                    $this->getPlanPeriodType($v[4]),
                ];
                continue;
            }

            // 102% - 111% after 1 day
            // 150%- 190% after 3 business days
            if (preg_match('/^([0-9.]+)% ?- ?([0-9.]+)% ?after ?(\d+) ?(\w+ )?(\w+)$/', $strPlan, $v)) {
                $result[] = [
                    $this->round(($v[1] + $v[2]) * 0.5 * $this->businessCoefficient($v[4])),
                    $v[3],
                    $this->getPlanPeriodType($v[5]),
                ];
                continue;
            }

            // 55% - 70% daily for 2 days
            // 2% - 3% hourly for 3 days
            // 2.5% - 3.1% hourly for 3 business days
            if (preg_match('/^([0-9.]+)% ?- ?([0-9.]+)% ?(\w+) *(\w+) ?(\d+) ?(\w+ )?(\w+)$/', $strPlan, $v)) {
                if ($v[7] === '___') {
                    $v[7] = PlanPeriodType::getConstNameLower($this->getPlanPeriodType($v[3]));
                }
                $coefficient = $this->calculateCoefficientForPeriodTypes(
                        $this->getPlanPeriodType($v[3]),
                        $this->getPlanPeriodType($v[7]),
                    ) * $this->businessCoefficient($v[6]);
                $result[] = [
                    $this->round(($v[1] + $v[2]) * 0.5 * $coefficient * $v[5]),
                    $v[5],
                    $this->getPlanPeriodType($v[7]),
                ];
                continue;
            }
            // 0.33% - 0.63% daily
            // 0.33% - 0.63% hourly
            if (preg_match('/^([0-9.]+)% ?- ?([0-9.]+)% ?(\w+)$/', $strPlan, $v)) {
                $result[] = [
                    $this->round(($v[1] + $v[2]) * 0.5),
                    1,
                    $this->getPlanPeriodType($v[3]),
                ];
                continue;
            }

            // up to 4% daily
            // up to 4% hourly
            if (preg_match('/^([0-9.]+)% ?(\w+)$/', $strPlan, $v)) {
                $result[] = [
                    $this->round($v[1]),
                    1,
                    $this->getPlanPeriodType($v[2]),
                ];
                continue;
            }

            // 1.8% daily for 100 days
            // 2.5% hourly for 80 business days
            if (preg_match('/^([0-9.]+)% ?(\w+) *(\w+) ?(\d+) ?(\w+ )?(\w+)$/', $strPlan, $v)) {
                if ($v[6] === '___') {
                    $v[6] = PlanPeriodType::getConstNameLower($this->getPlanPeriodType($v[2]));
                }
                $coefficient = $this->calculateCoefficientForPeriodTypes(
                        $this->getPlanPeriodType($v[2]),
                        $this->getPlanPeriodType($v[6]),
                    ) * $this->businessCoefficient($v[5]);
                $result[] = [
                    $this->round($v[1] * $coefficient * $v[4]),
                    $v[4],
                    $this->getPlanPeriodType($v[6]),
                ];
                continue;
            }
        }

        return $result;
    }

    public function loadScreen()
    {
        if (($node = $this->document->first('.hyip-img')) === null) {
            return null;
        }
        return $node->attr('data-src');
    }

    public function isScam(): bool {
        return (bool)(
            $this->document->first('div.hyip-rid div.bg-notpaying')
        );
    }

    private function round(float $percent): float {
        return round($percent, 2, PHP_ROUND_HALF_DOWN);
    }

    private function businessCoefficient(string $str): float {
        return strpos($str, 'business') !== false ? 5/7 : 1.0;
    }

    private function calculateCoefficientForPeriodTypes(int $timely, int $periodType, float $coefficient = 1.0): float {
        if ($timely === $periodType) {
            return $coefficient;
        }
        if ($timely < $periodType) {
            $coefficient *= [
                    PlanPeriodType::YEAR  => 12,             // 1 year = 12 months
                    PlanPeriodType::MONTH => 4.34821428571,  // 1 month = 4,34821428571 weeks
                    PlanPeriodType::WEEK  => 7,              // 1 week = 7 days
                    PlanPeriodType::DAY   => 24,             // 1 day = 24 hours
                    PlanPeriodType::HOUR  => 60,             // 1 hour = 60 minutes
                ][++$timely] ?? 0;

            return $this->calculateCoefficientForPeriodTypes($timely, $periodType, $coefficient);
        }

        return 0;
    }

    private function getPlanPeriodType(string $periodTypeStr): int {
        foreach (PlanPeriodType::getConstNames() as $constName) {
            if (stripos($periodTypeStr, $constName) !== false) {
                return PlanPeriodType::getValue($constName);
            }
        }
        if (stripos($periodTypeStr, 'daily') !== false) {
            return PlanPeriodType::DAY;
        }
        return 0;
    }

}