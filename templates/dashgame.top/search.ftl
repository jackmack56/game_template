<html lang="en" style="font-size: 58.5938px;">

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
  <link href="/domain/${advert.domain}/css/h5gamesclub_home.css" rel="stylesheet">
  <link href="/domain/${advert.domain}/css/h5gamesclub_label.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  ${advert.gaCode}
</head>

<body>
  <link rel="stylesheet" href="/domain/${advert.domain}/css/home.css"><noscript><iframe
      src="https://www.googletagmanager.com/ns.html?id=GTM-KXXT9M9F" height="0" width="0"
      style="display:none;visibility:hidden"></iframe></noscript>
  <div class="main">
    <div class="header">
      <div class="icon-logo"><a href="/"><img class="pmt" src="/domain/${advert.domain}/logo.png" alt=""></a></div>
      <#assign hotValue=0>
        <#list game_types as type>
          <#if hotValue < 4>
            <a href="/type/${type}" class="label-container">
              <span class="label-name">${type}</span>
            </a>
            <#assign hotValue++>
          </#if>
        </#list>
        <li class="label-container dropdown" style="z-index: 10;">
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
    <div class="content">
      <div class="game-wall-footer clear">
        <#list all_game as game>
          <a
            href="/details/${game.id}" class="game"
            style="display: inline;"><img class="pic lazyload fmt" style="object-fit: cover;"
            data-src="${game.gamePreview}"> <span class="name">${game.gameName}</span>
          </a>
        </#list>
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