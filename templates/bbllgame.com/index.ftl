<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${advert.content}" />
    <meta name="keywords" content="${advert.keywords}" />
    <meta name="author" content="">
    <title>${advert.title}</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/bgame/bootstrap-icons.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/bgame/owl.carousel.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/bgame/owl.theme.default.min.css">
    <link href="/domain/${advert.domain}/css/bgame/templatemo-pod-talk.css" rel="stylesheet">
</head>

<body>

<main>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand me-lg-5 me-0" href="/">
                <img src="/domain/${advert.domain}/logo.jpg" class="logo-image img-fluid" alt="${service_name}">
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
        <div class="row">

            <div class="col-lg-12 col-12">
            </div>
        </div>
    </section>

    <section class="topics-section section-padding pb-0" id="section_3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="section-title-wrap">
                        <h4 class="section-title">New Games</h4>
                    </div>
                </div>
                <#list new_game as game>
                    <#if game_index < 20>
                        <div class="col-lg-3 col-md-6 col-6 mb-4 mb-lg-0">
                            <div class="custom-block custom-block-overlay">
                                <a href="/details/${game.id}" class="custom-block-image-wrap">
                                    <img src="${game.gamePreview}"
                                         class="custom-block-image img-fluid" alt="">
                                </a>

                                <div class="custom-block-info custom-block-overlay-info">
                                    <h5 class="mb-1">
                                        <a href="/details/${game.id}">
                                            ${game.gameName}
                                        </a>
                                    </h5>
                                    <p class="badge mb-0">${game.createTime?string("yyyy-MM-dd")}</p>
                                </div>
                            </div>
                        </div>
                    </#if>
                </#list>
            </div>
        </div>
    </section>

    <section class="latest-podcast-section section-padding pb-0" id="section_2">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-lg-12 col-12">
                    <div class="section-title-wrap mb-5">
                        <h4 class="section-title">Popular Games</h4>
                    </div>
                </div>

                <#assign hotGame = 0>
                <#list all_game as game>
                <#if hotGame < 6 && 4200 <= game.gameHot>
                <#if game_index % 2 == 0>
                <div class="col-lg-6 col-12 mb-4 mb-lg-2">
                    </#if>
                    <#if game_index % 2 == 1>
                    <div class="col-lg-6 col-12 mb-4 mb-lg-2">
                        </#if>
                        <div class="custom-block d-flex">
                            <div class="">
                                <div class="custom-block-icon-wrap">
                                    <div class="section-overlay"></div>
                                    <a href="/details/${game.id}" class="custom-block-image-wrap">
                                        <img src="${game.gamePreview}"
                                             class="custom-block-image img-fluid" alt="">
                                    </a>
                                </div>
                                <div class="mt-2">
                                    <a href="/details/${game.id}" class="btn custom-btn">
                                        Subscribe
                                    </a>
                                </div>
                            </div>
                            <div class="custom-block-info">
                                <div class="custom-block-top d-flex mb-1">
                                    <small class="me-4">
                                        ${game.createTime?string("yyyy-MM-dd")}
                                    </small>
                                </div>
                                <div class="custom-block-top d-flex mb-1">
                                    <small class="me-4">
                                        ${game.gameCategory}
                                    </small>
                                </div>
                                <h5 class="mb-2">
                                    <a href="/details/${game.id}">
                                        ${game.gameName}
                                    </a>
                                </h5>

                                <div class="custom-block-bottom d-flex justify-content-between mt-3">
                                    <a href="/details/${game.id}" class="bi-heart me-1">
                                        <span>${game.gameHot}</span>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                    <#assign  hotGame ++>
                    </#if>
                    </#list>
                </div>
            </div>
    </section>


    <section class="topics-section section-padding pb-0" id="section_3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="section-title-wrap mb-5">
                        <h4 class="section-title">Family Games</h4>
                    </div>
                </div>
                <#list all_game as game>
                    <#if "Puzzle" == game.gameCategory>
                        <div class="col-lg-3 col-md-6 col-6 mb-4 mb-lg-0">
                            <div class="custom-block custom-block-overlay">
                                <a href="/details/${game.id}" class="custom-block-image-wrap">
                                    <img src="${game.gamePreview}"
                                         class="custom-block-image img-fluid" alt="">
                                </a>

                                <div class="custom-block-info custom-block-overlay-info">
                                    <h5 class="mb-1">
                                        <a href="/details/${game.id}">
                                            ${game.gameName}
                                        </a>
                                    </h5>
                                    <p class="badge mb-0">${game.createTime?string("yyyy-MM-dd")}</p>
                                </div>
                            </div>
                        </div>
                    </#if>
                </#list>
            </div>
        </div>
    </section>


    <section class="topics-section section-padding pb-0" id="section_3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="section-title-wrap mb-5">
                        <h4 class="section-title">Action Gagmes</h4>
                    </div>
                </div>
                <#list all_game as game>
                    <#if "Action" == game.gameCategory>
                        <div class="col-lg-3 col-md-6 col-6 mb-4 mb-lg-0">
                            <div class="custom-block custom-block-overlay">
                                <a href="/details/${game.id}" class="custom-block-image-wrap">
                                    <img src="${game.gamePreview}"
                                         class="custom-block-image img-fluid" alt="">
                                </a>

                                <div class="custom-block-info custom-block-overlay-info">
                                    <h5 class="mb-1">
                                        <a href="/details/${game.id}">
                                            ${game.gameName}
                                        </a>
                                    </h5>
                                    <p class="badge mb-0">${game.createTime?string("yyyy-MM-dd")}</p>
                                </div>
                            </div>
                        </div>
                    </#if>
                </#list>
            </div>
        </div>
    </section>


    <section class="topics-section section-padding pb-0" id="section_3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="section-title-wrap mb-5">
                        <h4 class="section-title">Adventure  Gagmes</h4>
                    </div>
                </div>
                <#list all_game as game>
                    <#if "Adventure" == game.gameCategory>
                        <div class="col-lg-3 col-md-6 col-6 mb-4 mb-lg-0">
                            <div class="custom-block custom-block-overlay">
                                <a href="/details/${game.id}" class="custom-block-image-wrap">
                                    <img src="${game.gamePreview}"
                                         class="custom-block-image img-fluid" alt="">
                                </a>

                                <div class="custom-block-info custom-block-overlay-info">
                                    <h5 class="mb-1">
                                        <a href="/details/${game.id}">
                                            ${game.gameName}
                                        </a>
                                    </h5>
                                    <p class="badge mb-0">${game.createTime?string("yyyy-MM-dd")}</p>
                                </div>
                            </div>
                        </div>
                    </#if>
                </#list>
            </div>
        </div>
    </section>

    <section class="topics-section section-padding pb-0" id="section_3">
        <div class="container">
            <div class="mb-lg-0">
                <p class="text fw-bold mx-auto">${advert.content}</p>
            </div>
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
                    Copyright © 2024 ${service_name}. All Rights Reserved
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
