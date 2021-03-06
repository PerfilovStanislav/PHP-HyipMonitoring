<?php

namespace App\Helpers\Locales;

abstract class AbstractLanguage implements LocaleInterface {

    public string
        $active            = 'Active',
        $addLevel          = 'Add level',
        $addPlan           = 'Add plan',
        $addProject        = 'Project adding',
        $after             = 'after',
        $availableValues   = 'Available values',
        $badPassword       = 'Wrong password',
        $chat              = 'Chat',
        $check             = 'check',
        $contact           = 'Contact',
        $dateStart         = 'Start date',
        $deleted           = 'Deleted',
        $deposit           = 'Deposit',
        $description       = 'Description',
        $enter             = 'Enter',
        $error             = 'Error',
        $exit              = 'Exit',
        $expectedNumber    = 'Expected a number',
        $fileNotFound      = 'File %s is not found',
        $fixedLength       = 'Fixed length:',
        $free              = 'free',
        $freeForAddProject = 'Adding a project to the database is completely',
        $from              = 'from',
        $guest             = 'Guest',
        $headKeywords      = 'hyip monitoring 2020, profitable projects, capital, investments',
        $headDescription   = 'High Yield Investment Projects 2020',
        $headTitle         = 'Real Investment Market',
        $invalidDateFormat = 'Invalid date format',
        $languages         = 'Site languages',
        $level             = 'level',
        $login             = 'Login',
        $loginIsBusy       = 'This login is already registered. Please enter another',
        $maxLength         = 'Maximum number of characters:',
        $maxValue          = 'Maximum value:',
        $message           = 'Message',
        $messageIsSent     = 'Message is sent',
        $minDeposit        = 'Minimum deposit',
        $minLength         = 'Minimum number of characters:',
        $minValue          = 'Minimum value:',
        $menu              = 'Menu',
        $name              = 'Name',
        $needAuthorization = 'You need to log in',
        $no                = 'No',
        $noAccess          = 'No access',
        $noLanguage        = 'Language is not found',
        $noUser            = 'User is not found',
        $noPage            = 'Page is not found',
        $noProject         = 'Project is not found',
        $notPublished      = 'Not published',
        $options           = 'Options',
        $password          = 'Password',
        $paymentSystem     = 'Payment systems',
        $paywait           = 'Paywait',
        $period            = 'Period',
        $placeBanner       = 'Place a banner|for $%d per week',
        $plans             = 'Investment plans',
        $profit            = 'Profit',
        $projectName       = 'Project name',
        $projectIsAdded    = 'Project is added',
        $projectUrl        = 'Project\'s url or referral link',
        $prohibitedChars   = 'Prohibited characters are entered',
        $rating            = 'Rating',
        $refProgram        = 'Referral program',
        $registration      = 'Registration',
        $remember          = 'Remember',
        $remove            = 'Remove',
        $repeatPassword    = 'Repeat password',
        $required          = 'Required',
        $scam              = 'Scam',
        $sendForm          = 'Send form',
        $showAllLangs      = 'Show all languages',
        $siteExists        = 'Site already exists',
        $siteIsFree        = 'Site is free',
        $startDate         = 'Start date of project',
        $success           = 'Success',
        $userRegistered    = 'User is registered',
        $userRegistration  = 'User\'s registration',
        $writeMessage      = 'Write a message',
        $wrongUrl          = 'Wrong site\'s address',
        $wrongValue        = 'Wrong value',
        $yes               = 'Yes',
        $youAreAuthorized  = 'You are authorized';

    public array
        $paymentType       = ['Withdrawal', 'Manual', 'Instant', 'Automatic'],
        $periodName        = ['', 'minutes', 'hours', 'days', 'weeks', 'months', 'years'],
        $currency          = ['dollar', 'euro', 'bitcoin', 'ruble', 'pound', 'yen', 'won', 'rupee'];

    abstract public function getPeriodName(int $i, int $k): string;
}
