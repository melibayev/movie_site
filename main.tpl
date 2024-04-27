<!DOCTYPE html>
<html lang="ru">
    <head>
        {headers}
        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=0" />
        <meta name="msapplication-TileColor" content="#315efb" />
        <meta name="msapplication-TileImage" content="{THEME}/images/favicon.png" />
        <meta name="theme-color" content="#315efb" />
        <link rel="shortcut icon" href="{THEME}/images/favicon.png" />
        <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.0.0/css/all.css">
        <link href="{THEME}/css/swiper.min.css" type="text/css" rel="stylesheet" />
        <link href="{THEME}/css/lapse.css" type="text/css" rel="stylesheet" />
        <link href="{THEME}/css/engine.css" type="text/css" rel="stylesheet" />
        <link href="{THEME}/css/styles.css" type="text/css" rel="stylesheet" />
        </head>
    <body>
        {AJAX}
        <div class="wrapper">
            {include file="main-header.tpl"} 
            [available=main]{include file="main-page.tpl"}[/available]
            [available=showfull]<div class="container">{info}{content}</div>[/available] 
            [not-available=main|static|cat|lastnews|xfsearch|favorites|tags|newposts|showfull]<div class="content"><div class="container">{info}{content}</div></div>[/not-available]
            [available=cat|lastnews|xfsearch|favorites|tags|newposts]
            <div class="content"><div class="container">
            	[aviable=cat]<h1>{category-title}</h1><p>{category-description}</p>[/aviable]
                [aviable=favorites]<h1>Закладки</h1>[/aviable]
            	[aviable=lastnews]<h1>Новое на сайте</h1>[/aviable]
            	[aviable=xfsearch]<h1>{page-title}</h1><p>{page-description}</p>[/aviable]
                <div class="e-grid7">{info}{content}</div>
                </div>
            </div>
            [/available]
            {include file="main-footer.tpl"} 
        </div>

        <script src="{THEME}/js/swiper.min.js"></script>
        <script src="{THEME}/js/libs.js"></script>
        <script src="{THEME}/js/vsearch.js"></script>
    </body>
</html>
        