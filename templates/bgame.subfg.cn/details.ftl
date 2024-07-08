<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <title>${service_name}</title>
  <link href="/bgame.subfg.cn/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/bgame.subfg.cn/css/my/templatemo-cyborg-gaming.css">
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
            <li><a href="/">Blog</a></li>
            <li><a href="/">Privacy Policy</a></li>
            <li><a href="/">Terms os Use</a></li>
            <li><a href="/">Contact Us</a></li>
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

        <!-- ***** Featured Start ***** -->
        <div class="row">
          <div class="col-lg-12">
            <div class="feature-banner header-text">
              <div class="row">
                <div class="col-lg-8">
                  <div class="thumb">
                    <img src="${game.gamePreview}" alt="" style="border-radius: 10px;">
                     <a href="${game.gameUri}" target="_blank">Start</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="game-details">
          <div class="row">
            <div class="col-lg-12">
              <h2>FORTNITE DETAILS</h2>
            </div>
            <div class="col-lg-12">
              <div class="content">
                <div class="row">
                  <div class="col-lg-10">
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
                  </div>
                  </div>
                  <div class="col-lg-12">
                    <p>${game.gameDesc}</p>
                  </div>
                  <div class="col-lg-12">
                    <div class="main-border-button">
                      <a href="${game.gameUri}">Start Game Now!</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- ***** Details End ***** -->

        <!-- ***** Other Start ***** -->
        <div class="other-games">
          <div class="row">
            <div class="col-lg-12">
              <div class="heading-section">
                <h4><em>Other Related</em> Games</h4>
              </div>
            </div>
            <#list alikeGame as game>
              <div class="col-lg-6">
                <div class="item">
                  <img src="${game.gameIcon}" alt="" class="templatemo-item">
                  <h4>Name</h4><span>${game.gameName}</span>
                  <ul>
                    <li>${game.gameHot}</li>
                    <li>${game.createTime?string("yyyy-MM-dd")}</li>
                  </ul>
                </div>
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
      <div class="col-lg-12">
        <p>Copyright © 2024 <a href="/">${service_name}</a> <br>
          Company. All rights reserved.
          <br><a target="_blank" href="/">${service_name}</a></p>
      </div>
    </div>
  </div>
</footer>
<script src="/bgame.subfg.cn/js/jquery.js"></script>
<script src="/bgame.subfg.cn/js/bootstrap.min.js"></script>
<script src="/bgame.subfg.cn/js/my/isotope.min.js"></script>
<script src="/bgame.subfg.cn/js/my/owl-carousel.js"></script>
<script src="/bgame.subfg.cn/js/my/tabs.js"></script>
<script src="/bgame.subfg.cn/js/my/popup.js"></script>
<script src="/bgame.subfg.cn/js/my/custom.js"></script>
</body>

</html>
