<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
  <title>${service_name}</title>
  <link href="/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/css/my/templatemo-cyborg-gaming.css">
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
            <li><a href="/">Blog</a></li>
            <li><a href="/">Privacy Policy</a></li>
            <li><a href="/">Terms os Use</a></li>
            <li><a href="/">Contact Us</a></li>
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
        <div class="col-lg-12">
        <div class="main-banner">
          <div class="row">
            <div class="col-lg-10">
              <div class="header-text">
                <h4>Welcome To<em> ${service_name}</em></h4>
                <h4><em>Browse</em> Our Popular Games Category</h4>
              </div>
            </div>
          </div>
        </div>
        <div class="main-button">
          <#list game_types as type>
            <a href="/type/${type}">${type}</a>
          </#list>
        </div>



          <div class="gaming-library">
            <div class="search-input">
              <form id="search" action="/search">
                <input type="text" placeholder="Search Games Name" id='searchText' name="s" value=""/>
              </form>
            </div>
          </div>


          <div class="most-popular">
          <div class="row">
            <div class="col-lg-14">
              <div class="heading-section">
                <h4><em>Popular</em> Games</h4>
              </div>
              <div class="row">
                <#assign hotValue = 0>
                <#list all_game as game>
                  <#if 4000 <= game.gameHot && hotValue < 4>
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
                <div class="col-lg-12">
                  <div class="main-button">
                    <a href="/sort/hot">load more</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>


        <div class="gaming-library">
          <div class="col-lg-12">
            <div class="heading-section">
              <h4><em>Newest</em> Games</h4>
            </div>
            <#list new_game as game>
              <#if game_index < 4>
                <div class="item">
                  <ul>
                    <li><img src="${game.gameIcon}" alt="" class="templatemo-item"> </li>
                    <li><h4>Game Name</h4><span>${game.gameName}</span></li>
                    <li><h4>Category</h4><span>${game.gameCategory}</span></li>
                    <li><h4>Hot Played</h4><span>${game.gameHot}</span></li>
                    <li><h4>Date Issues</h4><span>${game.createTime?string("yyyy-MM-dd")}</span></li>
                    <li><div class="main-border-button border-no-active"><a href="/details/${game.id}">Pay Game</a></div></li>
                  </ul>
                </div>
              </#if>
            </#list>
          </div>
          <div class="col-lg-12">
            <div class="main-button">
              <a href="/sort/new">View Your Library</a>
            </div>
          </div>
        </div>


        <div class="most-popular">
          <div class="row">
            <div class="col-lg-14">
              <div class="heading-section">
                <h4><em>Action Category</em> Games</h4>
              </div>
              <div class="row">
                <#assign typeNumber = 0>
                <#list all_game as game>
                  <#if "Action" == game.gameCategory && typeNumber < 8>
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
                    <#assign typeNumber++>
                  </#if>
                </#list>
                <div class="col-lg-12">
                  <div class="main-button">
                    <a href="/type/Action">load more</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>


        <div class="gaming-library">
          <div class="col-lg-12">
            <div class="heading-section">
              <h4><em>Random</em> Games</h4>
            </div>
            <#assign  randomIndex = 0>
            <#list all_game as game>
              <#if game_index % 2 == 0 && randomIndex < 6>
                <div class="item">
                  <ul>
                    <li><img src="${game.gameIcon}" alt="" class="templatemo-item"> </li>
                    <li><h4>Game Name</h4><span>${game.gameName}</span></li>
                    <li><h4>Category</h4><span>${game.gameCategory}</span></li>
                    <li><h4>Hot Played</h4><span>${game.gameHot}</span></li>
                    <li><h4>Date Issues</h4><span>${game.createTime?string("yyyy-MM-dd")}</span></li>
                    <li><div class="main-border-button border-no-active"><a href="/details/${game.id}">Start</a></div></li>
                  </ul>
                </div>
                <#assign  randomIndex++>
              </#if>

            </#list>
          </div>
          <div class="col-lg-12">
            <div class="main-button">
              <a href="/sort/new">View Your Library</a>
            </div>
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
<script src="/js/jquery.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/my/isotope.min.js"></script>
<script src="/js/my/owl-carousel.js"></script>
<script src="/js/my/tabs.js"></script>
<script src="/js/my/popup.js"></script>
<script src="/js/my/custom.js"></script>
</body>
</html>
