<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&amp;display=swap"
    rel="stylesheet">

  <title>${service_name}</title>

  <!-- Bootstrap core CSS -->
  <link href="/css/bootstrap.min.css" rel="stylesheet">


  <!-- Additional CSS Files -->
  <link rel="stylesheet" href="/css/agame.subfg.cn/fontawesome.css">
  <link rel="stylesheet" href="/css/agame.subfg.cn/templatemo-lugx-gaming.css">
  <link rel="stylesheet" href="/css/agame.subfg.cn/owl.css">
  <link rel="stylesheet" href="/css/agame.subfg.cn/animate.css">
  <link rel="stylesheet" href="/css/agame.subfg.cn/swiper-bundle.min.css">

</head>

<body>

  <!-- ***** Preloader Start ***** -->
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
  <!-- ***** Preloader End ***** -->

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            <!-- ***** Logo Start ***** -->
            <a href="/" class="logo">
              <h1>
                ${service_name}
              </h1>
            </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Menu Start ***** -->
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
            <!-- ***** Menu End ***** -->
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->

  <div class="page-heading header-text">
    <div class="container">

    </div>
  </div>


  <div class="single-product section">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="left-image">
            <img src="${game.gamePreview}" alt="">
          </div>
        </div>
        <div class="col-lg-6 align-self-center">
          <h4>${game.gameName}</h4>
          <form id="qty" action="#">
            <button type="submit"><a href="${game.gameUri}" style="color: white;"><i class="fa fa-play"></i> PLAY NOW</a></button>
          </form>
          <ul>
            <li><span>Players:</span> ${game.gameHot}</li>
            <li><span>eCategory:</span> ${game.gameCategory}</li>
          </ul>
        </div>
        <div class="col-lg-12">
          <div class="sep"></div>
        </div>
      </div>
    </div>
  </div>

  <div class="more-info">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="tabs-content">
            <div class="row">
              <div class="nav-wrapper ">
                <ul class="nav nav-tabs" role="tablist">
                  <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="description-tab" data-bs-toggle="tab"
                      data-bs-target="#description" type="button" role="tab" aria-controls="description"
                      aria-selected="true">Description</button>
                  </li>
                </ul>
              </div>
              <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="description" role="tabpanel"
                  aria-labelledby="description-tab" style="max-height: 200px;overflow: auto;">
                  ${game.gameDesc}
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="section trending">
    <div class="container">
      <div class="row">
        <div class="col-lg-6">
          <div class="section-heading">
            <h6>Trending</h6>
            <h2>Trending Games</h2>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="main-button">
            <a href="/type/${game.gameCategory}">View All</a>
          </div>
        </div>
        <!-- list -->
        <#list alikeGame as game>
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
        </#list>
      </div>
    </div>
  </div>

  <footer>
    <div class="container">
      <div class="col-lg-12">
        <div style="display: flex;gap: 10px;font-size: 12px;justify-content: center;padding-top: 50px;">
          <a style="color: white !important;" href="/about_us.html">About Us</a>
          <a style="color: white !important;" href="/privacy_policy.html">Privacy Policy</a>
          <a style="color: white !important;" href="/term_of_use.html">Term of Use</a>
          <a style="color: white !important;" href="/contact_us.html">Contact Us</a>
        </div>
        <p>Copyright © 2024.Company ${service_name} All rights reserved.</p>
      </div>
    </div>
  </footer>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="/js/jquery.min.js"></script>
  <script src="/js/bootstrap.min.js"></script>
  <script src="/js/agame.subfg.cn/isotope.min.js"></script>
  <script src="/js/agame.subfg.cn/owl-carousel.js"></script>
  <script src="/js/agame.subfg.cn/counter.js"></script>
  <script src="/js/agame.subfg.cn/custom.js"></script>
</body>

</html>