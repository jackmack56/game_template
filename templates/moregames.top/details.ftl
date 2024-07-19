<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/${service_name}/css/my/templatemo-cyborg-gaming.css">
</head>
<body>

<!-- ***** Preloader Start ***** -->
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
                    <a href="index.html" class="logo">
                        <img src="assets/images/logo.png" alt="">
                    </a>
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
                </nav>
            </div>
        </div>
    </div>
</header>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="page-content">
                <#--        <div class="row">-->
                <#--          <div class="col-lg-12">-->
                <#--            <div class="feature-banner header-text">-->
                <#--              <div class="row">-->
                <#--                <div class="col-lg-8">-->
                <#--                  <div class="thumb">-->
                <#--                    <img src="${game.gamePreview}" alt="" style="border-radius: 10px;">-->
                <#--                     <a href="${game.gameUri}" target="_blank">Start</a>-->
                <#--                  </div>-->
                <#--                </div>-->
                <#--              </div>-->
                <#--            </div>-->
                <#--          </div>-->
                <#--        </div>-->
                <div class="game-details">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="content">
                                <div class="row">
                                    <div class="col-lg-10 mx-auto">

                                        <div class="col-lg-8 mx-auto">
                                            <div class="thumb">
                                                <img src="${game.gamePreview}" alt="" style="border-radius: 10px;">
                                            </div>
                                        </div>

                                        <div class="left-info">
                                            <div class="left">
                                                <h4>${game.gameName}</h4>
                                                <span>${game.gameCategory}</span>
                                            </div>
                                            <ul>
                                                <li>${game.gameHot}</li>
                                                <li>${game.createTime?string("yyyy-MM-dd")}</li>
                                            </ul>
                                        </div>

                                        <p>${game.gameDesc}</p>

                                      <div class="main-border-button">
                                        <a href="${game.gameUri}">Start Game Now!</a>
                                      </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="other-games">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="heading-section">
                                <h4><em>Other Related</em> Games</h4>
                            </div>
                        </div>
                        <#list alikeGame as game>

                            <div class="col-lg-6">
                                <a href="/details/${game.id}">
                                    <div class="item">
                                        <img src="${game.gamePreview}" alt="" class="templatemo-item">
                                        <h4>Name</h4><span>${game.gameName}</span>
                                        <ul>
                                            <li>${game.gameHot}</li>
                                            <li>${game.createTime?string("yyyy-MM-dd")}</li>
                                        </ul>
                                    </div>
                                </a>
                            </div>

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
            <div class="col-lg-8">
                <p>Email: ${advert.contactMail}</a>
                </p>
                <p>Copyright © 2024 <a href="/">${service_name}</a>
                    Company. All rights reserved.
                </p>
            </div>
            <div class="col-lg-2">
                <p><a href="/about_us">About</a></p>
                <p><a href="/privacy_policy">Privacy Policy</a></p>
            </div>
            <div class="col-lg-2">
                <p><a href="/term_of_use">Terms os Use</a></p>
                <p><a href="/contact_us">Contact Us</a></p>
            </div>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="/${service_name}/js/my/isotope.min.js"></script>
<script src="/${service_name}/js/my/owl-carousel.js"></script>
<script src="/${service_name}/js/my/tabs.js"></script>
<script src="/${service_name}/js/my/popup.js"></script>
<script src="/${service_name}/js/my/custom.js"></script>
</body>

</html>
