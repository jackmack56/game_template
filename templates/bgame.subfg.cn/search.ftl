<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <title>${service_name}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/bgame.subfg.cn/css/my/templatemo-cyborg-gaming.css">
</head>

<body>
<div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
</div>
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="index.html" class="logo">
                        <img src="assets/images/logo.png" alt="">
                    </a>
                    <!-- ***** Search End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="/" class="active">Home</a></li>
                        <li><a href="/about_us">About</a></li>
                        <li><a href="/privacy_policy">Privacy Policy</a></li>
                        <li><a href="/term_of_use">Terms os Use</a></li>
                        <li><a href="/contact_us">Contact Us</a></li>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->

<div class="container">

    <div class="row">
        <div class="page-content">

            <div class="gaming-library">
                <div class="search-input">
                    <form id="search" action="/search">
                        <input type="text" placeholder="Search Games Name" id='searchText' name="s" value=""/>
                    </form>
                </div>
            </div>
            <div class="gaming-library">
                <div class="heading-section">
                    <h4><em>Category</em> Games</h4>
                </div>
                <div class="main-button">
                    <#list game_types as type>
                        <a href="/type/${type}">${type}</a>
                    </#list>
                </div>
            </div>


            <div class="most-popular">
                <div class="row">
                    <div class="col-lg-14">
                        <div class="heading-section">
                            <h4><em>Recommend</em> Games</h4>
                        </div>
                        <div class="row">
                            <#assign hotValue = 0>
                            <#list all_game as game>
                                <#if hotValue < 4>
                                    <div class="col-lg-3 col-sm-4">
                                        <a href="/details/${game.id}">
                                            <div class="item">
                                                <img src="${game.gamePreview}" height="100" alt="">
                                                <h4>${game.gameName}<br><span>${game.gameCategory}</span></h4>
                                                <ul>
                                                    <li><i class="fa fa-star"></i> ${game.gameHot}</li>
                                                </ul>
                                            </div>
                                        </a>
                                    </div>
                                    <#assign hotValue++>
                                </#if>
                            </#list>
                        </div>
                    </div>
                </div>
            </div>

            <div class="gaming-library">
                <div class="col-lg-12">
                    <div class="heading-section">
                        <h4><em>Filter</em> Games</h4>
                    </div>
                    <#list all_game as game>
                        <#if game_index % 3 == 0 >
                            <div class="item">
                                <ul>
                                    <li><img src="${game.gameIcon}" alt="" class="templatemo-item"></li>
                                    <li><h4>Game Name</h4><span>${game.gameName}</span></li>
                                    <li><h4>Category</h4><span>${game.gameCategory}</span></li>
                                    <li><h4>Hot Played</h4><span>${game.gameHot}</span></li>
                                    <li><h4>Date Issues</h4><span>${game.createTime?string("yyyy-MM-dd")}</span></li>
                                    <li>
                                        <div class="main-border-button border-no-active"><a href="/details/${game.id}">Start</a></div>
                                    </li>
                                </ul>
                            </div>
                        </#if>
                    </#list>
                </div>
            </div>


        </div>
    </div>
</div>
</div>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <p>Copyright © 2024 <a href="/">${service_name}</a> <br>
                    Company. All rights reserved.
                    <br><a target="_blank" href="/">${service_name}</a></p>
            </div>
            <div class="col-lg-4">
                <a target="_blank" href="/about_us">About Us</a></p>
                <a target="_blank" href="/privacy_policy">Privacy Policy</a></p>
                <a target="_blank" href="/term_of_use">Term of Use</a></p>
                <a target="_blank" href="/contact_us">Contact Us</a></p>
            </div>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/bgame.subfg.cn/js/my/isotope.min.js"></script>
<script src="/bgame.subfg.cn/js/my/owl-carousel.js"></script>
<script src="/bgame.subfg.cn/js/my/tabs.js"></script>
<script src="/bgame.subfg.cn/js/my/popup.js"></script>
<script src="/bgame.subfg.cn/js/my/custom.js"></script>
</body>
</html>
