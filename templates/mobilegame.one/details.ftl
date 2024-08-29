<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/template/12/css/style.min.css?ver=140">
    <link rel="stylesheet" href="/template/12/${advert.domain}/main.css">
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
    ${advert.gaCode}
    <style>
        .game-box {
            flex: 0 1 420px;
            order: 2;
            align-self: stretch;
        }

        @media (max-width: 765px) {
            .gamebar-right {
                flex: 1 1 auto;
            }

            .gamebar-right-games {
                max-width: 100%;
                float: none;
                margin: 0;
                margin-top: 12px;
            }

            .gamebar-right-games .as-related-game {
                float: left;
                width: 18%;
                margin-right: 2.5%;
            }

            .gamebar-right-games .as-related-game:nth-child(5) {
                margin-right: 0;
            }

            .gamebar-right .as-related-resize {
                height: auto;
            }

            .gamebar-left .as-related-resize {
                height: auto;
                max-height: 80px;
            }

            .gamebar-left {
                flex: 0;
            }

            .gamebar-left-games {
                float: left;
            }
        }

        @media (max-width: 621px) {
            .gamebar-left {
                flex: 1 1 auto;
                order: 2;
            }

            .gamebar-left-games {
                max-width: 100%;
                float: none;
                margin: 0;
                margin-top: 12px;
            }

            .gamebar-left-games .as-related-game {
                float: left;
                width: 18%;
                margin-right: 2.5%;
            }

            .gamebar-left-games .as-related-game:nth-child(5) {
                margin-right: 0;
            }

            .game-box {
                order: 1;
            }

            .as-related-resize {
                height: auto !important;
                max-height: none !important;
            }
        }
    </style>
</head>

<body>
<nav class="col-10 mx-auto navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">
            <img src="/template/12/${advert.domain}/logo.png" class="h-100" alt="${advert.serviceName}" width="60" height="60" />
        </a>
        <button class="navbar-toggler" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-end"  id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel" >
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Games</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body"  style="background: var(--bg-color) !important">
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
                        <ul class="dropdown-menu" style="background: var(--bg-color) !important">
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
<main role="main" class="as-wrapper">
    <div class="container-fluid pb-md-3">
        <div class="row topgamerow" itemscope="" itemtype="https://schema.org/Game">
            <div class="col-12 p-2 pb-3 pb-md-2 shadow-sm as-topbar mb-0 mb-md-2">
                <h1 class="h4 as-main-title d-inline-block" itemprop="name">${game.gameName}</h1>
            </div>
        </div>
        <div class="mx-auto text-center mt-3 mb-3 mb-sm-4"></div>
    </div>
    <div class="game-wrapper as-game-area">
        <div class="game-box game-deskbox game-responsive">
            <a href="${game.gameUri}" id="as-play-btn">
                <div
                        style="background: url('${game.gamePreview}') no-repeat top center; background: linear-gradient(0deg, rgba(0,0,0,0.75) 0%, rgba(116,116,116,0) 40%), url('${game.gamePreview}') no-repeat top center; background-size: cover, cover; width: 100%; height: 100%; border-radius: 8px; filter: blur(9px); position: absolute; opacity: 0.5;">
                </div>
                <div style="width:164px; z-index:2;"><img src="${game.gamePreview}" alt="donut box game" class="shadow"
                                                          width="140" height="140"
                                                          style="display: block; border-radius: 50%;object-fit: cover;"
                                                          loading="lazy">
                    <div class="btn btn-block btn-lg btn-warning mt-2 shadow as-cta">
                        <svg width="8" height="20"
                             viewBox="0 0 192 512" style="margin-top:-5px;">
                            <path
                                    d="M0 384.662V127.338c0-17.818 21.543-26.741 34.142-14.142l128.662 128.662c7.81 7.81 7.81 20.474 0 28.284L34.142 398.804C21.543 411.404 0 402.48 0 384.662z"
                                    style="fill:black;"></path>
                        </svg>
                        Play Game
                    </div>
                </div>
            </a>
        </div>
        <div class="gamebar-left mx-auto">
            <div class="gamebar-left-games">

                <#assign hotValue=0>
                <#list alikeGame as game>
                    <#if hotValue < 4>
                        <a href="/details/${game.id}" class="as-game-box as-related-game">
                            <div class="as-related-resize"><img
                                        data-src="${game.gamePreview}"
                                        alt="papa's donuteria game" width="140" height="140"
                                        src="${game.gamePreview}"
                                        data-loaded="true"></div>
                            <span class="as-game-box-title as-related-title">${game.gameName}</span>
                        </a>
                        <#assign hotValue++>
                    </#if>
                </#list>

            </div>
        </div>
        <div class="gamebar-right">
            <div class="gamebar-right-games">
                <#list alikeGame as game>
                    <#if 4 < hotValue && hotValue < 9>
                        <a href="/details/${game.id}" class="as-game-box as-related-game">
                            <div class="as-related-resize"><img
                                        data-src="${game.gamePreview}"
                                        alt="papa's donuteria game" width="140" height="140"
                                        src="${game.gamePreview}"
                                        data-loaded="true"></div>
                            <span class="as-game-box-title as-related-title">${game.gameName}</span>
                        </a>
                    </#if>
                </#list>
            </div>
        </div>
    </div>
    <div class="as-wrapper-info">
        <div class="container-fluid" style="max-width:1200px;">
            <div class="row row-info">
                <div class="col-md-8 col-12 mx-auto">
                    <div aria-label="breadcrumb"></div>
                    <div class="mb-3 clearfix">
                        <h2 class="h4 d-block d-sm-inline-block" id="as-scroll-info">Game Information</h2>
                        <div class="addthis_inline_share_toolbox_ijmz d-inline-block float-left float-sm-right"></div>
                    </div>
                    <div class="as-info-box clearfix mb-4">
                        <div class="as-info-box-img shadow mr-3 mb-2"><img itemscope=""
                                                                           itemtype="https://schema.org/ImageObject"
                                                                           itemprop="image" src="${game.gamePreview}"
                                                                           alt="donut box game" width="164" height="164"
                                                                           loading="lazy"></div>
                        <p>${game.gameDesc}</p>
                        <div class="pt-2 mb-3 as-info-box-tags flex-wrap" role="group" aria-label="Game Tags">

                            <a class="btn btn-sm btn-secondary" href="/type/${game.gameCategory}">
                                ${game.gameCategory}
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="container-fluid">
        <h1 class="h3 as-main-title text-center mb-4">Games - Play Free Online Games</h1>
        <div class="as-game-container mt-4 mb-4">
            <div class="as-game-main">
                <ul class="as-game-list">
                    <#list alikeGame as game>
                        <#if 4 < game_index>
                        <li><a href="/details/${game.id}" class="as-game-box"><img
                                        data-src="${game.gamePreview}"
                                        alt="papa's donuteria game" width="140" height="140"
                                        src="${game.gamePreview}"
                                        data-loaded="true">
                                <div class="as-game-box-title" style="width: 100%;
                            height: 3rem;
                            white-space: normal; overflow: hidden; text-overflow: ellipsis;">${game.gameName}</div>
                                <span
                                        class="badge badge-danger as-game-box-badge">${game.gameCategory}</span>
                            </a></li>
                            </#if>
                    </#list>

                </ul>
            </div>
        </div>
        <div class="py-4"></div>
        <div class="as-generic-box px-3 py-2 mx-3 mb-4 shadow-sm rounded-lg">
            <p>${advert.content}
            </p>
        </div>
    </div>

</main>
<footer class="py-2">
    <div class="container-fluid">
        <div class="row text-center align-items-center">
            <div class="col-12 col-md-9">
                <ul class="nav justify-content-center justify-content-md-start align-items-center">
                    <li class="nav-item"><a class="as-logo-holder nav-link active pl-0" href="/">
                            <img src="/template/12/${advert.domain}/logo.png"
                                 alt="Arcade Spot" width="424" height="123"></a></li>
                    <li class="w-100 d-block d-sm-none"></li>
                    <li class="nav-item"><a class="nav-link" href="/about_us"><i class="fas fa-gamepad"></i>
                            About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="/privacy_policy"><i class="fas fa-envelope"></i>
                            Privacy
                            Policy</a></li>
                    <li class="nav-item"><a class="nav-link" href="/term_of_use"><i class="fas fa-question-circle"></i>
                            Terms of
                            Use</a></li>
                    <li class="nav-item"><a class="nav-link" href="/contact_us"><i class="fas fa-user-shield"></i>
                            Contact
                            Us</a></li>
                </ul>
            </div>
            <div class="col-12 col-md-3 mt-2 mt-md-0 mb-2 mb-md-0 text-md-right">Copyright &copy; 2024 ${advert.serviceName}.
                All Rights Reserved.
            </div>
        </div>
    </div>
</footer>
<script src="/template/12/js/lozad.min.js" defer=""></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.2.3/js/bootstrap.bundle.min.js"></script>
<script src="/template/12/js/script.min.js?v=162" defer=""></script>
</body>

</html>