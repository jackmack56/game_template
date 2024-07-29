<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
  <link rel="stylesheet" href="/domain/${advert.domain}/css/style.min.css?ver=140">
  <meta name="description" content="${advert.content}" />
  <meta name="keywords" content="${advert.keywords}" />
  <meta name="author" content="">
  <title>${advert.title}</title>
</head>

<body itemscope="itemscope" itemtype="https://schema.org/WebPage">
  <header>
    <div class="container-fluid">
      <div class="row">
        <div class="col-12 col-lg-6 text-center text-lg-left my-2" itemscope="itemscope"
          itemtype="https://schema.org/Organization"><a href="/" itemprop="name" title="Arcade Spot">
            <div class="as-logo-holder mx-auto mx-lg-0"><img src="https://arcadespot.com/images/logo-original.png"
                alt="Arcade Spot" width="424" height="123"></div>
          </a></div>
        <div class="col-12 col-lg-6">
          <div class="sub-nav text-center text-lg-right mt-0 mt-lg-4 mb-2"></div>
          <form class="row float-lg-right mb-3" role="search" action="/search" method="get">
            <div class="input-group col"><input class="form-control py-2 border-right-0 border" type="search"
                placeholder="Search for games" aria-label="Search" id="search-input" name="s"><span
                class="input-group-append"><button class="btn btn-secondary border-left-0 border as-search-button"
                  type="submit"><svg width="16" height="16" viewBox="0 0 512 512" style="margin-top:-3px;">
                    <path
                      d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"
                      style="fill:grey;"></path>
                  </svg></button></span></div>
          </form>
        </div>
      </div>
      <nav>
        <ul class="main-nav pl-0 pl-lg-3">
          <li class="menu-item active"><a href="/"><span>Home</span></a></li>
          <#assign hotValue=0>
            <#list game_types as type>
              <#if hotValue < 4>
                <li class="menu-item d-none d-xl-table-cell">
                  <a href="/type/${type}">
                    <span>${type}</span>
                  </a>
                </li>
                <#assign hotValue++>
              </#if>
            </#list>

            <li class="menu-item dropdown" style="z-index: 10;">
              <a data-toggle="dropdown" aria-expanded="false"><span class="text-white">More&nbsp;›</span></a>
              <div class="dropdown-menu" style="position: absolute;">
                <#list game_types as type>
                  <a href="/type/${type}">
                    <span>${type}</span>
                  </a>
                </#list>
              </div>
            </li>
        </ul>
      </nav>
    </div>
  </header>
  <main role="main" class="as-wrapper">
    <div class="mx-auto text-center mt-3 mb-3"></div>
    <div class="container-fluid">
      <h1 class="h3 as-main-title text-center mb-4">Games - Play Free Online Games</h1>
      <div class="as-game-container mt-4 mb-4">
        <div class="as-game-main">
          <ul class="as-game-list">
            <#list all_game as game>
            <#if  game.gameHot < 4200>
                <li><a href="/details/${game.id}" class="as-game-box"><img class="lozad"
                  data-src="${game.gamePreview}" width="164" height="164">
                <div class="as-game-box-title"  style="width: 100%;
                            height: 3rem;
                            white-space: normal; overflow: hidden; text-overflow: ellipsis;">${game.gameName}</div><span
                  class="badge badge-danger as-game-box-badge">${game.gameCategory}</span>
              </a></li>
            </#if>
        </#list>
            
          </ul>
        </div>
      </div>
      <div class="py-4"></div>
      <div class="as-generic-box px-3 py-2 mx-3 mb-4 shadow-sm rounded-lg">
        <p>${advert.content}
        </p>
      </div>
    </div>
  </main>
  <footer class="py-2">
    <div class="container-fluid">
      <div class="row text-center align-items-center">
        <div class="col-12 col-md-9">
          <ul class="nav justify-content-center justify-content-md-start align-items-center">
            <li class="nav-item"><a class="nav-link active pl-0" href="/"><img
                  src="https://arcadespot.com/images/logo-bottom.png" alt="Arcade Spot" width="144" height="45"
                  loading="lazy"></a></li>
            <li class="w-100 d-block d-sm-none"></li>
            <li class="nav-item"><a class="nav-link" href="/about_us"><i class="fas fa-gamepad"></i>
                About</a></li>
            <li class="nav-item"><a class="nav-link" href="/privacy_policy"><i class="fas fa-envelope"></i> Privacy
                Policy</a></li>
            <li class="nav-item"><a class="nav-link" href="/term_of_use"><i class="fas fa-question-circle"></i> Terms of
                Use</a></li>
            <li class="nav-item"><a class="nav-link" href="/contact_us"><i class="fas fa-user-shield"></i> Contact
                Us</a></li>
          </ul>
        </div>
        <div class="col-12 col-md-3 mt-2 mt-md-0 mb-2 mb-md-0 text-md-right">Copyright &copy; 2024 ${service_name}. All Rights Reserved.</div>
      </div>
    </div>
  </footer>
  <script src="/domain/${advert.domain}/js/lozad.min.js" defer=""></script>
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
    crossorigin="anonymous"></script>
  <script src="/domain/${advert.domain}/js/script.min.js?v=162" defer=""></script>
</body>

</html>