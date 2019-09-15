<?php
namespace Views\StaticFiles; {
/**
 * @var SiteManifest $this
 * @property LocaleInterface $locale
 */
Class SiteManifest {} }
use Interfaces\LocaleInterface;
?>
{
    "start_url": "/",
    "name": "Richinme",
    "short_name": "RiM",
    "icons": [
        {
            "src": "/assets/icons/android-chrome-192x192.png",
            "sizes": "192x192",
            "type": "image/png"
        },
        {
            "src": "/assets/icons/android-chrome-512x512.png",
            "sizes": "512x512",
            "type": "image/png"
        }
    ],
    "theme_color": "#ffffff",
    "background_color": "#ffffff",
    "description": "<?=$this->locale['head']['description']?>",
    "display": "standalone",
    "screenshots": [{
        "src": "/assets/img/sitescreen.png",
        "sizes": "1280x920",
        "type": "image/png"
    }]
}