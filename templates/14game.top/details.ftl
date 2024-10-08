<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <link rel="stylesheet" type="text/css"
          href="https://fonts.googleapis.com/css?keyAIzaSyBXqXcdvinZsgURKUWnSn7f0dQzCytS0YM&amp;family=Lato:400,700,900,400italic">
    <title>${advert.title}</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/tools.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/bulma.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/consent.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/common.css">
    <script src="/domain/${advert.domain}/js/jquery-3.7.1.min.js"></script>
    <script src="/domain/${advert.domain}/js/jquery.validate.js"></script>
    ${advert.gaCode}
</head>

<body>
<nav class="navbar is-info" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="/">
            <img src="/domain/${advert.domain}/logo.png" alt="" style="max-height: 3.75rem;">
        </a>
        <a role="button" class="navbar-burger is-active" aria-label="menu" aria-expanded="false"
           data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>
</nav>
<script>
    $(document).ready(function () {

        $(".navbar-burger").click(function () {


            $(".navbar-burger").toggleClass("is-active");
            $(".navbar-menu").toggleClass("is-active");

        });
    });
</script>
<section class="section">
    <div class="columns">
        <div class="column">
            <div class="card">
                <div class="card-content" id="game-window-box">

                    <center>
                        <div style="">
                            <img src="${game.gamePreview}"><br>
                            <a href="${game.gameUri}" target="_blank" class="button is-large is-danger">Play Now</a>
                        </div>
                    </center>
                    <div class="content">
                        <span class="tag is-info is-light is-medium"><a
                                    href="/type/${game.gameCategory}">${game.gameCategory}</a></span>
                    </div>
                </div>
            </div>
            <br>
            <div class="card">

            </div>
            <br>
            <div class="card">
                <div class="card-content">
                    <p class="title is-4">Description</p>
                    <div class="content" style="max-height: 200px; overflow: auto;">
                        <p>
                            ${game.gameDesc}
                        </p>
                    </div>
                </div>
            </div>
            <br>
            <div class="card">
                <div class="card-content">
                    <p class="title is-4">Related games</p>
                    <p>Check out these titles too</p>
                    <div class="container" id="related_games" style="margin:0 !important">
                        <#list alikeGame as game>
                            <div class="columns">
                                <div class="column is-5"><a href="/details/${game.id}"><img
                                                style="margin-top:0.3em;width: 100%;aspect-ratio: 2/1;object-fit: cover;"
                                                src="${game.gamePreview}"></a></div>
                                <div class="column is-7"><a class="is-size-4" style="margin-top:-1.5em !important;"
                                                            href="/details/${game.id}">${game.gameName}</a><br><br>
                                    <p class="is-size-6"><span class="tag is-link is-medium">${game.gameHot} ❤</span>
                                    </p>
                                </div>
                            </div>
                        </#list>

                    </div>
                </div>
            </div>
            <br>
        </div>

    </div>
</section>
<br>
<hr>
<div class="footer__nav" style="margin-top: 20px; font-size: 20px; font-weight: bolder">
    <ul style="display: flex;gap: 20px;flex-wrap: wrap; justify-content: center;
    padding-top: 20px;
     padding-left: 20px;padding-right: 20px;padding-bottom: 20px;">
        <p>
        <li >
            Email: ${advert.contactMail}   <br>
            Copyright © 2024 ${adver.domain}. All Rights Reserved.
        </li>
        </p>
        <p>
        <li><a href="/about_us">About Us</a></li>
        <li><a href="/privacy_policy">Privacy Policy</a></li>
        <br>
        <li><a href="/term_of_use">Terms of Use</a></li>
        <li><a href="/contact_us">Contact Us</a></li>
        </p>
    </ul>
</div>
<style>
    ul {
        margin-left: 1em !important;
        margin-top: 0em !important;
        margin-bottom: 0em !important;
    }
</style>

</body>
<div id="immersive-translate-popup" style="all: initial"></div>
</html>