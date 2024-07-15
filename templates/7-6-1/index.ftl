<html lang="en"><head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Inkognito - private investigator HTML website template">
  <!-- fav icon -->
  

  <!-- bootstarp css file -->
  <link rel="stylesheet" href="/7-6-1/css/bootstrap.min.css">

  <!--  toasts file     -->
  <link rel="stylesheet" href="/7-6-1/css/toastr.min.css">

  <!-- fontawesome icons -->
  <link rel="stylesheet" href="/7-6-1/css/all.min.css">
  <link rel="stylesheet" href="/7-6-1/css/all.min1.css">

  <!-- main css file -->
  <link rel="stylesheet" href="/7-6-1/css/styles.css">
  <title>${service_name}</title>
</head>

<body class="body      pace-done"><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div><div class="pace  pace-inactive"><div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
  <div class="pace-progress-inner"></div>
</div>
<div class="pace-activity"></div></div>

  <!-- start scroll to top button -->
  <div id="progress" style="display: none; background: conic-gradient(rgb(31, 43, 227) 0%, rgb(215, 215, 215) 0%);">
    <span id="progress-value"><i class="fa-solid fa-arrow-up"></i></span>
  </div>
  <!-- end scroll to top button -->


  <!-- ======= start Header ======= -->
  <header class="header">
    <nav class="navbar navbar-expand-lg navbar-light">
      <div class="container">
        <a href="/">
          <h3 class="heading-3  primary-text">${service_name}</h3>
        </a>
        <!-- if you prefer to use an image as logo -->
        <!-- <a class="navbar-brand " href="#"><img src="images/logo/logo.png" class="logo" alt="LOGO"></a> -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fa-solid fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
          <ul class="navbar-nav ms-auto" id="navbar">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="/">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="/about_us">About Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="/privacy_policy">Privacy Policy</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="/term_of_use">Term of Use</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="/contact_us">Contact Us</a>
            </li>
          </ul>
          
        </div>
      </div>
    </nav>
  </header>


  
  <section class="portfolio section" id="portfolio">
    <div class="container d-flex flex-column gap-64">
      <form action="/search" method="get" class="custom-form search-form flex-fill me-3" role="search">
        <div class="input-group input-group-lg">
            <input name="s" value="" type="search" class="form-control" id="search"
                   placeholder="Search Game" aria-label="Search">
        </div>
      </form>
      <div class="d-flex gap-2 flex-wrap">
        <#list game_types as game_type>
                <a class="p-2" style="background-color: #1f2be3;border-radius: 10px;" aria-current="page" href="/type/${game_type}">${game_type}</a>
            </#list>
      </div>
      <div class="d-flex flex-lg-row flex-column justify-content-between align-items-start">
        <div class="heading d-flex flex-column col-lg-8 col-12 ">
          <h1 class="heading-1">Trending Games</h1>
        </div>
        <a href="/type/Action" class="learn-more">View All Games <i class="fa fa-arrow-right" aria-hidden="true"></i></a>
      </div>
      <div class="row g-4">
        <#assign hotValue = 0>
        <#list all_game as game>
          <#if 4000 <= game.gameHot && hotValue < 20>

          <div class="col-lg-4 col-12">
            <a href="/details/${game.id}" class="d-flex flex-column padding-16 gap-32 bg-box">
              <div class="img">
                <img src="${game.gamePreview}" class="b-radius" alt="portfolio">
              </div>
              <div class="d-flex justify-content-between align-items-start">
                <div class="d-flex flex-column">
                  <h4 class="heading-4">${game.gameName}</h4>
                  <p class="body-2">${game.gameDesc}</p>
                </div>
                <div class="icon-container" style="padding: 10px;">
                  <i class="fa fa-arrow-right unique-text icon-sm" aria-hidden="true"></i>
                </div>
              </div>
            </a>
          </div>
            <#assign hotValue++>
          </#if>
        </#list>
      </div>
    </div>
  </section>
  


  
  
  

  
  
  


  
  
  


  
  
  



  
  <section class="footer position-relative pt-5 mt-5 pb-4">
    <div class="container d-flex flex-column gap-16">
      
      <hr>
      <div class="row justify-content-between align-items-start g-4 py-5" style="
    justify-content: space-between;
">
        <div class="col-lg-6 col-md-6 col-12">
          <div class="d-flex flex-column gap-8">
            
            <h4 class="m-0 p-0">Copyright © 2024.Company ${service_name} All rights reserved.
            
            <p></p>
          </h4></div>
        </div>
        <div class="col-lg-2 col-md-6 col-12">
          <div class="d-flex flex-column gap-2">
            <h4>About</h4>
            <div class="d-flex flex-column gap-1">
              <a href="/about_us">About Us</a>
              <a href="/privacy_policy">Privacy Policy</a>
              <a href="/term_of_use">Term of Use</a>
              <a href="/contact_us">Contact Us</a>
            </div>
          </div>
        </div>
        
        
      </div>
    </div>
  </section>
  


  <!--  JQuery file     -->
  <script src="/7-6-1/js/jquery-3.6.1.min.js"></script>

  <!--  JQuery pace file     -->
  <script src="/7-6-1/js/pace.js"></script>

  <!--  JQuery bez file     -->
  <script src="/7-6-1/js/jquery.bez.js"></script>

  <!--  toasts file     -->
  <script src="/7-6-1/js/toastr.min.js"></script>

  <!--  JQuery TweenMax file     -->
  <script src="/7-6-1/js/TweenMax.min.js"></script>

  <!--  owl carousel file     -->
  <script src="/7-6-1/js/owl.carousel.min.js"></script>

  <!--  bootstrap bundle js file     -->
  <script src="/7-6-1/js/bootstrap.bundle.min.js"></script>

  <!--  counter     -->
  <script src="/7-6-1/js/jquery.counterup.min.js"></script>
  <script src="/7-6-1/js/jquery.waypoints.js"></script>

  <!--  main js file  -->
  <script src="/7-6-1/js/main.js"></script>



</body></html>