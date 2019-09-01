<?php
namespace Views; { Class Layout {} }

use Helpers\Locale;
use Helpers\Output;
use Models\Constant\Views;
?>
<!DOCTYPE html>
<html lang="<?=Locale::getLanguage()?>">
<head>
    <meta charset="utf-8">
    <title>RichInme - <?=$this->locale['head']['title']?></title>
    <meta name="keywords" content="<?=$this->locale['head']['keywords']?>"/>
    <meta name="description" content="<?=$this->locale['head']['description']?>">
    <meta name="author" content="RichInMe">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="index,follow">

    <meta property="og:locale" content="<?=Locale::getLanguage()?>" />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="Richinme" />
    <meta property="og:image:width" content="1181">
    <meta property="og:image:height" content="810">
    <meta property="og:url" content="<?=SITE?>">
    <meta property="og:image" content="<?=SITE?>/assets/img/richinme/logo-1161x810.png" data-meta-dynamic="true">
    <meta property="og:image:secure_url" content="<?=SITE?>/assets/img/richinme/logo-1161x810.png" data-meta-dynamic="true">
    <meta property="og:image:type" content="image/png" />
    <meta property="og:description" content="<?=$this->locale['head']['description']?>" data-meta-dynamic="true">
    <meta property="og:title" content="<?=$this->locale['head']['title']?>" data-meta-dynamic="true">
    <meta property="pageType" content="video">
    <meta itemprop="image" content="https://richinme.com/assets/img/richinme/logo-1161x810.png">
    <meta itemprop="name" content="<?=$this->locale['head']['description']?>">

    <link rel="shortcut icon" href="/assets/icons/favicon-32x32.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/icons/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/assets/icons/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/assets/icons/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
    <link rel="mask-icon" href="/assets/icons/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="apple-mobile-web-app-title" content="RiM">
    <meta name="application-name" content="RiM">
    <meta name="msapplication-TileColor" content="#ffc40d">
    <meta name="theme-color" content="#ffffff">

    <meta name="twitter:title" content="<?=$this->locale['head']['title']?>" data-meta-dynamic="true">
    <meta name="twitter:site" content="@richinme" data-meta-dynamic="true">
    <meta name="twitter:creator" content="@richinme" data-meta-dynamic="true">
    <meta name="twitter:image:alt" content="RichInme - <?=$this->locale['head']['title']?>" data-meta-dynamic="true">
    <meta name="twitter:description" content="<?=$this->locale['head']['description']?>" data-meta-dynamic="true">
    <meta name="twitter:image" content="<?=SITE?>/assets/img/richinme/logo-1161x810.png" data-meta-dynamic="true">
    <meta name="twitter:card" content="summary_large_image">






    <!--    <meta property="subpageType" content="single">-->
    <!--    <meta property="pageId" content="vi834191129">-->
    <!--    <meta name="requestId" content="AZB664H0VFVJ1E90GX9Y">-->
    <!--    <meta property="fb:app_id" content="115109575169727">-->
    <!--    <meta property="og:type" content="video.other">-->
    <!--    <link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.imdb.com/list/ls025849840/videoplayer/vi834191129">-->
    <!--    <link rel="stylesheet" href="https://m.media-amazon.com/images/G/01/imdb/css/collections/video-player-page-813841666._CB441580132_.css">-->




    <? \Helpers\Scripts::loadCSS(DEBUG) ?>
</head>

<body class="dashboard-page">
<div id="main">
    <header class="navbar navbar-fixed-top navbar-shadow">
        <div class="navbar-branding">
            <a class="navbar-brand" href="/">
                <b class="first">Rich</b><b class="second">inMe</b>
            </a>
            <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
        </div>
        <div id="<?=Views::USER_HEAD?>" class="animated fadeIn">
            <?=$this->{Views::USER_HEAD}?>
        </div>
    </header>
    <aside id="<?=Views::SIDEBAR_LEFT?>" class="nano nano-light affix">
        <?=$this->{Views::SIDEBAR_LEFT}?>
    </aside>
    <section id="content_wrapper">
        <div id="<?=Views::CONTENT;?>" class="animated fadeIn">
            <?=$this->{Views::CONTENT}?>
        </div>
    </section>
</div>
<div hidden>
    <div class="alert alert-dismissable alert-micro alert-border-left mrn mln" id="alert">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <i class="fa fa-warning pr10"></i>
        <er>{error}</er>
    </div>
</div>

<?=$this->{Views::CHAT_MESSAGE}?>

<? \Helpers\Scripts::loadJS(DEBUG) ?>

<script id="scripts">
    <? foreach ([Output::FUNCTION, Output::FIELD, Output::ALERT] as $type) {
    if ($this->{$type}) { ?>
        applyFunctions('<?=$type?>', <?=json_encode($this->{$type})?>);
    <? }} ?>
</script>
</body>
</html>