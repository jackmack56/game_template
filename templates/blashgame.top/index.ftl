<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <title>${advert.title}</title>
    <link rel="stylesheet" href="/template/11/css/bootstrap.min.css">
    <link rel="stylesheet" href="/template/11/css/toastr.min.css">
    <link rel="stylesheet" href="/template/11/css/all.min.css">
    <link rel="stylesheet" href="/template/11/css/all.min1.css">
    <link rel="stylesheet" href="/template/11/css/styles.css">
    <link rel="stylesheet" href="/template/11/${advert.domain}/main.css"/>
    ${advert.gaCode}
</head>
<body class="body pace-done">
<div class="pace  pace-inactive">
    <div class="pace-progress" data-progress-text="100%" data-progress="99"
         style="transform: translate3d(100%, 0px, 0px);">
        <div class="pace-progress-inner"></div>
    </div>
    <div class="pace-activity"></div>
</div>
<div class="pace  pace-inactive">
    <div class="pace-progress" data-progress-text="100%" data-progress="99"
         style="transform: translate3d(100%, 0px, 0px);">
        <div class="pace-progress-inner"></div>
    </div>
    <div class="pace-activity"></div>
</div>
<div class="pace  pace-inactive">
    <div class="pace-progress" data-progress-text="100%" data-progress="99"
         style="transform: translate3d(100%, 0px, 0px);">
        <div class="pace-progress-inner"></div>
    </div>
    <div class="pace-activity"></div>
</div>
<div id="progress" style="display: none; background: conic-gradient(rgb(31, 43, 227) 0%, rgb(215, 215, 215) 0%);">
    <span id="progress-value"><i class="fa-solid fa-arrow-up"></i></span>
</div>
<header class="header">
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a href="/">
                <img src="/template/11/${advert.domain}/logo.png" style="width: 5rem; aspect-ratio: 0;"/>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa-solid fa-bars"></i>
            </button>

            <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
                <ul class="navbar-nav ms-auto" id="navbar">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                           aria-expanded="false">Category</a>
                        <ul class="dropdown-menu">
                            <#list game_types as game_type>
                                <li>
                                    <a class="dropdown-item"
                                       href="/type/${game_type}" style="color: var(--box-font-color) !important;">${game_type}</a>
                                </li>
                            </#list>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/about_us">About Us</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/privacy_policy">Privacy Policy</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/term_of_use">Terms of Use</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/contact_us">Contact Us</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>
</header>



<section class="portfolio section" id="portfolio">
    <div class="container d-flex flex-column gap-64">
        <form action="/search" method="get" class="custom-form search-form flex-fill me-3" role="search">
            <div class="input-group input-group-lg">
                <input name="s" value="" type="search" class="form-control" id="search"
                       placeholder="Search Game" aria-label="Search">
            </div>
        </form>
        <div class="d-flex flex-lg-row flex-column justify-content-between align-items-start">
            <div class="heading d-flex flex-column col-lg-8 col-12 ">
                <h3 class="heading-3">Trending Games</h3>
            </div>
            <a href="/type/Action" class="learn-more">View All Games <i class="fa fa-arrow-right"
                                                                        aria-hidden="true"></i></a>
        </div>
        <div class="row g-4">
            <#list all_game as game>
                <#if game_index < 12>
                    <div class="col-lg-3 col-6">
                        <a href="/details/${game.id}" class="d-flex flex-column padding-16 gap-32 bg-box">
                            <div class="img">
                                <img src="${game.gamePreview}" class="b-radius" alt="portfolio">
                            </div>
                            <div class="d-flex justify-content-between align-items-start">
                                <div class="d-flex flex-column">
                                    <h4 class="heading-4 d-inline-block text-truncate"
                                        style="max-width: 8rem">${game.gameName}</h4>
                                    <p class="body-2">${game.gameDesc}</p>
                                </div>
                                <div class="icon-container" style="padding: 10px;">
                                    <i class="fa fa-arrow-right unique-text icon-sm" aria-hidden="true"></i>
                                </div>
                            </div>
                        </a>
                    </div>
                </#if>
            </#list>
        </div>
    </div>
</section>

<section class="portfolio section" id="portfolio">
    <div class="container d-flex flex-column gap-64">
        <div class="d-flex flex-lg-row flex-column justify-content-between align-items-start">
            <div class="heading d-flex flex-column col-lg-8 col-12 ">
                <h3 class="heading-3">Other Games</h3>
            </div>
            <a href="/type/Action" class="learn-more">View All Games <i class="fa fa-arrow-right"
                                                                        aria-hidden="true"></i></a>
        </div>
        <div class="row g-4">
            <#list all_game as game>
                <#if 12 < game_index>
                    <div class="col-lg-2 col-4">
                        <a href="/details/${game.id}" class="d-flex flex-column padding-16 gap-32 bg-box">
                            <div class="img">
                                <img src="${game.gamePreview}" class="b-radius" alt="portfolio">
                            </div>
                            <div class="d-flex justify-content-between align-items-start">
                                <div class="d-flex flex-column row">
                                    <h6 class="d-inline-block text-truncate"
                                        style="max-width: 8rem; color: var(--box-font-color)!important;">${game.gameName}</h6>
                                </div>
                            </div>
                        </a>
                    </div>
                </#if>
            </#list>
        </div>
    </div>
</section>


<section class="portfolio section" id="portfolio">
    <div class="container d-flex flex-column gap-64" style="color: var(--primary-color) !important;">
        ${advert.content}
    </div>
    <div class="container d-flex flex-column gap-64 mt-2" style="color: var(--primary-color) !important;">
        FunZone offers a lively selection of H5 games across genres like action, puzzles, and strategy. Play games
        instantly on any device with no downloads required. Explore FunZone for non-stop gaming excitement.
    </div>
</section>

<section class="footer position-relative pt-2 mt-2 pb-2">
    <div class="container d-flex flex-column gap-16">
        <hr>
        <div class="row justify-content-between align-items-start g-4 py-5" style="
    justify-content: space-between;
">
            <div class="col-lg-2 col-md-6 col-12">
                <div class="d-flex flex-column gap-2">
                    <h4>About</h4>
                    <div class="d-flex flex-column gap-1">
                        <a href="/about_us">About Us</a>
                        <a href="/privacy_policy">Privacy Policy</a>
                        <a href="/term_of_use">Terms of Use</a>
                        <a href="/contact_us">Contact Us</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
                <div class="d-flex flex-column gap-8">

                    <h4 class="m-0 p-0">
                        <p>Copyright © 2024 <a href="/">${advert.serviceName}</a>. All Rights Reserved.</p>
                        <p></p>
                    </h4>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="/template/11/js/pace.js"></script>
<script src="/template/11/js/jquery.bez.js"></script>
<script src="/template/11/js/toastr.min.js"></script>
<script src="/template/11/js/TweenMax.min.js"></script>
<script src="/template/11/js/owl.carousel.min.js"></script>
<script src="/template/11/js/bootstrap.bundle.min.js"></script>
<script src="/template/11/js/jquery.counterup.min.js"></script>
<script src="/template/11/js/jquery.waypoints.js"></script>
<script src="/template/11/js/main.js"></script>
</body>
</html>