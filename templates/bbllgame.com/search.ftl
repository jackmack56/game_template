<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/bgame/bootstrap-icons.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/bgame/owl.carousel.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/bgame/owl.theme.default.min.css">
    <link href="/domain/${advert.domain}/css/bgame/templatemo-pod-talk.css" rel="stylesheet">
    ${advert.gaCode}


    <script async src="https://securepubads.g.doubleclick.net/tag/js/gpt.js"></script>
    <script>
        window.googletag = window.googletag || {cmd: []};
        googletag.cmd.push(function () {
            googletag.defineSlot('/112517806,23185333439/1131724918565', [[300, 250], [336, 280]], 'div-gpt-ad-1131724918565').addService(googletag.pubads());
            googletag.pubads().enableSingleRequest();
            googletag.enableServices();
        });
    </script>
</head>
<body>

<main>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand me-lg-5 me-0" href="/">
                <img src="/domain/${advert.domain}/logo.jpg" class="logo-image img-fluid" alt="${advert.serviceName}">
            </a>

            <form action="/search" method="get" class="custom-form search-form flex-fill me-3" role="search">
                <div class="input-group input-group-lg">
                    <input name="s" value="" type="search" class="form-control" id="search"
                           placeholder="Search Podcast" aria-label="Search">
                </div>
            </form>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-lg-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="/">Home</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="/about_us">About</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" id="navbarLightDropdownMenuLink" data-bs-toggle="dropdown"
                           aria-expanded="false">Category</a>
                        <ul class="dropdown-menu dropdown-menu-light" aria-labelledby="navbarLightDropdownMenuLink">

                            <#list game_types as type>
                                <li><a class="dropdown-item" href="/type/${type}">${type}</a></li>
                            </#list>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact_us">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <section class="hero-section">
        <div class="container">
        </div>
    </section>

    <section class="topics-section section-padding pb-0" id="section_3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="section-title-wrap mb-5">
                        <h4 class="section-title">
                            ${category ! ''}
                            Games </h4>
                    </div>
                </div>
                <div id='div-gpt-ad-1131724918565' style='min-width: 300px; min-height: 250px;'></div>
                <script>
                    googletag.cmd.push(function () {
                        googletag.display('div-gpt-ad-1131724918565');
                    });
                </script>


                <#list all_game as game>
                    <div class="col-lg-3 col-md-6 col-12 mb-4 mb-lg-0">
                        <div class="custom-block custom-block-overlay">
                            <a href="/details/${game.id}" class="custom-block-image-wrap">
                                <img src="${game.gamePreview}" loading="lazy"
                                     class="custom-block-image img-fluid" alt="">
                            </a>

                            <div class="custom-block-info custom-block-overlay-info">
                                <h5 class="mb-1">
                                    <a href="listing-page.html">
                                        ${game.gameName}
                                    </a>
                                </h5>
                                <p class="badge mb-0">${game.createTime?string("yyyy-MM-dd")}</p>
                            </div>
                        </div>
                    </div>
                </#list>
            </div>
        </div>
    </section>
</main>

<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-12 mb-5 mb-lg-5">
                <h6 class="site-footer-title mb-5 ">Contact</h6>
                <p>
                    <strong class="d-inline me-2">Email:</strong>
                    <a href="#">${advert.contactMail}</a>
                </p>
                <p>
                    Copyright © 2024 ${advert.serviceName}. All Rights Reserved
                </p>
            </div>
            <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                <h6 class="site-footer-title mb-5 "></h6>
                <ul class="site-footer-links">
                    <li class="site-footer-link-item mb-5 ml-5">
                        <a href="/about_us" class="site-footer-link">About Us</a>
                    </li>
                    <br>
                    <li class="site-footer-link-item mb-5 ">
                        <a href="/privacy_policy" class="site-footer-link">Privacy Policy</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3 col-md-6 col-12 mb-4 mb-md-0 mb-lg-0">
                <h6 class="site-footer-title mb-5 "></h6>
                <ul class="site-footer-links">
                    <li class="site-footer-link-item mb-5 ml-5">
                        <a href="/term_of_use" class="site-footer-link">Terms of Use</a>
                    </li>
                    <br>
                    <li class="site-footer-link-item mb-5">
                        <a href="/contact_us" class="site-footer-link">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="/domain/${advert.domain}/js/bootstrap.bundle.min.js"></script>
<script src="/domain/${advert.domain}/js/bgame/owl.carousel.min.js"></script>
<script src="/domain/${advert.domain}/js/bgame/custom.js"></script>
</body>
</html>
