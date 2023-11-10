<!DOCTYPE html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="https://gmpg.org/xfn/11">
<title>Play the first ever text adventure game in your Linux terminal! &#8211; Linux Impact</title>
<script>window.koko_analytics = {"url":"https:\/\/linuximpact.com\/wp-admin\/admin-ajax.php?action=koko_analytics_collect","post_id":384,"use_cookie":1,"cookie_path":"\/"};</script><meta name='robots' content='max-image-preview:large' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel="alternate" type="application/rss+xml" title="Linux Impact &raquo; Feed" href="https://linuximpact.com/feed/" />
<link rel="alternate" type="application/rss+xml" title="Linux Impact &raquo; Comments Feed" href="https://linuximpact.com/comments/feed/" />
<script>
window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/14.0.0\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/linuximpact.com\/wp-includes\/js\/wp-emoji-release.min.js?ver=6.4.1"}};
/*! This file is auto-generated */
!function(i,n){var o,s,e;function c(e){try{var t={supportTests:e,timestamp:(new Date).valueOf()};sessionStorage.setItem(o,JSON.stringify(t))}catch(e){}}function p(e,t,n){e.clearRect(0,0,e.canvas.width,e.canvas.height),e.fillText(t,0,0);var t=new Uint32Array(e.getImageData(0,0,e.canvas.width,e.canvas.height).data),r=(e.clearRect(0,0,e.canvas.width,e.canvas.height),e.fillText(n,0,0),new Uint32Array(e.getImageData(0,0,e.canvas.width,e.canvas.height).data));return t.every(function(e,t){return e===r[t]})}function u(e,t,n){switch(t){case"flag":return n(e,"\ud83c\udff3\ufe0f\u200d\u26a7\ufe0f","\ud83c\udff3\ufe0f\u200b\u26a7\ufe0f")?!1:!n(e,"\ud83c\uddfa\ud83c\uddf3","\ud83c\uddfa\u200b\ud83c\uddf3")&&!n(e,"\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f","\ud83c\udff4\u200b\udb40\udc67\u200b\udb40\udc62\u200b\udb40\udc65\u200b\udb40\udc6e\u200b\udb40\udc67\u200b\udb40\udc7f");case"emoji":return!n(e,"\ud83e\udef1\ud83c\udffb\u200d\ud83e\udef2\ud83c\udfff","\ud83e\udef1\ud83c\udffb\u200b\ud83e\udef2\ud83c\udfff")}return!1}function f(e,t,n){var r="undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope?new OffscreenCanvas(300,150):i.createElement("canvas"),a=r.getContext("2d",{willReadFrequently:!0}),o=(a.textBaseline="top",a.font="600 32px Arial",{});return e.forEach(function(e){o[e]=t(a,e,n)}),o}function t(e){var t=i.createElement("script");t.src=e,t.defer=!0,i.head.appendChild(t)}"undefined"!=typeof Promise&&(o="wpEmojiSettingsSupports",s=["flag","emoji"],n.supports={everything:!0,everythingExceptFlag:!0},e=new Promise(function(e){i.addEventListener("DOMContentLoaded",e,{once:!0})}),new Promise(function(t){var n=function(){try{var e=JSON.parse(sessionStorage.getItem(o));if("object"==typeof e&&"number"==typeof e.timestamp&&(new Date).valueOf()<e.timestamp+604800&&"object"==typeof e.supportTests)return e.supportTests}catch(e){}return null}();if(!n){if("undefined"!=typeof Worker&&"undefined"!=typeof OffscreenCanvas&&"undefined"!=typeof URL&&URL.createObjectURL&&"undefined"!=typeof Blob)try{var e="postMessage("+f.toString()+"("+[JSON.stringify(s),u.toString(),p.toString()].join(",")+"));",r=new Blob([e],{type:"text/javascript"}),a=new Worker(URL.createObjectURL(r),{name:"wpTestEmojiSupports"});return void(a.onmessage=function(e){c(n=e.data),a.terminate(),t(n)})}catch(e){}c(n=f(s,u,p))}t(n)}).then(function(e){for(var t in e)n.supports[t]=e[t],n.supports.everything=n.supports.everything&&n.supports[t],"flag"!==t&&(n.supports.everythingExceptFlag=n.supports.everythingExceptFlag&&n.supports[t]);n.supports.everythingExceptFlag=n.supports.everythingExceptFlag&&!n.supports.flag,n.DOMReady=!1,n.readyCallback=function(){n.DOMReady=!0}}).then(function(){return e}).then(function(){var e;n.supports.everything||(n.readyCallback(),(e=n.source||{}).concatemoji?t(e.concatemoji):e.wpemoji&&e.twemoji&&(t(e.twemoji),t(e.wpemoji)))}))}((window,document),window._wpemojiSettings);
</script>
<style id='wp-emoji-styles-inline-css'>

	img.wp-smiley, img.emoji {
		display: inline !important;
		border: none !important;
		box-shadow: none !important;
		height: 1em !important;
		width: 1em !important;
		margin: 0 0.07em !important;
		vertical-align: -0.1em !important;
		background: none !important;
		padding: 0 !important;
	}
</style>
<link rel='stylesheet' id='wp-block-library-css' href='https://linuximpact.com/wp-includes/css/dist/block-library/style.min.css?ver=6.4.1' media='all' />
<style id='classic-theme-styles-inline-css'>
/*! This file is auto-generated */
.wp-block-button__link{color:#fff;background-color:#32373c;border-radius:9999px;box-shadow:none;text-decoration:none;padding:calc(.667em + 2px) calc(1.333em + 2px);font-size:1.125em}.wp-block-file__button{background:#32373c;color:#fff;text-decoration:none}
</style>
<style id='global-styles-inline-css'>
body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;--wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);--wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);--wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);--wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);--wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);}:where(.is-layout-flex){gap: 0.5em;}:where(.is-layout-grid){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}body .is-layout-grid{display: grid;}body .is-layout-grid > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}:where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}
.wp-block-navigation a:where(:not(.wp-element-button)){color: inherit;}
:where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}
:where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}
.wp-block-pullquote{font-size: 1.5em;line-height: 1.6;}
</style>
<link rel='stylesheet' id='newsup-fonts-css' href='//fonts.googleapis.com/css?family=Montserrat%3A400%2C500%2C700%2C800%7CWork%2BSans%3A300%2C400%2C500%2C600%2C700%2C800%2C900%26display%3Dswap&#038;subset=latin%2Clatin-ext' media='all' />
<link rel='stylesheet' id='bootstrap-css' href='https://linuximpact.com/wp-content/themes/newsup/css/bootstrap.css?ver=6.4.1' media='all' />
<link rel='stylesheet' id='newsup-style-css' href='https://linuximpact.com/wp-content/themes/news-talk/style.css?ver=6.4.1' media='all' />
<link rel='stylesheet' id='font-awesome-5-all-css' href='https://linuximpact.com/wp-content/themes/newsup/css/font-awesome/css/all.min.css?ver=6.4.1' media='all' />
<link rel='stylesheet' id='font-awesome-4-shim-css' href='https://linuximpact.com/wp-content/themes/newsup/css/font-awesome/css/v4-shims.min.css?ver=6.4.1' media='all' />
<link rel='stylesheet' id='owl-carousel-css' href='https://linuximpact.com/wp-content/themes/newsup/css/owl.carousel.css?ver=6.4.1' media='all' />
<link rel='stylesheet' id='smartmenus-css' href='https://linuximpact.com/wp-content/themes/newsup/css/jquery.smartmenus.bootstrap.css?ver=6.4.1' media='all' />
<link rel='stylesheet' id='newsup-style-parent-css' href='https://linuximpact.com/wp-content/themes/newsup/style.css?ver=6.4.1' media='all' />
<link rel='stylesheet' id='newstalk-style-css' href='https://linuximpact.com/wp-content/themes/news-talk/style.css?ver=1.0' media='all' />
<link rel='stylesheet' id='newstalk-default-css-css' href='https://linuximpact.com/wp-content/themes/news-talk/css/colors/default.css?ver=6.4.1' media='all' />
<script src="https://linuximpact.com/wp-includes/js/jquery/jquery.min.js?ver=3.7.1" id="jquery-core-js"></script>
<script src="https://linuximpact.com/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1" id="jquery-migrate-js"></script>
<script src="https://linuximpact.com/wp-content/themes/newsup/js/navigation.js?ver=6.4.1" id="newsup-navigation-js"></script>
<script src="https://linuximpact.com/wp-content/themes/newsup/js/bootstrap.js?ver=6.4.1" id="bootstrap-js"></script>
<script src="https://linuximpact.com/wp-content/themes/newsup/js/owl.carousel.min.js?ver=6.4.1" id="owl-carousel-min-js"></script>
<script src="https://linuximpact.com/wp-content/themes/newsup/js/jquery.smartmenus.js?ver=6.4.1" id="smartmenus-js-js"></script>
<script src="https://linuximpact.com/wp-content/themes/newsup/js/jquery.smartmenus.bootstrap.js?ver=6.4.1" id="bootstrap-smartmenus-js-js"></script>
<script src="https://linuximpact.com/wp-content/themes/newsup/js/jquery.marquee.js?ver=6.4.1" id="newsup-marquee-js-js"></script>
<script src="https://linuximpact.com/wp-content/themes/newsup/js/main.js?ver=6.4.1" id="newsup-main-js-js"></script>
<link rel="https://api.w.org/" href="https://linuximpact.com/wp-json/" /><link rel="alternate" type="application/json" href="https://linuximpact.com/wp-json/wp/v2/posts/384" /><link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://linuximpact.com/xmlrpc.php?rsd" />
<meta name="generator" content="WordPress 6.4.1" />
<link rel="canonical" href="https://linuximpact.com/play-the-first-ever-text-adventure-game-in-your-linux-terminal/" />
<link rel='shortlink' href='https://linuximpact.com/?p=384' />
<link rel="alternate" type="application/json+oembed" href="https://linuximpact.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Flinuximpact.com%2Fplay-the-first-ever-text-adventure-game-in-your-linux-terminal%2F" />
<link rel="alternate" type="text/xml+oembed" href="https://linuximpact.com/wp-json/oembed/1.0/embed?url=https%3A%2F%2Flinuximpact.com%2Fplay-the-first-ever-text-adventure-game-in-your-linux-terminal%2F&#038;format=xml" />
<style type="text/css" id="custom-background-css">
    .wrapper { background-color: #eee; }
</style>
    <style type="text/css">
            body .site-title a,
        body .site-description {
            color: ##143745;
        }

        .site-branding-text .site-title a {
                font-size: 54px;
            }

            @media only screen and (max-width: 640px) {
                .site-branding-text .site-title a {
                    font-size: 40px;

                }
            }

            @media only screen and (max-width: 375px) {
                .site-branding-text .site-title a {
                    font-size: 32px;

                }
            }

        </style>
    <link rel="icon" href="https://linuximpact.com/wp-content/uploads/2023/11/cropped-linux_impact_site_icon_penguin-32x32.jpg" sizes="32x32" />
<link rel="icon" href="https://linuximpact.com/wp-content/uploads/2023/11/cropped-linux_impact_site_icon_penguin-192x192.jpg" sizes="192x192" />
<link rel="apple-touch-icon" href="https://linuximpact.com/wp-content/uploads/2023/11/cropped-linux_impact_site_icon_penguin-180x180.jpg" />
<meta name="msapplication-TileImage" content="https://linuximpact.com/wp-content/uploads/2023/11/cropped-linux_impact_site_icon_penguin-270x270.jpg" />
</head>
<body class="post-template-default single single-post postid-384 single-format-standard wp-embed-responsive ta-hide-date-author-in-list" >
<div id="page" class="site">
<a class="skip-link screen-reader-text" href="#content">
Skip to content</a>
    <div class="wrapper" id="custom-background-css">
        <header class="mg-headwidget">
            <!--==================== TOP BAR ====================-->

            <div class="mg-head-detail hidden-xs">
    <div class="container-fluid">
        <div class="row">
                        <div class="col-md-6 col-xs-12">
                <ul class="info-left">
                            <li>Fri. Nov 10th, 2023             
        </li>
                    </ul>

                           </div>


                    </div>
    </div>
</div>
            <div class="clearfix"></div>
                        <div class="mg-nav-widget-area-back" style='background-image: url("https://linuximpact.com/wp-content/uploads/2023/04/cropped-header_image_black.jpg" );'>
                        <div class="overlay">
              <div class="inner"  style="background-color:rgba(32,47,91,0.4);" > 
                <div class="container-fluid">
                    <div class="mg-nav-widget-area">
                        <div class="row align-items-center">
                                                          <div class="col-12 text-center mx-auto ">
                                                              <div class="navbar-header">
                                                                <div class="site-branding-text">
                                <h1 class="site-title"> <a href="https://linuximpact.com/" rel="home">Linux Impact</a></h1>
                                <p class="site-description"></p>
                                </div>
                                                              </div>
                            </div>
                           
                        </div>
                    </div>
                </div>
              </div>
              </div>
          </div>
    <div class="mg-menu-full">
      <nav class="navbar navbar-expand-lg navbar-wp">
        <div class="container-fluid flex-row">
          
                <!-- Right nav -->
                    <div class="m-header pl-3 ml-auto my-2 my-lg-0 position-relative align-items-center">
                                                <a class="mobilehomebtn" href="https://linuximpact.com"><span class="fas fa-home"></span></a>
                        
                        <div class="dropdown ml-auto show mg-search-box pr-3">
                            <a class="dropdown-toggle msearch ml-auto" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               <i class="fas fa-search"></i>
                            </a>

                            <div class="dropdown-menu searchinner" aria-labelledby="dropdownMenuLink">
                        <form role="search" method="get" id="searchform" action="https://linuximpact.com/">
  <div class="input-group">
    <input type="search" class="form-control" placeholder="Search" value="" name="s" />
    <span class="input-group-btn btn-default">
    <button type="submit" class="btn"> <i class="fas fa-search"></i> </button>
    </span> </div>
</form>                      </div>
                        </div>
                        <!-- navbar-toggle -->
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-wp" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                          <i class="fas fa-bars"></i>
                        </button>
                        <!-- /navbar-toggle -->
                    </div>
                    <!-- /Right nav --> 
          
                  <div class="collapse navbar-collapse" id="navbar-wp">
                    <div class="d-md-block">
                  <ul id="menu-menu_top" class="nav navbar-nav mr-auto"><li class="active home"><a class="homebtn" href="https://linuximpact.com"><span class='fas fa-home'></span></a></li><li id="menu-item-186" class="menu-item menu-item-type-taxonomy menu-item-object-category current-post-ancestor current-menu-parent current-post-parent menu-item-186"><a class="nav-link" title="Linux" href="https://linuximpact.com/category/linux/">Linux</a></li>
<li id="menu-item-188" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-188"><a class="nav-link" title="Self-hosted" href="https://linuximpact.com/category/self-hosted/">Self-hosted</a></li>
<li id="menu-item-189" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-189"><a class="nav-link" title="Software" href="https://linuximpact.com/category/software/">Software</a></li>
<li id="menu-item-191" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-191"><a class="nav-link" title="Security" href="https://linuximpact.com/category/security/">Security</a></li>
<li id="menu-item-192" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-192"><a class="nav-link" title="Internet" href="https://linuximpact.com/category/internet/">Internet</a></li>
<li id="menu-item-193" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-193"><a class="nav-link" title="Tips" href="https://linuximpact.com/category/tips/">Tips</a></li>
<li id="menu-item-313" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-313"><a class="nav-link" title="Distros" href="https://linuximpact.com/category/distros/">Distros</a></li>
<li id="menu-item-314" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-314"><a class="nav-link" title="DIY" href="https://linuximpact.com/category/diy/">DIY</a></li>
<li id="menu-item-315" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-315"><a class="nav-link" title="Raspberry Pi" href="https://linuximpact.com/category/raspberry-pi/">Raspberry Pi</a></li>
<li id="menu-item-340" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-340"><a class="nav-link" title="About" href="https://linuximpact.com/about/">About</a></li>
<li id="menu-item-371" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-371"><a class="nav-link" title="Subscribe via RSS" href="https://linuximpact.com/rss">Subscribe via RSS</a></li>
</ul>                </div>    
                  </div>

                <!-- Right nav -->
                    <div class="d-none d-lg-block pl-3 ml-auto my-2 my-lg-0 position-relative align-items-center">
                        <div class="dropdown show mg-search-box pr-2">
                            <a class="dropdown-toggle msearch ml-auto" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                               <i class="fas fa-search"></i>
                            </a>

                            <div class="dropdown-menu searchinner" aria-labelledby="dropdownMenuLink">
                        <form role="search" method="get" id="searchform" action="https://linuximpact.com/">
  <div class="input-group">
    <input type="search" class="form-control" placeholder="Search" value="" name="s" />
    <span class="input-group-btn btn-default">
    <button type="submit" class="btn"> <i class="fas fa-search"></i> </button>
    </span> </div>
</form>                      </div>
                        </div>
                        
                    </div>
                    <!-- /Right nav -->  
          </div>
      </nav> <!-- /Navigation -->
    </div>
				
<!-- Matomo -->
<script>
  var _paq = window._paq = window._paq || [];
  /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u="//stats.reallyuse.com/";
    _paq.push(['setTrackerUrl', u+'matomo.php']);
    _paq.push(['setSiteId', '1']);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
    g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
  })();
</script>
<!-- End Matomo Code -->

				
</header>
<div class="clearfix"></div>
 <!-- =========================
     Page Content Section      
============================== -->
<main id="content">
    <!--container-->
    <div class="container-fluid">
      <!--row-->
      <div class="row">
        <!--col-md-->
                                                <div class="col-md-9">
                    		                  <div class="mg-blog-post-box"> 
              <div class="mg-header">
                                <div class="mg-blog-category"> 
                      <a class="newsup-categories category-color-1" href="https://linuximpact.com/category/cli/" alt="View all posts in CLI"> 
                                 CLI
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/gaming/" alt="View all posts in Gaming"> 
                                 Gaming
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/linux/" alt="View all posts in Linux"> 
                                 Linux
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/terminal/" alt="View all posts in Terminal"> 
                                 Terminal
                             </a>                </div>
                                <h1 class="title single"> <a title="Permalink to: Play the first ever text adventure game in your Linux terminal!">
                  Play the first ever text adventure game in your Linux terminal!</a>
                </h1>
                                <div class="media mg-info-author-block"> 
                                    <a class="mg-author-pic" href="https://linuximpact.com/author/david/">  </a>
                                    <div class="media-body">
                                        <h4 class="media-heading"><span>By</span><a href="https://linuximpact.com/author/david/">David Rutland</a></h4>
                                        <span class="mg-blog-date"><i class="fas fa-clock"></i> 
                      Nov 9, 2023</span>
                                      </div>
                </div>
                            </div>
              <img width="1680" height="840" src="https://linuximpact.com/wp-content/uploads/2023/11/colossal-ibm.jpg" class="img-fluid wp-post-image" alt="colossal cave adventure on cool retro term with an emulated black and white IBM screen" decoding="async" fetchpriority="high" srcset="https://linuximpact.com/wp-content/uploads/2023/11/colossal-ibm.jpg 1680w, https://linuximpact.com/wp-content/uploads/2023/11/colossal-ibm-300x150.jpg 300w, https://linuximpact.com/wp-content/uploads/2023/11/colossal-ibm-1024x512.jpg 1024w, https://linuximpact.com/wp-content/uploads/2023/11/colossal-ibm-768x384.jpg 768w, https://linuximpact.com/wp-content/uploads/2023/11/colossal-ibm-1536x768.jpg 1536w" sizes="(max-width: 1680px) 100vw, 1680px" />              <article class="page-content-single small single">
                
<p>Back in the day, computers were serious machines for serious people doing serious things, and almost always reserved for the military, for banking, and for communications.</p>



<p>They were huge, room-sized behemoths with capabilities that paled into insignificance next to even <a href="https://linuximpact.com/cheap-portable-retro-gaming-with-a-hated-handheld/" data-type="post" data-id="355">children&#8217;s electronic toys from more than a decade ago</a>.</p>



<p>ARPANET (Advanced Research Projects Agency Network) was a project as serious as its name suggests and was the world&#8217;s first distributed packet-switched network. It was designed to continue functioning even if parts of it were destroyed in a nuclear war, and would guarantee continued communication if the worst should happen.</p>



<figure class="wp-block-image size-large"><img decoding="async" width="1024" height="512" src="https://linuximpact.com/wp-content/uploads/2023/11/pdp-10-1-1024x512.jpg" alt="a wall-sized computer with blinking lights and huge tape reels" class="wp-image-387" srcset="https://linuximpact.com/wp-content/uploads/2023/11/pdp-10-1-1024x512.jpg 1024w, https://linuximpact.com/wp-content/uploads/2023/11/pdp-10-1-300x150.jpg 300w, https://linuximpact.com/wp-content/uploads/2023/11/pdp-10-1-768x384.jpg 768w, https://linuximpact.com/wp-content/uploads/2023/11/pdp-10-1-1536x768.jpg 1536w, https://linuximpact.com/wp-content/uploads/2023/11/pdp-10-1.jpg 1680w" sizes="(max-width: 1024px) 100vw, 1024px" /></figure>



<p>The project employed some of the brightest and most brilliant minds of the mid 20th century, and bright, brilliant people tend to get bored easily.</p>



<p>While modern workers might surreptitiously open minesweeper or solitaire, computer games weren&#8217;t really a thing in 1976. Sure, electronic<em> Tic Tac Toe</em> had been around since 1950, and <em>Spacewar!</em> arrived on the scene in 1962, but there was nothing really truly immersive.</p>



<p>And so, Will Crowther &#8211; a keen Dungeons and Dragons fan and avid cave explorer, as well as having a career as a serious developer for ARPANET&#8217;s very serious PDP-10 mainframe computer, designed and created Colossal Cave Adventure using FORTRAN IV.</p>



<p>As the title suggests, the game takes place in a colossal cave (in reality, based on Kentucky&#8217;s Mammoth cave ), filled with gold, treasure and enemies. The goal is simple: Find the treasures, defeat the enemies, and escape.</p>



<p>Crowther&#8217;s base game was expanded on in 1977 by Stanford University hacker and programmer, Don Woods, who expanded the scenario and gameplay to include magical elements, dwarves, and further fantastical features.</p>



<p>Originally designed to be played on teletype printers, Colossal Cave Adventure describes the scene to you, and responds to typed commands.</p>



<p>Colossal Cave Adventure is rightfully regarded as one of the most influential games of all time, and spawned entire genres of derivative gaming experiences, as well as direct descendants including the classic Zork and Rogue.</p>



<h2 class="wp-block-heading" id="h-colossal-cave-adventure-in-the-modern-world">Colossal Cave Adventure in the modern world</h2>



<figure class="wp-block-image size-large"><img loading="lazy" decoding="async" width="1024" height="512" src="https://linuximpact.com/wp-content/uploads/2023/11/colossal-cave-bear-1024x512.jpg" alt="A large 3d bear with a collar and chain" class="wp-image-388" srcset="https://linuximpact.com/wp-content/uploads/2023/11/colossal-cave-bear-1024x512.jpg 1024w, https://linuximpact.com/wp-content/uploads/2023/11/colossal-cave-bear-300x150.jpg 300w, https://linuximpact.com/wp-content/uploads/2023/11/colossal-cave-bear-768x384.jpg 768w, https://linuximpact.com/wp-content/uploads/2023/11/colossal-cave-bear-1536x768.jpg 1536w, https://linuximpact.com/wp-content/uploads/2023/11/colossal-cave-bear.jpg 1680w" sizes="(max-width: 1024px) 100vw, 1024px" /></figure>



<p>The game was an instant hit, and was released and re-released for a variety of platforms that didn&#8217;t require building-sized infrastructure, Microsoft Adventure was published for Apple computers in 1979, with a version for IBM PCs following in 1981.</p>



<p>In 2017, a mere 41 years after Colossal Cave Adventure&#8217;s initial release, the game was made open source and uploaded to <a href="https://gitlab.com/esr/open-adventure">GitLab</a>, spawning a number of remakes and reimaginings. In January 2023, a fully realised <a href="https://www.colossalcave3d.com/" data-type="link" data-id="https://www.colossalcave3d.com/">3D version was announced by Cygnus Entertainment</a>.</p>



<p>At Linux Impact, we&#8217;re old school, and spend more time than is good for our eyesight and health staring into terminals.</p>



<p>And lacking a teletype machine, the Linux terminal seems as good a place as any to reconnect with the roots of gaming.</p>



<h2 class="wp-block-heading" id="h-install-colossal-cave-adventure-on-linux">Install Colossal Cave Adventure on Linux</h2>



<p>Ready to commit entire months of your life to exploring an imaginary cave system in your terminal?</p>



<p>We&#8217;ve explored many iterations and versions of Colossal Cave Adventure (so that you don&#8217;t have to), and determined Troglobit&#8217;s <em>Adventure</em> to be the most reliably usable of the open source releases.</p>



<p>Open a terminal, then download and extract the latest archive:</p>



<pre class="wp-block-code"><code>wget https://github.com/troglobit/adventure/releases/download/v4.2/advent-4.2.tar.gz
tar xvf advent-4.2.tar.gz</code></pre>



<p>This will create a new directory within your home directory. Move into it:</p>



<pre class="wp-block-code"><code>cd advent-4.2</code></pre>



<p>You&#8217;ll be building the game from source, make sure you have <em>make</em>and a compiler such as gcc installed.</p>



<p>Build <em>Adventure</em> with:</p>



<pre class="wp-block-code"><code>./configure
make</code></pre>



<p>The game will install to<strong> /usr/local/bin</strong>, and the documents will end up in<strong> /usr/local/share</strong>.</p>



<p>You can invoke the game&#8217;s manual from the command line with:</p>



<pre class="wp-block-code"><code>man adventure</code></pre>



<p>&#8230;but as the six line document states, &#8220;part of the game is to discover its rules&#8221;, so there&#8217;s little help there.</p>



<p>Start the game by entering:</p>



<pre class="wp-block-code"><code>adventure</code></pre>



<p>into any terminal window.</p>



<p>You can quit by typing:</p>



<pre class="wp-block-code"><code>quit</code></pre>



<p>Or if you want to save your progress for later, type:</p>



<pre class="wp-block-code"><code>suspend</code></pre>



<h2 class="wp-block-heading" id="h-playing-colossal-cave-adventure-in-the-21st-century">Playing Colossal Cave Adventure in the 21st century</h2>



<figure class="wp-block-image size-large"><img loading="lazy" decoding="async" width="1024" height="512" src="https://linuximpact.com/wp-content/uploads/2023/11/collosal-cave-retro-1-1024x512.jpg" alt="collosal cave adventure played using cool-retro-term on a 1980s style amber terminal" class="wp-image-390" srcset="https://linuximpact.com/wp-content/uploads/2023/11/collosal-cave-retro-1-1024x512.jpg 1024w, https://linuximpact.com/wp-content/uploads/2023/11/collosal-cave-retro-1-300x150.jpg 300w, https://linuximpact.com/wp-content/uploads/2023/11/collosal-cave-retro-1-768x384.jpg 768w, https://linuximpact.com/wp-content/uploads/2023/11/collosal-cave-retro-1-1536x768.jpg 1536w, https://linuximpact.com/wp-content/uploads/2023/11/collosal-cave-retro-1.jpg 1680w" sizes="(max-width: 1024px) 100vw, 1024px" /></figure>



<p>OK. Let&#8217;s start by saying that this is simultaneously one of the most enjoyable and frustrating gaming experiences we&#8217;ve had in a while. Cyberpunk 2077 it ain&#8217;t.</p>



<p>From the start, your options are limited, and you don&#8217;t know what they are. You issue commands by typing a maximum of two words.</p>



<p><strong>Look</strong> is the first command we figured out, and it gave us a written description of our environment. <strong>Take</strong>, <strong>Enter</strong>, and <strong>Eat</strong>, all have consequences, even if they&#8217;re as trivial as seeing a &#8220;your feet are now wet&#8221; message after entering a stream.</p>



<p>We&#8217;ve spent several hours exploring the colossal cave so far, and don&#8217;t think we&#8217;re even close to figuring out all the commands.</p>



<p>Yes, there are cheat sheets and maps available online, and we imagine there are walkthroughs available, too. But figuring things out as you go is a thrill all of its own, and a far cry from the tutorials and training levels of more modern games.</p>



<p>Later text adventures came with rudimentary graphics to illustrate your surroundings (this author&#8217;s first video game experience was with the 1986 text graphical hybrid Escape From Khoshima), but the complete absence of any kind of visual clue or explicit instructions is part of the charm. It forces you to visualise your surroundings, draw maps with pen and paper, and keep extensive notes. It&#8217;s a blast from the past, and somewhat similar to your computer acting as DM in a single player D&amp;D session.</p>



<p>All in all, we&#8217;re having a blast (from the past).</p>



<h2 class="wp-block-heading" id="h-enhance-your-colossal-cave-experience-with-a-retro-terminal">Enhance your Colossal Cave experience with a retro terminal</h2>



<p>We don&#8217;t have the equipment or budget to play Colossal Cave Adventure as it was originally meant to be played, but the right terminal emulator can at least give you the 1981 experience.</p>



<p><a href="https://linuximpact.com/relive-the-glory-days-of-crt-monitors-with-cool-retro-term/" data-type="post" data-id="381">cool-retro-term gives your terminal the look and feel of a console run on a CRT</a> from days gone by. You might be playing on an LCD or OLED screen, but with cool-retro-term, you get scan lines, fuzz, glitches, screen burn, and more.</p>



<p>Presets include Apple, IBM 3278, Monochrome Green, and IBM DOS.</p>



<p>We don&#8217;t have a time machine, but using cool-retro-term to play Colossal Cave Adventure is the next best thing.</p>
                                                <div class="clearfix mb-3"></div>
                
	<nav class="navigation post-navigation" aria-label="Posts">
		<h2 class="screen-reader-text">Post navigation</h2>
		<div class="nav-links"><div class="nav-previous"><a href="https://linuximpact.com/relive-the-glory-days-of-crt-monitors-with-cool-retro-term/" rel="prev">Relive the glory days of CRT monitors with cool-retro-term <div class="fa fa-angle-double-right"></div><span></span></a></div></div>
	</nav>                          </article>
            </div>
		                 <div class="media mg-info-author-block">
            <a class="mg-author-pic" href="https://linuximpact.com/author/david/"></a>
                <div class="media-body">
                  <h4 class="media-heading">By <a href ="https://linuximpact.com/author/david/">David Rutland</a></h4>
                  <p></p>
                </div>
            </div>
                          <div class="mg-featured-slider p-3 mb-4">
                        <!--Start mg-realated-slider -->
                        <div class="mg-sec-title">
                            <!-- mg-sec-title -->
                                                        <h4>Related Post</h4>
                        </div>
                        <!-- // mg-sec-title -->
                           <div class="row">
                                <!-- featured_post -->
                                                                      <!-- blog -->
                                  <div class="col-md-4">
                                    <div class="mg-blog-post-3 minh back-img mb-md-0 mb-2" 
                                                                        style="background-image: url('https://linuximpact.com/wp-content/uploads/2023/11/bill-bailey-ibm-dos-cool-retro-term.jpg');" >
                                      <div class="mg-blog-inner">
                                                                                      <div class="mg-blog-category"> <a class="newsup-categories category-color-1" href="https://linuximpact.com/category/cli/" alt="View all posts in CLI"> 
                                 CLI
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/software/" alt="View all posts in Software"> 
                                 Software
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/terminal/" alt="View all posts in Terminal"> 
                                 Terminal
                             </a>                                          </div>                                             <h4 class="title"> <a href="https://linuximpact.com/relive-the-glory-days-of-crt-monitors-with-cool-retro-term/" title="Permalink to: Relive the glory days of CRT monitors with cool-retro-term">
                                              Relive the glory days of CRT monitors with cool-retro-term</a>
                                             </h4>
                                            <div class="mg-blog-meta"> 
                                                                                          <span class="mg-blog-date"><i class="fas fa-clock"></i> 
                                              
                                              Nov 9, 2023
                                               </span>
                                                                                        <a href="https://linuximpact.com/author/david/"> <i class="fas fa-user-circle"></i> David Rutland</a>
                                              </div>   
                                        </div>
                                    </div>
                                  </div>
                                    <!-- blog -->
                                                                        <!-- blog -->
                                  <div class="col-md-4">
                                    <div class="mg-blog-post-3 minh back-img mb-md-0 mb-2" 
                                                                        style="background-image: url('https://linuximpact.com/wp-content/uploads/2023/11/docked.jpg');" >
                                      <div class="mg-blog-inner">
                                                                                      <div class="mg-blog-category"> <a class="newsup-categories category-color-1" href="https://linuximpact.com/category/cli/" alt="View all posts in CLI"> 
                                 CLI
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/software/" alt="View all posts in Software"> 
                                 Software
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/terminal/" alt="View all posts in Terminal"> 
                                 Terminal
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/tips/" alt="View all posts in Tips"> 
                                 Tips
                             </a>                                          </div>                                             <h4 class="title"> <a href="https://linuximpact.com/how-to-install-the-latest-version-of-docker-compose-on-linux-and-why-you-should/" title="Permalink to: How to install the latest version of Docker Compose on Linux (and why you should)">
                                              How to install the latest version of Docker Compose on Linux (and why you should)</a>
                                             </h4>
                                            <div class="mg-blog-meta"> 
                                                                                          <span class="mg-blog-date"><i class="fas fa-clock"></i> 
                                              
                                              Nov 8, 2023
                                               </span>
                                                                                        <a href="https://linuximpact.com/author/david/"> <i class="fas fa-user-circle"></i> David Rutland</a>
                                              </div>   
                                        </div>
                                    </div>
                                  </div>
                                    <!-- blog -->
                                                                        <!-- blog -->
                                  <div class="col-md-4">
                                    <div class="mg-blog-post-3 minh back-img mb-md-0 mb-2" 
                                                                        style="background-image: url('https://linuximpact.com/wp-content/uploads/2023/11/mk-on-leapster-gs.jpg');" >
                                      <div class="mg-blog-inner">
                                                                                      <div class="mg-blog-category"> <a class="newsup-categories category-color-1" href="https://linuximpact.com/category/diy/" alt="View all posts in DIY"> 
                                 DIY
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/gaming/" alt="View all posts in Gaming"> 
                                 Gaming
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/hardware/" alt="View all posts in Hardware"> 
                                 Hardware
                             </a><a class="newsup-categories category-color-1" href="https://linuximpact.com/category/linux/" alt="View all posts in Linux"> 
                                 Linux
                             </a>                                          </div>                                             <h4 class="title"> <a href="https://linuximpact.com/cheap-portable-retro-gaming-with-a-hated-handheld/" title="Permalink to: Cheap portable retro-gaming with a hated handheld">
                                              Cheap portable retro-gaming with a hated handheld</a>
                                             </h4>
                                            <div class="mg-blog-meta"> 
                                                                                          <span class="mg-blog-date"><i class="fas fa-clock"></i> 
                                              
                                              Nov 7, 2023
                                               </span>
                                                                                        <a href="https://linuximpact.com/author/david/"> <i class="fas fa-user-circle"></i> David Rutland</a>
                                              </div>   
                                        </div>
                                    </div>
                                  </div>
                                    <!-- blog -->
                                                                </div>
                            
                    </div>
                    <!--End mg-realated-slider -->
                        </div>
             <!--sidebar-->
          <!--col-md-3-->
            <aside class="col-md-3">
                  
<aside id="secondary" class="widget-area" role="complementary">
	<div id="sidebar-right" class="mg-sidebar">
		<div id="block-2" class="mg-widget widget_block widget_search"><form role="search" method="get" action="https://linuximpact.com/" class="wp-block-search__button-outside wp-block-search__text-button wp-block-search"    ><label class="wp-block-search__label" for="wp-block-search__input-1" >Search</label><div class="wp-block-search__inside-wrapper " ><input class="wp-block-search__input" id="wp-block-search__input-1" placeholder="" value="" type="search" name="s" required /><button aria-label="Search" class="wp-block-search__button wp-element-button" type="submit" >Search</button></div></form></div><div id="block-3" class="mg-widget widget_block"><div class="wp-block-group is-layout-flow wp-block-group-is-layout-flow"><div class="wp-block-group__inner-container"><h2 class="wp-block-heading">Recent Posts</h2><ul class="wp-block-latest-posts__list wp-block-latest-posts"><li><a class="wp-block-latest-posts__post-title" href="https://linuximpact.com/play-the-first-ever-text-adventure-game-in-your-linux-terminal/">Play the first ever text adventure game in your Linux terminal!</a></li>
<li><a class="wp-block-latest-posts__post-title" href="https://linuximpact.com/relive-the-glory-days-of-crt-monitors-with-cool-retro-term/">Relive the glory days of CRT monitors with cool-retro-term</a></li>
<li><a class="wp-block-latest-posts__post-title" href="https://linuximpact.com/how-to-install-the-latest-version-of-docker-compose-on-linux-and-why-you-should/">How to install the latest version of Docker Compose on Linux (and why you should)</a></li>
<li><a class="wp-block-latest-posts__post-title" href="https://linuximpact.com/cheap-portable-retro-gaming-with-a-hated-handheld/">Cheap portable retro-gaming with a hated handheld</a></li>
<li><a class="wp-block-latest-posts__post-title" href="https://linuximpact.com/discover-your-most-used-linux-commands-with-muc/">Discover your most used Linux commands with MUC</a></li>
</ul></div></div></div><div id="block-4" class="mg-widget widget_block"><div class="wp-block-group is-layout-flow wp-block-group-is-layout-flow"><div class="wp-block-group__inner-container"><h2 class="wp-block-heading">Recent Comments</h2><div class="no-comments wp-block-latest-comments">No comments to show.</div></div></div></div>	</div>
</aside><!-- #secondary -->
            </aside>
          <!--/col-md-3-->
      <!--/sidebar-->
          </div>
  </div>
</main>
<!--==================== FOOTER AREA ====================-->
        <footer> 
            <div class="overlay" style="background-color: ;">
                <!--Start mg-footer-widget-area-->
                                 <!--End mg-footer-widget-area-->
                <!--Start mg-footer-widget-area-->
                <div class="mg-footer-bottom-area">
                    <div class="container-fluid">
                        <div class="divide-line"></div>
                        <div class="row align-items-center">
                            <!--col-md-4-->
                            <div class="col-md-6">
                                                             <div class="site-branding-text">
                              <h1 class="site-title"> <a href="https://linuximpact.com/" rel="home">Linux Impact</a></h1>
                              <p class="site-description"></p>
                              </div>
                                                          </div>

                             
                            <div class="col-md-6 text-right text-xs">
                                
                            <ul class="mg-social">
                                                                        <a target="_blank" href="">
                                                                        <a target="_blank"  href="">
                                                                         
                                                                 </ul>


                            </div>
                            <!--/col-md-4-->  
                             
                        </div>
                        <!--/row-->
                    </div>
                    <!--/container-->
                </div>
                <!--End mg-footer-widget-area-->

                <div class="mg-footer-copyright">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6 text-xs">
                                <p>
                                <a href="https://en-gb.wordpress.org/">
								Proudly powered by WordPress								</a>
								<span class="sep"> | </span>
								Theme: News Talk by <a href="https://themeansar.com/" rel="designer">Themeansar</a>.								</p>
                            </div>



                            <div class="col-md-6 text-right text-xs">
                                <ul class="info-right"><li class="nav-item menu-item "><a class="nav-link " href="https://linuximpact.com/" title="Home">Home</a></li><li class="nav-item menu-item page_item dropdown page-item-338"><a class="nav-link" href="https://linuximpact.com/about/">About</a></li></ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/overlay-->
        </footer>
        <!--/footer-->
    </div>
    <!--/wrapper-->
    <!--Scroll To Top-->
    <a href="#" class="ta_upscr bounceInup animated"><i class="fa fa-angle-up"></i></a>
    <!--/Scroll To Top-->
<!-- /Scroll To Top -->
<script>
jQuery('a,input').bind('focus', function() {
    if(!jQuery(this).closest(".menu-item").length && ( jQuery(window).width() <= 992) ) {
    jQuery('.navbar-collapse').removeClass('show');
}})
</script>
<script defer src="https://linuximpact.com/wp-content/plugins/koko-analytics/assets/dist/js/script.js?ver=1.3.3" id="koko-analytics-js"></script>
<script src="https://linuximpact.com/wp-content/themes/newsup/js/custom.js?ver=6.4.1" id="newsup-custom-js"></script>
	<script>
	/(trident|msie)/i.test(navigator.userAgent)&&document.getElementById&&window.addEventListener&&window.addEventListener("hashchange",function(){var t,e=location.hash.substring(1);/^[A-z0-9_-]+$/.test(e)&&(t=document.getElementById(e))&&(/^(?:a|select|input|button|textarea)$/i.test(t.tagName)||(t.tabIndex=-1),t.focus())},!1);
	</script>
	</body>
</html>