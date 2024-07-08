<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>${service_name}</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/7-8-1/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/7-8-1/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/7-8-1/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/7-8-1/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="/7-8-1/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/7-8-1/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/7-8-1/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/7-8-1/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="/">
                            ${service_name}
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
                                        <!-- type list -->
                                        <#list game_types as game_type>
                                            <li><a href="/type/${game_type}">${game_type}</a></li>
                                        </#list>

                                    </ul>
                                </li>
                                <li><a href="/contact_us.html">Contacts</a></li>
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
    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="hero__slider owl-carousel">
                <!-- list -->
                <#assign hotValue=0>
                    <#list all_game as game>
                        <#if 4000 <=game.gameHot && hotValue < 4>

                            <div class="hero__items set-bg" data-setbg="${game.gamePreview}">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="hero__text">
                                            <div class="label">${game.gameCategory}</div>
                                            <h2>${game.gameName}</h2>
                                            <a href="/details/${game.id}"><span>Play Now</span> <i
                                                    class="fa fa-angle-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <#assign hotValue++>
                        </#if>
                    </#list>


            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="trending__product">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-8">
                                <div class="section-title">
                                    <h4>Trending Now</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-4">
                                <div class="btn__all">
                                    <a href="/type/Action" class="primary-btn">View All <span
                                            class="arrow_right"></span></a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                                <#assign hotValue=0>
                                <#list all_game as game>
                                    <#if 4000 <=game.gameHot && hotValue < 20>

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
                                        <#assign hotValue++>
                                    </#if>
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
                            <#assign hotValue=0>
                            <#list all_game as game>
                                <#if hotValue < 20>
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
                                    <#assign hotValue++>
                                </#if>
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
                                    <a href="/details/${game.id}" style="height: 100%;"><h5 style="	height: 80%;color: white;">${game.gameName}</h5></a>
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
    <!-- Product Section End -->

    <!-- Footer Section Begin -->
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
                            <li class="active"><a href="/">Homepage</a></li>
                            <li><a href="/about_us.html">About Us</a></li>
                            <li><a href="/privacy_policy.html">Privacy Policy</a></li>
                            <li><a href="/term_of_use.html">Term of Use</a></li>
                            <li><a href="/contact_us.html">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved.
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>

                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form" action="/search" method="get">
                <input name="s" type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

    <!-- Js Plugins -->
    <script src="/7-8-1/js/jquery-3.3.1.min.js"></script>
    <script src="/7-8-1/js/bootstrap.min.js"></script>
    <script src="/7-8-1/js/player.js"></script>
    <script src="/7-8-1/js/jquery.nice-select.min.js"></script>
    <script src="/7-8-1/js/mixitup.min.js"></script>
    <script src="/7-8-1/js/jquery.slicknav.js"></script>
    <script src="/7-8-1/js/owl.carousel.min.js"></script>
    <script src="/7-8-1/js/main.js"></script>


</body>

</html>