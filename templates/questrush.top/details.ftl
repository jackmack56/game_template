<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/style.min.css?ver=140">
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
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

<body itemscope="itemscope" itemtype="https://schema.org/WebPage">
<header>
    <div class="container-fluid">
        <div class="row">
          <div class="col-12 col-lg-6 text-center text-lg-left my-2" itemscope="itemscope">
            <a href="/" itemprop="name" title="Arcade Spot">
              <div class="as-logo-holder mx-auto mx-lg-0"><img src="/domain/${advert.domain}/logo.png"
                                                               alt="Arcade Spot" width="424" height="123"></div>
            </a></div>
            <div class="col-12 col-lg-6">
                <div class="sub-nav text-center text-lg-right mt-0 mt-lg-4 mb-2"></div>
                <form class="row float-lg-right mb-3" role="search" action="/search" method="get">
                    <div class="input-group col"><input class="form-control py-2 border-right-0 border" type="search"
                                                        placeholder="Search for games" aria-label="Search"
                                                        id="search-input" name="s"><span
                                class="input-group-append"><button
                                    class="btn btn-secondary border-left-0 border as-search-button"
                                    type="submit"><svg width="16" height="16" viewBox="0 0 512 512"
                                                       style="margin-top:-3px;">
                    <path
                            d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"
                            style="fill:grey;"></path>
                  </svg></button></span></div>
                </form>
            </div>
        </div>
        <nav>
            <ul class="main-nav pl-0 pl-lg-3">
                <li class="menu-item active"><a href="/"><span>Home</span></a></li>
                <#assign hotValue=0>
                <#list game_types as type>
                    <#if hotValue < 4>
                        <li class="menu-item d-none d-xl-table-cell">
                            <a href="/type/${type}">
                                <span>${type}</span>
                            </a>
                        </li>
                        <#assign hotValue++>
                    </#if>
                </#list>

                <li class="menu-item dropdown" style="z-index: 10;">
                    <a data-toggle="dropdown" aria-expanded="false"><span class="text-white">More&nbsp;›</span></a>
                    <div class="dropdown-menu" style="position: absolute;">
                        <#list game_types as type>
                            <a href="/type/${type}">
                                <span>${type}</span>
                            </a>
                        </#list>
                    </div>
                </li>
            </ul>
        </nav>
    </div>
</header>
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
                                                          width="164" height="164"
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
        <div class="gamebar-left">
            <div class="gamebar-left-games">

                <#assign hotValue=0>
                <#list alikeGame as game>
                    <#if hotValue < 4>
                        <a href="/details/${game.id}" class="as-game-box as-related-game">
                            <div class="as-related-resize"><img
                                        data-src="${game.gamePreview}"
                                        alt="papa's donuteria game" width="164" height="164"
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

                <#assign hotValue=0>
                <#list alikeGame as game>
                    <#if 4 < hotValue && hotValue < 9>
                        <a href="/details/${game.id}" class="as-game-box as-related-game">
                            <div class="as-related-resize"><img
                                        data-src="${game.gamePreview}"
                                        alt="papa's donuteria game" width="164" height="164"
                                        src="${game.gamePreview}"
                                        data-loaded="true"></div>
                            <span class="as-game-box-title as-related-title">${game.gameName}</span>
                        </a>
                    </#if>
                    <#assign hotValue++>
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
</main>
<footer class="py-2">
    <div class="container-fluid">
        <div class="row text-center align-items-center">
            <div class="col-12 col-md-9">
                <ul class="nav justify-content-center justify-content-md-start align-items-center">
                    <li class="nav-item"><a class="nav-link active pl-0" href="/"><img
                                    src="https://arcadespot.com/images/logo-bottom.png" alt="Arcade Spot" width="144"
                                    height="45"
                                    loading="lazy"></a></li>
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
            <div class="col-12 col-md-3 mt-2 mt-md-0 mb-2 mb-md-0 text-md-right">Copyright &copy; 2024 ${service_name}.
                All Rights Reserved.
            </div>
        </div>
    </div>
</footer>
<script src="/domain/${advert.domain}/js/lozad.min.js" defer=""></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
        crossorigin="anonymous"></script>
<script src="/domain/${advert.domain}/js/script.min.js?v=162" defer=""></script>
</body>

</html>