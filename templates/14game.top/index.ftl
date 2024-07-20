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
    <link rel="stylesheet" href="/${service_name}/css/tools.css">
    <link rel="stylesheet" href="/${service_name}/css/bulma.min.css">
    <link rel="stylesheet" href="/${service_name}/css/consent.css">
    <link rel="stylesheet" href="/${service_name}/css/common.css">
    <script src="/${service_name}/js/jquery-3.7.1.min.js"></script>
    <script src="/${service_name}/js/jquery.validate.js"></script>
</head>

<body>
<nav class="navbar is-info" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="/">
            <h1 class="is-size-4">${service_name}</h1>
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
    <form class="form" id="searchForm" action="/search" method="get" novalidate="novalidate"
          style="padding-bottom: 10px;">
        <div class="field">
            <div class="control">
                <input id="search_term" name="s" class="input is-large" type="text" value=""
                       placeholder="Eg: puzzle games">
            </div>
        </div>
    </form>
    <div class="buttons">
        <#list game_types as game_type>
            <a class="button is-info is-medium" href="/type/${game_type}">${game_type}</a>
        </#list>
    </div>
</section>

<section class="section">
    <div class="columns">
        <#list all_game as game>
            <div class="column is-4">
                <a href="/details/${game.id}">
                    <div class="card">
                        <div class="card-image">
                            <figure class="image">
                                <img src="${game.gamePreview}" style="aspect-ratio: 2/1;"
                                     alt="Idle Town Billionaire HTML5 Game">
                            </figure>
                        </div>
                        <div class="card-content">
                            <div class="content">
                                <p class="title is-4">${game.gameName}</p>
                                <span class="tag is-link is-medium">${game.gameHot} ❤</span>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </#list>
    </div>
</section>

<section class="section">
    <div class="columns">
        <h4>${advert.serviceName} Describing</h4>
        <p>
            ${advert.content}
        </p>
    </div>
</section>

<br>

<div class="footer__nav">
    <ul style="display: flex;gap: 20px;flex-wrap: wrap; justify-content: center; padding-left: 20px;padding-right: 20px;padding-bottom: 20px;">
        <p>
            <li>
            Email: ${advert.contactMail}   <br>
            Copyright © 2024 ${service_name}
            Company. All rights reserved.
            </li>
        </p>
        <p>
        <li><a href="/about_us">About Us</a></li>
        <li><a href="/privacy_policy">Privacy Policy</a></li>
        </p>
        <p>
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

</html>