<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/domain/${advert.domain}/css/main.css" rel="stylesheet">
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
    ${advert.gaCode}
</head>
<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">
            <img src="/domain/${advert.domain}/logo.png" class="h-100" alt="${advert.serviceName}"/>
        </a>
        <button class="navbar-toggler" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Games</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about_us">About Us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            Category
                        </a>
                        <ul class="dropdown-menu ">
                            <#list game_types as type>
                                <li><a class="dropdown-item" href="/type/${type}">${type}</a></li>
                            </#list>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact_us">Contact</a>
                    </li>
                </ul>
                <form class="d-flex" action="/search">
                    <input name="s" value="" type="search" class="form-control" id="search"
                           placeholder="Search Podcast" aria-label="Search">
                </form>
            </div>
        </div>
    </div>
</nav>


<section class="col-12 col-lg-10 mx-auto" style="margin-top: 5rem">
    <div class="w-100">
        <h2 style="font-weight: bolder; font-size: 40px;">New <span style="color: red">Games</span></h2>
        <hr>
    </div>
    <div class="row w-95 mx-auto mt-5 shadow rounded-4">
        <#list all_game as game>
        <#if game_index < 13  >
        <#if game_index % 3 == 0>
        <div class="col-12 col-lg-4 col-md-4 my-2 fiex-card-box">
            </#if>
            <#if game_index % 3 != 0>
            <div class="col-6 col-lg-2 col-md-2 my-2 ">
                </#if>
                <a href="/details/${game.id}">
                    <div class="card border-warning shadow h-100">
                        <div class="card-img-box h-100">
                            <img src="${game.gamePreview}" class="rounded-4">
                        </div>
                        <#if game_index % 3 != 0>
                            <div class="card-body">
                                <h5 class="card-title overflow_txt" style="height: 2rem">${game.gameName}</h5>
                            </div>
                        </#if>
                    </div>
                </a>
            </div>
            </#if>
            </#list>
        </div>
</section>

<section class="col-12 col-lg-10 mx-auto group-list-box ">
    <div class="row w-85 mx-auto shadow rounded-4">
        <#list all_game as game>
            <#if  13 < game_index  && game_index < 24>
                <div class="group-list-box-box col-10 col-lg-4 mx-auto my-3  shadow rounded-4">
                    <a href="details/${game.id}" class="random-box-1">
                        <div class="row group-list-box-img">
                            <div class="col-6 mt-3">
                                <p class="overflow_txt fs-4 text-success">${game.gameName}</p>
                                <a href="/type/${game.gameCategory}" class="text-danger fs-6">${game.gameCategory}</a>
                            </div>
                            <a href="/detail/${game.id}" class="group-play-btn rounded-3">Play</a>
                            <div class="group-list-img col-6 h-100">
                                <img src="${game.gamePreview}" class="mx-3 rounded-4 border border-warning"/>
                            </div>
                        </div>
                    </a>
                </div>
            </#if>
        </#list>
    </div>
</section>

<section class="col-12 col-lg-10 mx-auto cencent-box" style="margin-top: 5rem">
    <div class="row w-85 mx-auto mt-5">
        <#list all_game as game>
            <#if 24 < game_index && game_index < 28>
                <div class="col-12 col-md-3 col-lg-4 centent-img-box mx-auto my-3">
                    <a href="/details/${game.id}">
                        <img src="${game.gamePreview}" class="rounded-4 border border-warning">
                        <div class="centent-game-name col-4">
                            ${game.gameName}
                        </div>
                    </a>
                </div>
            </#if>
        </#list>
    </div>
</section>

<section class="col-12 col-lg-10 mx-auto" style="margin-top: 5rem">
    <div class="w-100">
        <h2 style="font-weight: bolder; font-size: 40px;">Other <span class="text">Games</span></h2>
        <hr>
    </div>
    <div class="row w-95 mx-auto mt-5 shadow rounded-4">
        <#list all_game as game>
            <#if 24 < game_index >
                <div class="col-6 col-lg-2 col-md-2 my-2 ">
                    <a href="/details/${game.id}">
                        <div class="card border-warning shadow h-100">
                            <div class="card-img-box h-100">
                                <img src="${game.gamePreview}" class="rounded-4">
                            </div>
                            <div class="card-body">
                                <h5 class="card-title overflow_txt" style="height: 2rem">${game.gameName}</h5>
                            </div>
                        </div>
                    </a>
                </div>
            </#if>
        </#list>
    </div>
</section>

<footer class="footer col-11 mx-auto mt-5">
    <div class="box-container">
        <div class="footer-item">
            <a class="logo" href="">
                <img src="/domain/${advert.domain}/logo.png" alt="logo">
            </a>
            <p>${advert.content}</p>
        </div>
    </div>
    <div class="box-container">
        <div class="footer-item">
            <p><a href="/about_us">About Us</a></p>
            <p><a href="/privacy_policy">Privacy Policy</a></p>
            <p><a href="/term_of_use">Terms of Use</a></p>
            <p><a href="/contact_us">Contact Us</a></p>
        </div>
        <div class="footer-item">
            <h2>Contact Info</h2>
            <p><span>${advert.contactMail}</span></p>
        </div>
    </div>
    <div class="content">
        <p>Copyright © 2024 ${advert.serviceName}. All Rights Reserved</p>
    </div>
</footer>

<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.2.3/js/bootstrap.bundle.min.js"></script>
</body>