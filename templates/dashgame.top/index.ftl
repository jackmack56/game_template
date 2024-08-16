<html lang="en" style="font-size: 191.094px;">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta name="description" content="${advert.content}"/>
  <meta name="keywords" content="${advert.keywords}"/>
  <title>${advert.title}</title>
  <meta name="description"
    content="Share &amp;  Play Games at H5gamesclub.com! Get the game walkthroughs at H5gamesclub.com Now!">
  <script src="/domain/${advert.domain}/js/lazyload.min.js"></script>
  <script>document.documentElement.style.fontSize = window.innerWidth / 640 * 100 + 'px';
  </script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <style>
    .header {
      height: 56px;
    }
    .ad-cross-container {
      margin: 0 auto;
    }

    .ad-cross-container.square {
      height: 100%;
    }

    .ad-cross-container.ver-rect {
      max-width: 160px;
    }

    .ad-cross-container img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: contain;
    }
  </style>
  <style>
    .ad-cross-container {
      margin: 0 auto;
    }

    .ad-cross-container.square {
      height: 100%;
    }

    .ad-cross-container.ver-rect {
      max-width: 160px;
    }

    .ad-cross-container img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: contain;
    }
  </style>
  <style>
    .ad-cross-container {
      margin: 0 auto;
    }

    .ad-cross-container.square {
      height: 100%;
    }

    .ad-cross-container.ver-rect {
      max-width: 160px;
    }

    .ad-cross-container img {
      display: block;
      width: 100%;
      height: 100%;
      object-fit: contain;
    }
  </style>
  <link href="/domain/${advert.domain}/css/h5gamesclub_home.css" rel="stylesheet">
  ${advert.gaCode}
</head>

<body>
  <link rel="stylesheet" href="/domain/${advert.domain}/css/home.css">
  <div class="main">
    <div class="header">
      <div class="icon-logo" style="display: flex;">
        <a href="/"><img class="pmt" src="/domain/${advert.domain}/logo.png" alt="" style="width: 2rem; margin-left: 0.4rem"></a>
      </div>
      
    </div>
    <div class="content">
      <div style="font-size: 16px;padding-top: 20px;">
        <#list game_types as type>
                  <a style="line-height: 2 ; color: #9a5e41!important;padding-left: 20px;padding-right: 20px;background-color: #fdc;border: 1px solid #f2c7b1;" href="/type/${type}">
                    <span>${type}</span>
                  </a>
                </#list>
      </div>
      <div class="popularGames">
        <div class="banner"><span class="text">Most Popular Games</span>
        </div>
        <div class="contentGames">
          <#list all_game as game>
            <#if  game.gameHot < 4200>
              <a class="game-picContent newGame"
              href="/details/${game.id}">
            <div class="p-game"><img class="pic lazyload fmt"
                src="${game.gamePreview}" style="object-fit: cover;"
                data-src="${game.gamePreview}"></div>
            <div class="text">${game.gameName}</div>
          </a>
            </#if>
        </#list>
          
        </div>
      </div>
      <div class="topGames">
        <div class="banner"><span class="text">Top Games</span></div>
        <div class="topGamesList">
          <#list all_game as game>
            <#if  4200 < game.gameHot>
          <a class="ttt newGame"
          href="/details/${game.id}">
            <div class="topGameContainer">
              <div class="t-game">
                <img class="pic lazyload fmt" style="object-fit: cover;"
                data-src="${game.gamePreview}"></div>
              <div class="content-text" title="Toca Life World: Build a Story">
                <span class="text">${game.gameName}</span>
              </div>
            </div>
          </a>
            </#if>
        </#list>
        </div>
      </div>
    </div>



    <div class="footer" style="background: #ffc107; ">
      <div class="bottom-navbar" style="background: #ffc107; ">
          <p> ${advert.content}</p>
          <p >Email: ${advert.contactMail}</a> <br>
            Copyright © 2024 <a href="/">${advert.serviceName}</a>. All Rights Reserved.
          </p>
      </div>
    </div>
    <div class="footer">
      <div class="bottom-navbar">
        <a href="/privacy_policy" target="_blank">Privacy Policy</a>
        <a href="/term_of_use" target="_blank">Terms of Service</a>
        <a href="/contact_us" target="_blank">Contact Us</a>
        <a href="/about_us" target="_blank">About Us</a>
      </div>
    </div>
    <div class="float">
      <div class="cookie-confirm"></div>
    </div>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
    crossorigin="anonymous"></script>
    <script>
      lazyload()
    </script>
</body>

</html>