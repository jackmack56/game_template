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
    <link rel="stylesheet" href="/domain/${advert.domain}/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/style.css" type="text/css">
    ${advert.gaCode}
</head>

<body>
<div id="preloder">
    <div class="loader"></div>
</div>


<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-lg-2">
                <div class="header__logo">
                    <a href="/">
                        <img src="/domain/${advert.domain}/logo.png" style="width: 3rem" />
                    </a>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="header__nav">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li class="active"><a href="/">Homepage</a></li>
                            <li><a style="pointer-events: none;">Categories</a>
                                <ul class="dropdown">
                                    <#list game_types as game_type>
                                        <li><a href="/type/${game_type}">${game_type}</a></li>
                                    </#list>

                                </ul>
                            </li>
                            <li><a href="/contact_us">Contacts</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-lg-2">
                <div class="header__right">
                    <a href="#" class="search-switch"><span class="icon_search"></span></a>
                </div>
            </div>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
</header>

<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
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

                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <a href="/details/${game.id}" class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${game.gamePreview}">
                                        <div class="view"><i class="fa fa-eye"></i> ${game.gameHot}</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>${game.gameCategory}</li>
                                        </ul>
                                        <h5><a href="/details/${game.id}">${game.gameName}</a></h5>
                                    </div>
                                </a>
                            </div>
                        </#list>
                    </div>
                </div>
                <div class="popular__product">
                    <div class="row">
                        <div class="col-lg-8 col-md-8 col-sm-8">
                            <div class="section-title">
                                <h4>Popular Shows</h4>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <#list all_game?sort_by("createTime", "asc") as game>
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <a href="/details/${game.id}" class="product__item">
                                    <div class="product__item__pic set-bg" data-setbg="${game.gamePreview}">
                                        <div class="view"><i class="fa fa-eye"></i> ${game.gameHot}</div>
                                    </div>
                                    <div class="product__item__text">
                                        <ul>
                                            <li>${game.gameCategory}</li>
                                        </ul>
                                        <h5><a href="/details/${game.id}">${game.gameName}</a></h5>
                                    </div>
                                </a>
                            </div>
                        </#list>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-8">
                <div class="product__sidebar">
                    <div class="product__sidebar__view">
                        <div class="section-title">
                            <h5>Top Views</h5>
                        </div>
                        <div class="filter__gallery">
                            <#assign hotValue=0>
                            <#list all_game as game>
                                <#if game.featured == true && hotValue < 20>
                                    <div class="product__sidebar__view__item set-bg mix day years"
                                         data-setbg="${game.gamePreview}">
                                        <div class="view"><i class="fa fa-eye"></i> ${game.gameHot}</div>
                                        <a href="/details/${game.id}" style="height: 100%;"><h5
                                                    style="	height: 80%;color: white;">${game.gameName}</h5></a>
                                    </div>

                                    <#assign hotValue++>
                                </#if>
                            </#list>

                        </div>
                    </div>
                    <div class="product__sidebar__comment">
                        <div class="section-title">
                            <h5>New Comment</h5>
                        </div>

                        <#assign hotValue=0>
                        <#list all_game?sort_by("createTime", "desc") as game>
                            <#if game.featured == true && hotValue < 10>

                                <div class="product__sidebar__comment__item">
                                    <div style="width: 30%;" class="product__sidebar__comment__item__pic">
                                        <img style="object-fit: cover;" src="${game.gamePreview}" alt="">
                                    </div>
                                    <div class="product__sidebar__comment__item__text">
                                        <ul>
                                            <li>${game.gameCategory}</li>
                                        </ul>
                                        <h5><a href="/details/${game.id}">${game.gameName}</a></h5>
                                        <span><i class="fa fa-eye"></i> ${game.gameHot} Viewes</span>
                                    </div>
                                </div>
                                <#assign hotValue++>
                            </#if>
                        </#list>

                    </div>
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

<footer class="footer">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="footer__logo">
                    <a href="/"><img src="img/logo.png" alt=""></a>
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
                <p>Copyright © 2024 <a href="/">${service_name}</a>. All Rights Reserved.
                </p>
            </div>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/domain/${advert.domain}/js/player.js"></script>
<script src="/domain/${advert.domain}/js/jquery.nice-select.min.js"></script>
<script src="/domain/${advert.domain}/js/mixitup.min.js"></script>
<script src="/domain/${advert.domain}/js/jquery.slicknav.js"></script>
<script src="/domain/${advert.domain}/js/owl.carousel.min.js"></script>
<script src="/domain/${advert.domain}/js/main.js"></script>
</body>
</html>