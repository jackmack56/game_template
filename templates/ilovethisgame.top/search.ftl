<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/template/14/${advert.domain}/main.css" rel="stylesheet"/>
    <link rel="stylesheet" href="/template/14/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/template/14/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="/template/14/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/template/14/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/template/14/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/template/14/css/style.css" type="text/css">
    ${advert.gaCode}
</head>

<body>
<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-lg-2">
                <div class="header__logo">
                    <a href="/">
                        <img src="/template/14/logo.png" style="width: 3rem" />
                    </a>
                </div>
            </div>
            <div class="col-lg-10">
                <div class="header__nav">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="/">Home</a></li>
                            <li><a style="pointer-events: none;">Categories</a>
                                <ul class="dropdown">
                                    <#list game_types as game_type>
                                        <li><a href="/type/${game_type}">${game_type}</a></li>
                                    </#list>
                                </ul>
                            </li>
                            <li><a href="/about_us">About Us</a></li>
                            <li><a href="/contact_us">Contact Us</a></li>
                        </ul>
                    </nav>
                </div>
                <form class="d-flex mt-2" action="/search">
                    <input name="s" value="" type="search" class="form-control" id="search"
                           placeholder="Search Podcast" aria-label="Search">
                </form>
            </div>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
</header>

<section class="product spad">
    <div class="container">
        <div >
            <div class="trending__product">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8">
                        <div class="section-title">
                            <h4>${category ! ''} <span>Games</span></h4>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <#list all_game as game>
                        <div class="col-lg-4 co-md-6 col-sm-6">
                            <a href="/details/${game.id}" class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${game.gamePreview}">
                                    <div class="view"><i class="fa fa-eye"></i> ${game.gameHot}</div>
                                </div>
                                <div class="product__item__text">
                                    <ul>
                                        <li>${game.gameCategory}</li>
                                    </ul>
                                    <h5><a href="/details/${game.id}">${game.gameName}</a></h5>
                                    <p class="game_desc">${game.gameDesc}</p>
                                </div>
                            </a>
                        </div>
                    </#list>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form" action="/search" method="get">
            <input name="s" type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>

<section class="product spad">
    <div class="container">
        <p style="color: var(--font-color)!important;">${advert.content}</p>
    </div>
</section>

<footer class="footer">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="footer__logo">
                    <a href="/"><img src="/template/14/${advert.domain}/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="footer__nav">
                    <ul>
                        <li><a href="/about_us">About Us</a></li>
                        <li><a href="/privacy_policy">Privacy Policy</a></li>
                        <li><a href="/term_of_use">Terms of Use</a></li>
                        <li><a href="/contact_us">Contact Us</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <p>Email: ${advert.contactMail}</a>
                </p>
                <p>Copyright © 2024 <a href="/">${advert.serviceName}</a>. All Rights Reserved.
                </p>
            </div>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/template/14/js/player.js"></script>
<script src="/template/14/js/jquery.nice-select.min.js"></script>
<script src="/template/14/js/mixitup.min.js"></script>
<script src="/template/14/js/jquery.slicknav.js"></script>
<script src="/template/14/js/owl.carousel.min.js"></script>
<script src="/template/14/js/main.js"></script>
</body>
</html>