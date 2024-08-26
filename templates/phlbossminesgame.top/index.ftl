<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/template/12/css/style.min.css?ver=140">
    <link rel="stylesheet" href="/template/12/${advert.domain}/main.css">
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
    ${advert.gaCode}
</head>
<body>


<nav class="col-10 mx-auto navbar navbar-expand-lg border-bottom">
    <div class="container-fluid">
        <a class="navbar-brand" href="/">
            <img src="/domain/${advert.domain}/logo.png" class="h-100" alt="${advert.serviceName}" width="60" height="60" />
        </a>
        <button class="navbar-toggler" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="offcanvas offcanvas-end"  id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasNavbarLabel">Games</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about_us">About Us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            Category
                        </a>
                        <ul class="dropdown-menu ">
                            <#list game_types as type>
                                <li><a class="dropdown-item" href="/type/${type}">${type}</a></li>
                            </#list>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact_us">Contact</a>
                    </li>
                </ul>
                <form class="d-flex" action="/search">
                    <input name="s" value="" type="search" class="form-control" id="search"
                           placeholder="Search Podcast" aria-label="Search">
                </form>
            </div>
        </div>
    </div>
</nav>



<main role="main" class="as-wrapper">
    <div class="mx-auto text-center mt-3 mb-3"></div>
    <div class="container-fluid">
        <h1 class="h3 as-main-title text-center mb-4">Games - Play Free Online Games</h1>
        <div class="as-game-container mt-4 mb-4">
            <div class="as-game-main">
                <ul class="as-game-list">
                    <#list all_game as game>
                        <li><a href="/details/${game.id}" class="as-game-box"><img class="lozad"
                                                                                   data-src="${game.gamePreview}"
                                                                                   width="140" height="140">
                                <div class="as-game-box-title" style="width: 100%;
                            height: 3rem;
                            white-space: normal; overflow: hidden; text-overflow: ellipsis;">${game.gameName}</div>
                                <span
                                        class="badge badge-danger as-game-box-badge">${game.gameCategory}</span>
                            </a></li>
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
                    <li class="nav-item"><a class="as-logo-holder nav-link active pl-0" href="/">
                            <img src="/domain/${advert.domain}/logo.png"
                                 alt="Arcade Spot" width="424" height="123">
                        </a></li>
                    <li class="w-100 d-block d-sm-none"></li>
                    <li class="nav-item"><a class="nav-link" href="/about_us"><i class="fas fa-gamepad"></i>
                            About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="/privacy_policy"><i class="fas fa-envelope"></i>
                            Privacy
                            Policy</a></li>
                    <li class="nav-item"><a class="nav-link" href="/term_of_use"><i class="fas fa-question-circle"></i>
                            Terms of
                            Use</a></li>
                    <li class="nav-item"><a class="nav-link" href="/contact_us"><i class="fas fa-user-shield"></i>
                            Contact
                            Us</a></li>
                </ul>
            </div>
            <div class="col-12 col-md-3 mt-2 mt-md-0 mb-2 mb-md-0 text-md-right">Copyright &copy;
                2024 ${advert.serviceName}.
                All Rights Reserved.
            </div>
        </div>
    </div>
</footer>
<script src="/domain/${advert.domain}/js/lozad.min.js" defer=""></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.2.3/js/bootstrap.bundle.min.js"></script>
<script src="/domain/${advert.domain}/js/script.min.js?v=162" defer=""></script>
</body>

</html>