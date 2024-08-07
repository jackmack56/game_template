<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/main_copy.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/responsive.css">
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
    ${advert.gaCode}
</head>
<body style="background: #0a0a0a; color: white">
<a href="#" class="scroll-top" style="background: #f88d1e">
    <i class="fa-solid fa-arrow-up-long" ></i>
</a>
<header class="header">
    <div class="header-2" style="background: black;">
        <a class="logo" href="/">
            <img src="/domain/${advert.domain}/logo.png" alt="logo">
        </a>
        <div class="float-left pt-5" style="display: flex">
            <nav class="navbar">
                <a class="nav-btn" href="/">home</a>
                <a class="nav-btn" href="/about_us">About</a>
                <div class="dropdown-menu-c">
                    <button class="nav-btn">Category</button>
                    <div class="dropdown-content">
                        <#list game_types as type>
                            <a href="/type/${type}">${type}</a>
                        </#list>
                    </div>
                </div>
                <a class="nav-btn" href="/contact_us">Contact</a>
            </nav>
            <div class="icon-container" style="margin-left: 3rem;">
                <div id="search-btn" class="icon fa-solid fa-magnifying-glass"></div>
                <div id="menu-btn" class="icon fa-solid fa-bars-stagge#f88d1e"></div>
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


<section style="margin-top: 10rem">
    <div class="w-100">
        <h2  style="font-weight: bolder; font-size: 40px;">New <span style="color: #f88d1e">Games</span></h2>
        <hr>
    </div>
    <div class="row w-95 mx-auto mt-5" >
        <#list all_game as game>
                <div class="new-box-1 col-6 col-lg-2 col-md-4">
                    <a href="/details/${game.id}" style="text-decoration: none">
                        <div class="new-img-content-1">
                            <img src="${game.gamePreview}"  />
                        </div>
                        <div class="new-box-des-1 mt-2">
                            <p style="width: 20rem; color: white">${game.gameName}</p>
                            <p style="color:#f88d1e; font-size: 12px; line-height: 5rem;">${game.gameHot}</p>
                        </div>
                    </a>
                </div>
        </#list>
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
    <div class="content" style="background: #0a0a0a">
        <p>Copyright © 2024 ${advert.serviceName}. All Rights Reserved</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="/domain/${advert.domain}/js/main.js"></script>
</body>
</html>