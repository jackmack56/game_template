<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="${advert.content}"/>
  <meta name="keywords" content="${advert.keywords}"/>
  <title>${service_name}</title>
  <link rel="stylesheet" href="/${service_name}/css/bootstrap.min.css">
  <link rel="stylesheet" href="/${service_name}/css/toastr.min.css">
  <link rel="stylesheet" href="/${service_name}/css/all.min.css">
  <link rel="stylesheet" href="/${service_name}/css/all.min1.css">
  <link rel="stylesheet" href="/${service_name}/css/styles.css">
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
              <a class="nav-link" aria-current="page" href="/about_us.html">About Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="/privacy_policy.html">Privacy Policy</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="/term_of_use.html">Terms of Use</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="/contact_us.html">Contact Us</a>
            </li>
          </ul>
          
        </div>
      </div>
    </nav>
  </header>

  <div class="breadcrumb container bg-box padding-32 b-radius d-flex flex-column justify-content-center align-items-center mb-5">
    <div class="d-flex flex-column justify-content-center align-items-center text-center gap-8">
        <h2 class="heading-1">${game.gameName}</h2>
        <div class="row" style="width: 100%;">
          <div class="">
            <div class="d-flex flex-column padding-16 gap-32 bg-box">
              <div class="img">
                <img src="${game.gamePreview}" class="b-radius" alt="portfolio">
              </div>
              <div>
                Players: ${game.gameHot}  <span style="padding-left: 30px;">Type: ${game.gameCategory}</span>
              </div>
              <div class="d-flex justify-content-between align-items-start">
                <div class="d-flex flex-column" style="width: 100%;">
                  <a href="${game.gameUri}">
                    <div class="icon-container" style="padding: 20px;">
                      PLAY NOW 
                      <i class="fa fa-arrow-right unique-text icon-sm" aria-hidden="true"></i>
                    </div>
                  </a>
                </div>
                
              </div>
            </div>
          </div>
        </div>
    </div>
    <div class="d-flex flex-column gap-8" style="padding-top: 40px;">
      <h1>Description</h1>
      <p class="body-2" style="height: auto !important; max-height: 200px;overflow: auto;">${game.gameDesc}</p>
    </div>
</div>
  
  <section class="portfolio section" id="portfolio">
    <div class="container d-flex flex-column gap-64">
      <div class="d-flex flex-lg-row flex-column justify-content-between align-items-start">
        <div class="heading d-flex flex-column col-lg-8 col-12 ">
          <h1 class="heading-1">${category ! ''} Games</h1>
        </div>
      </div>
      <div class="row g-4">
        <#list alikeGame as game>
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

            <h4 class="m-0 p-0">
              <p>Copyright © 2024 <a href="/">${service_name}</a>. All Rights Reserved.</p>
              <p></p>
            </h4>
        </div>
        <div class="col-lg-2 col-md-6 col-12">
          <div class="d-flex flex-column gap-2">
            <h4>About</h4>
            <div class="d-flex flex-column gap-1">
              <a href="/about_us">About Us</a>
              <a href="/privacy_policy">Privacy Policy</a>
              <a href="/term_of_use">Terms of Use</a>
              <a href="/contact_us">Contact Us</a>
            </div>
          </div>
        </div>
        
        
      </div>
    </div>
  </section>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="/${service_name}/js/pace.js"></script>
<script src="/${service_name}/js/jquery.bez.js"></script>
<script src="/${service_name}/js/toastr.min.js"></script>
<script src="/${service_name}/js/TweenMax.min.js"></script>
<script src="/${service_name}/js/owl.carousel.min.js"></script>
<script src="/${service_name}/js/bootstrap.bundle.min.js"></script>
<script src="/${service_name}/js/jquery.counterup.min.js"></script>
<script src="/${service_name}/js/jquery.waypoints.js"></script>
<script src="/${service_name}/js/main.js"></script>
</body></html>