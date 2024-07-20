<!DOCTYPE html>
<html lang="en">
<head>
  <meta name="description" content="${advert.content}" />
  <meta name="keywords" content="${advert.keywords}" />
  <link rel="stylesheet" type="text/css"
        href="https://fonts.googleapis.com/css?keyAIzaSyBXqXcdvinZsgURKUWnSn7f0dQzCytS0YM&amp;family=Lato:400,700,900,400italic">
  <title>${advert.title}</title>
  <meta http-equiv="Content-type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
  <meta name="apple-mobile-web-app-capable" content="yes">
  <link rel="stylesheet" href="/${service_name}/css/tools.css">
  <link rel="stylesheet" href="/${service_name}/css/bulma.min.css">
  <link rel="stylesheet" href="/${service_name}/css/consent.css">
  <link rel="stylesheet" href="/${service_name}/css/common.css">
  <script src="/${service_name}/js/jquery-3.7.1.min.js"></script>
  <script src="/${service_name}/js/jquery.validate.js"></script>
</head>

<body>
  <nav class="navbar is-info" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <a class="navbar-item" href="/">
        <h1 class="is-size-4">${service_name}</h1>
      </a>
      <a role="button" class="navbar-burger is-active" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>
    <div id="navbarBasicExample" class="navbar-menu is-active">

      <div class="navbar-end">
        <a class="navbar-item navbar-bigger-font" href="/contact_us">
          &nbsp;&nbsp;&nbsp;Contact Us&nbsp;&nbsp;&nbsp;
        </a>
      </div>
    </div>
  </nav>
  <script>
    $(document).ready(function () {

      $(".navbar-burger").click(function () {


        $(".navbar-burger").toggleClass("is-active");
        $(".navbar-menu").toggleClass("is-active");

      });
    });  
  </script>
  <section class="section">
    <h1 class="title">${game.gameName}</h1>
    
  </section>
  <section class="section">
    <div class="columns">
      <div class="column">
        <div class="card">
          <div class="card-content" id="game-window-box">
            
            <center>
              <div style="">
                <img src="${game.gamePreview}"><br>
                <a href="${game.gameUri}" target="_blank" class="button is-large is-danger">Play Now</a>
              </div>
            </center>
            <div class="content">
              <span class="tag is-info is-light is-medium"><a href="/type/${game.gameCategory}">${game.gameCategory}</a></span>
            </div>
          </div>
        </div>
        <br>
        <div class="card">
          
        </div>
        <br>
        <div class="card">
          <div class="card-content">
            <p class="title is-4">Description</p>
            <div class="content" style="max-height: 200px; overflow: auto;">
              <p>
                ${game.gameDesc}
              </p>
            </div>
          </div>
        </div>
        <br>
        <div class="card">
          <div class="card-content">
            <p class="title is-4">Related games</p>
            <p>Check out these titles too</p>
            <div class="container" id="related_games" style="margin:0 !important">


              <#list alikeGame as game>
                <div class="columns">
                  <div class="column is-5"><a href="/details/${game.id}"><img style="margin-top:0.3em;width: 100%;aspect-ratio: 2/1;object-fit: cover;" src="${game.gamePreview}"></a></div>
                  <div class="column is-7"><a class="is-size-4" style="margin-top:-1.5em !important;" href="/details/${game.id}">${game.gameName}</a><br><br>
                    <p class="is-size-6"><span class="tag is-link is-medium">${game.gameHot} ❤</span></p>
                  </div>
                </div>
              </#list>
              
            </div>
          </div>
        </div>
        <br>
      </div>

    </div>
  </section>
  <br>
  <div class="footer__nav">
    <ul style="display: flex;gap: 20px;flex-wrap: wrap; justify-content: center; padding-left: 20px;padding-right: 20px;padding-bottom: 20px;">
        <li class="active"><a href="/">Homepage</a></li>
        <li><a href="/about_us">About Us</a></li>
        <li><a href="/privacy_policy">Privacy Policy</a></li>
        <li><a href="/term_of_use">Term of Use</a></li>
        <li><a href="/contact_us">Contact Us</a></li>
    </ul>
</div>
  <style>
    ul {
      margin-left: 1em !important;
      margin-top: 0em !important;
      margin-bottom: 0em !important;
    }
  </style>

</body><div id="immersive-translate-popup" style="all: initial"></div></html>