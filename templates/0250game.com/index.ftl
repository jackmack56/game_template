<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
    rel="stylesheet">
  <meta name="description" content="${advert.content}" />
  <meta name="keywords" content="${advert.keywords}" />
  <title>${advert.title}</title>
  <!-- Bootstrap core CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="/${service_name}/css/fontawesome.css">
  <link rel="stylesheet" href="/${service_name}/css/templatemo-lugx-gaming.css">
  <link rel="stylesheet" href="/${service_name}/css/owl.css">
  <link rel="stylesheet" href="/${service_name}/css/animate.css">
  <link rel="stylesheet" href="/${service_name}/css/swiper-bundle.min.css">
</head>
<body>
  <div id="js-preloader" class="js-preloader loaded">
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
            <a href="/" class="logo">
              <h1>
                ${service_name}
              </h1>
            </a>
            <div style="overflow: auto;">
              <ul class="nav">
                <#list game_types as game_type>
                  <li><a href="/type/${game_type}" class="active">${game_type}</a></li>
                </#list>
              </ul>
            </div>
            <a class="menu-trigger">
              <span>Menu</span>
            </a>
          </nav>
        </div>
      </div>
    </div>
  </header>

  <div class="main-banner">

  </div>



  <div class="section trending">
    <div class="container">
      <div class="row">
        <form action="/search" method="get" class="custom-form search-form flex-fill me-3" role="search">
          <div class="input-group input-group-lg">
              <input name="s" value="" type="search" class="form-control" id="search"
                     placeholder="Search Game" aria-label="Search">
          </div>
      </form>
        <div class="col-lg-6">
          <div class="section-heading">
            <h2>News Games</h2>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="main-button">
            <a href="/type/Action">View All</a>
          </div>
        </div>
        <#assign newValue = 0>
        <#list new_game as game>
          <#if newValue < 8>
            <div class="col-lg-3 col-md-6">
              <div class="item">
                <div class="thumb">
                  <a href="/details/${game.id}"><img src="${game.gamePreview}" alt=""></a>
                </div>
                <div class="down-content">
                  <span class="category">${game.gameCategory}</span>
                  <h4>${game.gameName}</h4>
                  <a href="/details/${game.id}"><i class="fa fa-play"></i></a>
                </div>
              </div>
            </div>
          </#if>
          <#assign newValue ++>
        </#list>
      </div>
    </div>
  </div>

  <div class="section most-played">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="section-heading">
            <h2>Puzzle Played</h2>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="main-button">
            <a href="/type/Puzzle">View All</a>
          </div>
        </div>
        <#assign hotValue = 0>
        <#list all_game as game>
          <#if "Puzzle" == game.gameCategory && hotValue < 12>
          <div class="col-lg-2 col-md-6 col-sm-6">
            <div class="item">
              <div class="thumb">
                <a href="/details/${game.id}"><img src="${game.gamePreview}" alt=""></a>
              </div>
              <div class="down-content">
                <span class="category">${game.gameCategory}</span>
                <h4>${game.gameName}</h4>
                <a href="/details/${game.id}">Explore</a>
              </div>
            </div>
          </div>
            <#assign hotValue++>
          </#if>
        </#list>
      </div>
    </div>
  </div>


  <div class="section most-played">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="section-heading">
            <h2>Action Played</h2>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="main-button">
            <a href="/type/Action">View All</a>
          </div>
        </div>
        <#assign actionValue = 0>
        <#list all_game as game>
          <#if "Action" == game.gameCategory && actionValue < 12>
            <div class="col-lg-2 col-md-6 col-sm-6">
              <div class="item">
                <div class="thumb">
                  <a href="/details/${game.id}"><img src="${game.gamePreview}" alt=""></a>
                </div>
                <div class="down-content">
                  <span class="category">${game.gameCategory}</span>
                  <h4>${game.gameName}</h4>
                  <a href="/details/${game.id}">Explore</a>
                </div>
              </div>
            </div>
            <#assign actionValue++>
          </#if>
        </#list>
      </div>
    </div>
  </div>


  <div class="section most-played">
    <div class="container">
      <p>
        ${advert.content}
      </p>
    </div>
  </div>



  <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div style="display: flex;gap: 10px;font-size: 12px;justify-content: center;padding-top: 50px;">
          <p>Email: ${advert.contactMail}</a> <br>
            Copyright © 2024 <a href="/">${service_name}</a>. All Rights Reserved.
          </p>
          </div>
        </div>
        <div class="col-lg-3 mt-5">
            <p><a style="color: white !important;" href="/about_us">About Us</a></p>
            <p><a style="color: white !important;" href="/privacy_policy">Privacy Policy</a></p>
        </div>

        <div class="col-lg-3 mt-5">
            <p><a style="color: white !important;" href="/term_of_use">Terms of Use</a></p>
            <p><a style="color: white !important;" href="/contact_us">Contact Us</a></p>
        </div>
      </div>
    </div>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/jquery.min.js@3.5.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap.min.js@3.3.5/bootstrap.min.js"></script>
  <script src="/${service_name}/js/isotope.min.js"></script>
  <script src="/${service_name}/js/owl-carousel.js"></script>
  <script src="/${service_name}/js/counter.js"></script>
  <script src="/${service_name}/js/custom.js"></script>
</body>
</html>