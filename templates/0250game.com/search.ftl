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

  <div class="main-banner">

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
        </div>
        <!-- list -->
        <#list all_game as game>
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
  <script src="https://cdn.jsdelivr.net/npm/jquery.min.js@3.5.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap.min.js@3.3.5/bootstrap.min.js"></script>
  <script src="/${service_name}/js/isotope.min.js"></script>
  <script src="/${service_name}/js/owl-carousel.js"></script>
  <script src="/${service_name}/js/counter.js"></script>
  <script src="/${service_name}/js/custom.js"></script>
</body>

</html>