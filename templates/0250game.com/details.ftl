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
  <link rel="stylesheet" href="/domain/${advert.domain}/css/fontawesome.css">
  <link rel="stylesheet" href="/domain/${advert.domain}/css/templatemo-lugx-gaming.css">
  <link rel="stylesheet" href="/domain/${advert.domain}/css/owl.css">
  <link rel="stylesheet" href="/domain/${advert.domain}/css/animate.css">
  <link rel="stylesheet" href="/domain/${advert.domain}/css/swiper-bundle.min.css">
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
  <header class="header-area header-sticky">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            <a href="/" class="logo">
              <img src="/domain/${advert.domain}/logo.png" alt="" style="width: 30%">
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
      <div class="row">
        <div class="col-lg-6">
          <div style="display: flex;gap: 10px;font-size: 12px;justify-content: center;padding-top: 50px;">
            <p>Email: ${advert.contactMail}</a> <br>
              Copyright © 2024 <a href="/">${service_name}</a>
              Company. All rights reserved.
            </p>
          </div>
        </div>
        <div class="col-lg-3">
          <div style="display: flex;gap: 10px;font-size: 12px;justify-content: center;padding-top: 50px;">
            <p><a style="color: white !important;" href="/about_us">About Us</a></p>
            <p><a style="color: white !important;" href="/privacy_policy">Privacy Policy</a></p>
          </div>
        </div>

        <div class="col-lg-3">
          <div style="display: flex;gap: 10px;font-size: 12px;justify-content: center;padding-top: 50px;">
            <p><a style="color: white !important;" href="/term_of_use">Terms of Use</a></p>
            <p><a style="color: white !important;" href="/contact_us">Contact Us</a></p>
          </div>
        </div>
      </div>
    </div>
  </footer>

  <script src="https://cdn.jsdelivr.net/npm/jquery.min.js@3.5.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap.min.js@3.3.5/bootstrap.min.js"></script>
  <script src="/domain/${advert.domain}/js/isotope.min.js"></script>
  <script src="/domain/${advert.domain}/js/owl-carousel.js"></script>
  <script src="/domain/${advert.domain}/js/counter.js"></script>
  <script src="/domain/${advert.domain}/js/custom.js"></script>
</body>

</html>