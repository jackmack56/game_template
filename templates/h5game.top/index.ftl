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
    <link rel="stylesheet" href="/domain/${advert.domain}/css/all.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/magnific-popup.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/swiper-bundle.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/main.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/responsive.css">
    ${advert.gaCode}
</head>
<style>
    :root {
        --main-color: white;
    }
    .nav-link {
        border-radius: 15px;
    }
    .nav-btn {
        color: #409EFF;
    }
    .mobile-navbar .main-nav-link {
        color: #409EFF;
    }
    .mobile-navbar .main-nav-link a {
        color: #409EFF;
    }
</style>
<body>
<a href="#" class="scroll-top" style="background: #409EFF;">
    <i class="fa-solid fa-arrow-up-long"></i>
</a>
<header class="header">
    <div class="header-2" style="background: #409EFF;">
        <a class="logo" href="/">
            <img src="/domain/${advert.domain}/logo.png" alt="logo">
        </a>
        <div class="container">
            <nav class="navbar">
                <a class="nav-btn" href="">home</a>
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
    <div class="mobile-menu" style="background: #409EFF">
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


<section class="events" style="margin-top: 10rem">
    <div class="heading">
        <h2 style="color: #409EFF;">New <span>Games</span></h2>
    </div>
    <div class="box-container">
        <#list new_game as game>
            <#if game_index < 4>
                <div class="event-item">
                    <div class="image">
                        <img src="${game.gamePreview}" alt="Result-Image" style="border-radius: 15px;">
                    </div>
                    <div class="content">
                        <div class="date" style="background: #409EFF;">${game.createTime?string("yyyy-MM-dd")}</div>
                        <div class="details">
                            <h3><i class="fa-solid fa-trophy" style="background: #409EFF;"></i><span>${game.gameHot}</span></h3>
                            <h3><i class="fa-solid fa-location-dot" style="background: #409EFF;"></i><span>${game.gameCategory}</span></h3>
                        </div>
                        <a class="main-heading" href="/details/${game.id}" style="width: 15rem; height: 3rem; white-space: normal;
                           overflow: hidden;text-overflow: ellipsis;">${game.gameName}</a>
                    </div>
                </div>
            </#if>
        </#list>
    </div>
</section>


<section class="team">
    <div class="heading">
        <h2 style="color: #409EFF;">Random <span>Games</span></h2>
    </div>
    <div class="box-container">
        <#list all_game as game>
            <#if  game.gameHot < 4200>
                <div class="team-item" style="border-radius: 15px; height: 30rem">
                    <div class="team-image">
                        <img src="${game.gamePreview}" alt="Member-Pic"  >
                    </div>
                    <div class="team-content" style="background: rgba(64,158,255, 0.9)">
                        <a href="/details/${game.id}"><h3
                                    style="width: 15rem; height: 3rem; white-space: normal;
                            overflow: hidden;text-overflow: ellipsis;">
                                ${game.gameName}</h3></a>
                        <p style="font-size: 14px;
    font-weight: 300;
    color: #fff;
    height: 4.3rem;
    overflow: hidden;">${game.gameDesc}</p>
                        <div class="icon-container" style="color: white">
                            <span >${game.gameHot}</span>
                            <span >${game.createTime?string("yyyy-MM-dd")}</span>
                        </div>
                    </div>
                </div>
            </#if>
        </#list>
    </div>
</section>


<section class="team" style="font-size: 18px; line-height: 3rem">
    ${advert.content}
</section>


<footer class="footer" style="background: rgba(64,158,255, 0.9);">
    <div class="box-container">
        <div class="footer-item">
            <a class="logo" href="">
                <img src="/domain/${advert.domain}/logo.png" alt="logo">
            </a>

        </div>
    </div>
    <div class="box-container">
        <div class="footer-item" >
            <p> <a href="/about_us" style="color: white">About Us</a></p>
            <p> <a href="/privacy_policy" style="color: white">Privacy Policy</a></p>
            <p> <a href="/term_of_use" style="color: white">Terms of Use</a> </p>
            <p> <a href="/contact_us" style="color: white">Contact Us</a> </p>
        </div>
        <div class="footer-item">
            <h2>Contact Info</h2>
                <p><span>${advert.contactMail}</span></p>

        </div>
    </div>
    <div class="content" style="background: #409EFF">
        <p>Copyright © 2024 ${advert.serviceName}. All Rights Reserved</p>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="/domain/${advert.domain}/js/swiper-bundle.min.js"></script>
<script src="/domain/${advert.domain}/js/jquery.magnific-popup.min.js"></script>
<script src="/domain/${advert.domain}/js/isotope.pkgd.min.js"></script>
<script src="/domain/${advert.domain}/js/script.js"></script>
<script src="/domain/${advert.domain}/js/nav-link-toggler.js"></script>
<script src="/domain/${advert.domain}/js/home-slider.js"></script>
<script src="/domain/${advert.domain}/js/counter-up.js"></script>
<script src="/domain/${advert.domain}/js/service-slider.js"></script>
<script src="/domain/${advert.domain}/js/portfolio.js"></script>
<script src="/domain/${advert.domain}/js/testi-slider.js"></script>
<script src="/domain/${advert.domain}/js/sponsor-slider.js"></script>
</body>
</html>