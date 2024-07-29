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
    <link rel="stylesheet" href="/domain/${advert.domain}/css/main.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/responsive.css">

</head>
<body>
<a href="#" class="scroll-top">
    <i class="fa-solid fa-arrow-up-long"></i>
</a>
<header class="header">
    <div class="header-2" style="background: black;">
        <a class="logo" href="/">
            <img src="/domain/${advert.domain}/logo.png" alt="logo">
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


<section class="portfolio-single page-single" style="margin-top: 10rem;">
    <div class="portfolio-info page-info" >
        <div class="image" style="width: 100%; margin: 0px auto">
            <a href="${game.gameUri}">
                <img src="${game.gamePreview}" alt="Road Biking Adventure" >
            </a>
            <a href="${game.gameUri}"><p
                        style=" margin: 15px auto; border-radius: 25px;
                        width: 30rem; height: 5rem; background: #0a53be; color:white; text-align: center; line-height:5rem">
                    PLAY</p></a>
        </div>

        <div class="content" style="padding-top: 7rem">
            <h3 class="main-heading">${game.gameName}</h3>
            <p>${game.gameDesc}</p>

            <h3 class="main-heading" style="margin-top: 10rem; ">Other Games</h3>
            <div class="portfolio-gallery page-gallery">
                <#list alikeGame as game>
                    <a href="/details/${game.id}">
                        <img src="${game.gamePreview}" alt="Road Biking Image 1">
                    </a>
                </#list>
            </div>
        </div>
    </div>
    </div>
</section>
<footer class="footer">
    <div class="box-container">
        <div class="footer-item">
            <a class="logo" href="">
                <img src="/domain/${advert.domain}/logo.png" alt="logo">
            </a>
            <p>${advert.content}</p>
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
    <div class="content">
        <p>Copyright © 2024 ${service_name}. All Rights Reserved</p>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="/domain/${advert.domain}/js/jquery.magnific-popup.min.js"></script>
<script src="/domain/${advert.domain}/js/script.js"></script>
<script src="/domain/${advert.domain}/js/nav-link-toggler.js"></script>
</body>
</html>