<?php

namespace App\Core;

use App\Dto\CustomRoute;
use App\Dto\DefaultRoute;
use App\Dto\ErrorRoute;
use App\Dto\RouteInterface;
use App\Helpers\Output;
use App\Helpers\Validator;
use App\Mappers\StaticRouteMapper;
use ReflectionException;
use App\Traits\Instance;
use App\Views\Errors\ErrorDefault;
use App\Views\Investment\Show;

class Router {
    use Instance;

    private RouteInterface $route;

    /**
     * @param string|null $uri
     * @return mixed
     * @throws ReflectionException
     */
    public function go(string $uri = null) {
        $uri ??= $this->getRequestUri();

        try {
            return $this->route($this->getRouteFromUri($uri));
        } catch (\BadMethodCallException $e) {
            return $this->route(new ErrorRoute(Translate()->error, Translate()->noPage));
        }
    }

    private function getRouteFromUri(string $uri): RouteInterface {
        $uri = Validator::regex('uri', $uri, Validator::SITE_URI);

        $route = StaticRouteMapper::get($uri);
        if ($route) {
            return $route;
        }

        if (!CLI) {
            App()->auth();
        }

        $uriParams = explode('/', strtolower(trim($uri,'/')));
        return $this->getRouteFromUriParams($uriParams);
    }

    private function getRouteFromUriParams(array $uriParams): RouteInterface {
        $uriParams = array_filter($uriParams);

        $count = count($uriParams);
        if ($count >= 2) {
            return new CustomRoute(
                'App\Controllers\\' . ucfirst(array_shift($uriParams)),
                array_shift($uriParams),
                $this->prepareParams($uriParams ?? [])
            );
        }

        if ($count === 0) {
            return new DefaultRoute(); /** @see Investment::show() */ /** @see Show */
        }

        return new ErrorRoute(Translate()->error, Translate()->noPage); /** @see Errors::show() */ /** @see ErrorDefault */
    }

    private function getRequestUri(): string {
        return substr($_SERVER['REQUEST_URI'] ?? '', strlen(DIR));
    }

    public function route(RouteInterface $route) {
        $controllerClass = $route->getControllerClass();

        if(!file_exists(real_path($controllerClass).'.php')) {
            throw new \BadMethodCallException(sprintf('Class %s doesn\'t exist', $controllerClass));
        }

        $controller = new $controllerClass();
        if (!is_callable([$controller, $route->getAction()])) {
            throw new \BadMethodCallException(sprintf('Method %s in the class %s is not callable', $route->getAction(), $controllerClass));
        }

        if (($_SERVER['CONTENT_TYPE'] ?? '') === Output::JSON) {
            $input = json_decode(file_get_contents('php://input'), true, 512, JSON_THROW_ON_ERROR);
        }
        $params = array_merge($_POST, $input ?? [], $route->getParams());

        $reflectionParameters = (new \ReflectionMethod($controller, $route->getAction()))->getParameters();
        if ($reflectionParameters) {
            $params = array_map(function (\ReflectionParameter $reflectionParameter) use (/*&*/$params) {
                /** @var \ReflectionNamedType $type */
                $type = $reflectionParameter->getType()->getName();
                if (\strlen($type) > 10) {
                    return new $type($params);
                }

                if ($param = ($params[/*$paramName = */$reflectionParameter->getName()] ?? null)) {
                    return $param;
                }

                if ($type === 'array') {
                    return $params;
                }

                if (($default = $reflectionParameter->getDefaultValue()) !== null) {
                    return $default;
                }

                return null;
            }, $reflectionParameters);
        }
        $this->route = $route;
        return call_user_func_array([$controller, $route->getAction()], $params);
    }

    private function prepareParams(array $params): array {
        return array_merge(...array_filter(
            array_map(fn(array $a): array => (isset($a[1]) ? [$a[0] => $a[1]] : []),
                array_chunk($params, 2)
            )));
    }

    public function getRoute(): RouteInterface {
        return $this->route;
    }
}
