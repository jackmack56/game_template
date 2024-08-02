<html lang="en" style="font-size: 315.312px;">
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
  <script src="https://res.h5gamesclub.com/plugins/ad-cross/index.js"></script>
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
  <link href="/domain/${advert.domain}/css/h5gamesclub_game.css" rel="stylesheet">
  <link rel="stylesheet" href="/domain/${advert.domain}/css/game.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  ${advert.gaCode}
</head>

<body>
  <link rel="stylesheet" href="/domain/${advert.domain}/css/home.css">
  <div class="main">
    <div class="header">
      <div class="icon-logo"><a href="/"><img class="pmt"
            src="/domain/${advert.domain}/taptoplay_logo.webp" alt=""></a></div>
      <#assign hotValue=0>
        <#list game_types as type>
          <#if hotValue < 4>
            <a href="/type/${type}" class="label-container">
              <span class="label-name">${type}</span>
            </a>
            <#assign hotValue++>
          </#if>
        </#list>
        <li class="label-container dropdown" style="z-index: 60;">
          <a data-toggle="dropdown" aria-expanded="false"><span class="label-name">More&nbsp;›</span></a>
          <div class="dropdown-menu"
            style="position: absolute;padding:20px;min-width: 400px;color: black;border-radius: 10px;">
            <#list game_types as type>
              <a class="label-name" style="color: rgb(39, 70, 195);padding-left: 4px;padding-right: 4px;"
                href="/type/${type}">
                <span>${type}</span>
              </a>
            </#list>
          </div>
        </li>
    </div>
    <div class="content" style="
      justify-content: center;
  ">

      <div class="c-3">
        <div class="game-window" style="
    width: 100%;
">
          <div class="game-container">
            <div class="play-container">
              <div class="play-box"><img class="lazyload img fmt info-pic" src="${game.gamePreview}" alt="Pixel World">
                <span class="game-name">${game.gameName}</span>
                <div class="play-button"><a href="${game.gameUri}" class="text">PLAY NOW</a></div>
              </div>
            </div>
            <div class="game-load">
              <div class="loadEffect"><span></span> <span></span> <span></span> <span></span> <span></span>
                <span></span> <span></span> <span></span> <span></span> <span></span> <span></span> <span></span>
              </div>
              <div class="load-warp"><span class="progress">0%</span></div>
            </div>
            <div class="game-player landscape">
              <div class="player-float">
                <div class="multi-btn"><i class="icon-back sprite"></i> <i class="icon-collection sprite"
                    style="display: inline;"></i></div>
              </div>
              <div class="player-container"><iframe id="gameIframe"
                  src="https://html5.gamedistribution.com/09b11210ce0d4f75962fea7bc86e3bd6/?gd_sdk_referrer_url=https%3A%2F%2Fwww.h5gamesclub.com%2Fh5gamesclub%2Fplay%2Fpixelworld%2Findex.html%3Ffrom%3Dgames"
                  scrolling="no" allowfullscreen="" frameborder="0"></iframe>
                <div class="full-mask"></div>
              </div>
            </div>
          </div>
        </div>
        <div class="more-games">
          <div class="banner">
            <div class="banner-left"></div>
            <div class="banner-center">
              <h3 class="title-text">More Online Games, No Download</h3>
            </div>
            <div class="banner-right"></div>
          </div>
          <div class="game-list">

            <#assign hotValue=0>
            <#list alikeGame as game>
                <div class="game-box" style="display: block;"><i class="icon-h5 sprite"></i> <a class="game"
                  href="/details/${game.id}"><img class="pic lazyload fmt"
                    data-src="${game.gamePreview}"> <span class="name">${game.gameName}</span></a></div>
            </#list>
            

          </div>
        </div>
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