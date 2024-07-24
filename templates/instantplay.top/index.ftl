<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="${advert.content}" />
    <meta name="keywords" content="${advert.keywords}" />
    <meta name="author" content="">
    <title>${advert.title}</title>
    <link rel="stylesheet" href="/${service_name}/css/all.min.css">
    <link rel="stylesheet" href="/${service_name}/css/magnific-popup.css">
    <link rel="stylesheet" href="/${service_name}/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="/${service_name}/css/main.css">
    <link rel="stylesheet" href="/${service_name}/css/responsive.css">
</head>
<body>
<a href="#" class="scroll-top">
    <i class="fa-solid fa-arrow-up-long"></i>
</a>
<header class="header">
    <div class="header-2" style="background: black;">
        <a class="logo" href="/">
            <img src="/${service_name}/Logo.png" alt="logo">
        </a>
        <div class="container">
            <nav class="navbar">
                <a class="nav-btn" href="/">home</a>
                <a class="nav-btn" href="/about_us">About</a>
                <div class="dropdown-menu">
                    <button class="nav-btn">Category</button>
                    <div class="dropdown-content">
                        <#list game_types as type>
                            <a href="/type/${type}">${type}</a>
                        </#list>
                    </div>
                </div>
                <a class="nav-btn" href="/contact_us">Contact</a>
            </nav>
            <div class="icon-container">
                <div id="search-btn" class="icon fa-solid fa-magnifying-glass"></div>
                <div id="menu-btn" class="icon fa-solid fa-bars-staggered"></div>
            </div>
            <form class="search-container" action="/search" method="get">
                <input type="search" id="search-bar" placeholder="Search Podcast" name="s" value="">
            </form>
        </div>
    </div>
    <div class="mobile-menu">
        <nav class="mobile-navbar">
            <div class="nav-link">
                <div class="main-nav-link"> <a class="nav-btn" href="/">Home</a> </div>
            </div>
            <div class="nav-link">
                <div class="main-nav-link"> <a class="nav-btn" href="/">About</a> </div>
            </div>
            <div class="nav-link">
                <div class="main-nav-link"> <div class="nav-btn">Category</div> <i class="fas fa-plus"></i> </div>
                <div class="sub-nav-link">
                    <#list game_types as type>
                        <a href="/type/${type}">${type}</a>
                    </#list>
                </div>
            </div>

            <div class="nav-link">
                <div class="main-nav-link"> <a class="nav-btn" href="/contact_usl">Contact</a> </div>
            </div>
        </nav>
    </div>
</header>

<section class="services" style="margin-top: 10rem;">
    <div class="heading">
        <h2>New <span>Games</span></h2>
    </div>
    <div class="swiper-container service-slider">
        <div class="swiper-wrapper">
            <#list new_game as game>
            <#if game_index < 6>
                <div class="service-item swiper-slide">
                    <img src="${game.gamePreview}" alt="Guided Tours">
                    <div class="content">
                        <i class="fas fa-route"></i>
                        <a href="/details/${game.id}"><h3> ${game.gameName}</h3></a>
                        <a href="/details/${game.id}" class="btn">Play</a>
                    </div>
                </div>
            </#if>
            </#list>
        </div>
    </div>
</section>


<section class="home-shop">
    <div class="heading">
        <h2>Hot <span>Games</span></h2>
    </div>
    <div class="box-container">
        <#list all_game as game>
            <#if  4200 <= game.gameHot>

                <div class="product-item">
                    <a href="/details/${game.id}">
                    <div class="image">
                        <img src="${game.gamePreview}" alt="Product-Image">
                    </div>
                    <div class="content">
                        <div class="rating">
                            <i class="fa-solid fa-star"></i>
                            <span style="margin-left: 3rem; font-weight: bold">${game.gameHot}</span>
                            <span style="margin-left: 3rem;">${game.createTime?string("yyyy-MM-dd")}</span>
                        </div>
                        <a href="/details/${game.id}"><h3 style="width: 26rem;
                            height: 3rem;
                            white-space: normal; overflow: hidden; text-overflow: ellipsis;">${game.gameName}</h3></a>
                        <div class="price">${game.gameCategory}</div>
                    </div>
                    </a>
                </div>
            </#if>
        </#list>
    </div>
</section>


<section class="portfolio">
    <div class="heading">
        <h2>Other<span>Games</span></h2>
    </div>

    <div class="box-container">

        <#list all_game as game>
            <#if  game.gameHot < 4200>
                <div class="portfolio-item road">
                    <div class="portfolio-content">
                        <img src="${game.gamePreview}" alt="Road Biking Adventure">
                        <div class="content">
                            <div class="btn-container">
                                <a class="view" href="/details/${game.id}"><i
                                            class="fa-solid fa-camera-retro"></i></a>
                                <a href="/details/${game.id}"><i class="fa-solid fa-link"></i></a>
                            </div>
                            <div class="text">
                                <p>${game.gameCategory}</p>
                                <a href="/details/${game.id}"><h3>${game.gameName}</h3></a>
                            </div>
                        </div>
                    </div>
                </div>
            </#if>
        </#list>
    </div>
</section>

<footer class="footer">
    <div class="box-container">
        <div class="footer-item">
            <a class="logo" href="">
                <img src="/${service_name}/Logo.png" alt="logo">
            </a>
            <p>${advert.content}</p>
        </div>
        <div class="footer-item" >
            <p> <a href="/about_us" style="color: white">About Us</a></p>
            <p> <a href="/privacy_policy" style="color: white">Privacy Policy</a></p>
            <p> <a href="/term_of_use" style="color: white">Terms of Use</a> </p>
            <p> <a href="/contact_us" style="color: white">Contact Us</a> </p>
        </div>
        <div class="footer-item">
            <h2>Contact Info</h2>
            <div class="info connect">
                <p><span>${advert.contactMail}</span></p>
                <p></p>
            </div>
        </div>
    </div>
    <div class="content">
        <p>Copyright © 2024 ${service_name}. All Rights Reserved</p>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="/${service_name}/js/swiper-bundle.min.js"></script>
<script src="/${service_name}/js/jquery.magnific-popup.min.js"></script>
<script src="/${service_name}/js/isotope.pkgd.min.js"></script>
<script src="/${service_name}/js/script.js"></script>
<script src="/${service_name}/js/nav-link-toggler.js"></script>
<script src="/${service_name}/js/home-slider.js"></script>
<script src="/${service_name}/js/counter-up.js"></script>
<script src="/${service_name}/js/service-slider.js"></script>
<script src="/${service_name}/js/portfolio.js"></script>
<script src="/${service_name}/js/testi-slider.js"></script>
<script src="/${service_name}/js/sponsor-slider.js"></script>
</body>
</html>