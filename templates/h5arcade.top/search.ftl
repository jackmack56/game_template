<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/${service_name}/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="/${service_name}/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="/${service_name}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/${service_name}/css/magnific-popup.css">
    <link rel="stylesheet" href="/${service_name}/css/select2.min.css">
    <link rel="stylesheet" href="/${service_name}/css/paymentfont.min.css">
    <link rel="stylesheet" href="/${service_name}/css/slider-radio.css">
    <link rel="stylesheet" href="/${service_name}/css/plyr.css">
    <link rel="stylesheet" href="/${service_name}/css/main.css">
    <link rel="icon" type="image/png" href="/${service_name}/icon/favicon-32x32.png" sizes="32x32">
    <link rel="apple-touch-icon" href="/${service_name}/icon/favicon-32x32.png">
    <meta name="description" content="${advert.content}" />
    <meta name="keywords" content="${advert.keywords}" />
    <meta name="author" content="">
    <title>${advert.title}</title>

</head>
<body>
<!-- header -->
<header class="header">
    <div class="header__content">
        <div class="header__logo">
            <a href="/">
                <img src="/${service_name}/logo.png" alt="">
            </a>
        </div>

        <form action="/search" method="get" class="header__search">
            <input name="s" value="" type="search" placeholder="Artist, track or podcast" aria-label="Search">
            <button type="button">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path d="M21.71,20.29,18,16.61A9,9,0,1,0,16.61,18l3.68,3.68a1,1,0,0,0,1.42,0A1,1,0,0,0,21.71,20.29ZM11,18a7,7,0,1,1,7-7A7,7,0,0,1,11,18Z"/>
                </svg>
            </button>
        </form>

        <div class="header__actions">
            <div class="header__action header__action--search">
                <button class="header__action-btn" type="button">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <path d="M21.71,20.29,18,16.61A9,9,0,1,0,16.61,18l3.68,3.68a1,1,0,0,0,1.42,0A1,1,0,0,0,21.71,20.29ZM11,18a7,7,0,1,1,7-7A7,7,0,0,1,11,18Z"/>
                    </svg>
                </button>
            </div>

            <div class="header__action header__action--note" style="margin-left: 2rem">
                <a class="header__action-btn" style="color: white">Category</a>

                <div class="header__drop">
                    <#list game_types as type>
                        <div class="header__note header__note--succ">
                            <p><a href="/type/${type}" class="open-modal">${type}</a></p>
                        </div>
                    </#list>
                </div>
            </div>
        </div>
    </div>
    </div>
</header>

<main class="main">
    <div class="container-fluid">
        <section class="row row--grid">
            <div class="col-12">
                <div class="main__title">
                    <h2> ${category ! ''} Games</h2>
                </div>
            </div>
            <#list all_game as game>
                <div class="col-6 col-sm-4 col-lg-2">
                    <div class="album">
                        <div class="album__cover">
                            <img src="${game.gamePreview}" alt="">
                            <a href="/details/${game.id}">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                    <path d="M18.54,9,8.88,3.46a3.42,3.42,0,0,0-5.13,3V17.58A3.42,3.42,0,0,0,7.17,21a3.43,3.43,0,0,0,1.71-.46L18.54,15a3.42,3.42,0,0,0,0-5.92Zm-1,4.19L7.88,18.81a1.44,1.44,0,0,1-1.42,0,1.42,1.42,0,0,1-.71-1.23V6.42a1.42,1.42,0,0,1,.71-1.23A1.51,1.51,0,0,1,7.17,5a1.54,1.54,0,0,1,.71.19l9.66,5.58a1.42,1.42,0,0,1,0,2.46Z"/>
                                </svg>
                            </a>
                            <span class="album__stat">
								<span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path
                                                d="M3.71,16.29a1,1,0,0,0-.33-.21,1,1,0,0,0-.76,0,1,1,0,0,0-.33.21,1,1,0,0,0-.21.33,1,1,0,0,0,.21,1.09,1.15,1.15,0,0,0,.33.21.94.94,0,0,0,.76,0,1.15,1.15,0,0,0,.33-.21,1,1,0,0,0,.21-1.09A1,1,0,0,0,3.71,16.29ZM7,8H21a1,1,0,0,0,0-2H7A1,1,0,0,0,7,8ZM3.71,11.29a1,1,0,0,0-1.09-.21,1.15,1.15,0,0,0-.33.21,1,1,0,0,0-.21.33.94.94,0,0,0,0,.76,1.15,1.15,0,0,0,.21.33,1.15,1.15,0,0,0,.33.21.94.94,0,0,0,.76,0,1.15,1.15,0,0,0,.33-.21,1.15,1.15,0,0,0,.21-.33.94.94,0,0,0,0-.76A1,1,0,0,0,3.71,11.29ZM21,11H7a1,1,0,0,0,0,2H21a1,1,0,0,0,0-2ZM3.71,6.29a1,1,0,0,0-.33-.21,1,1,0,0,0-1.09.21,1.15,1.15,0,0,0-.21.33.94.94,0,0,0,0,.76,1.15,1.15,0,0,0,.21.33,1.15,1.15,0,0,0,.33.21,1,1,0,0,0,1.09-.21,1.15,1.15,0,0,0,.21-.33.94.94,0,0,0,0-.76A1.15,1.15,0,0,0,3.71,6.29ZM21,16H7a1,1,0,0,0,0,2H21a1,1,0,0,0,0-2Z"/></svg>
                                     ${game.createTime?string("yyyy-MM-dd")}</span>
								<span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path d="M18.54,9,8.88,3.46a3.42,3.42,0,0,0-5.13,3V17.58A3.42,3.42,0,0,0,7.17,21a3.43,3.43,0,0,0,1.71-.46L18.54,15a3.42,3.42,0,0,0,0-5.92Zm-1,4.19L7.88,18.81a1.44,1.44,0,0,1-1.42,0,1.42,1.42,0,0,1-.71-1.23V6.42a1.42,1.42,0,0,1,.71-1.23A1.51,1.51,0,0,1,7.17,5a1.54,1.54,0,0,1,.71.19l9.66,5.58a1.42,1.42,0,0,1,0,2.46Z"/></svg> ${game.gameHot}</span>
							</span>
                        </div>
                        <div class="album__title">
                            <h3><a href="/details/${game.id}">${game.gameName}</a></h3>
                            <span><a href="/details/${game.id}">${game.gameCategory}</a></span>
                        </div>
                    </div>
                </div>
            </#list>
        </section>
    </div>
</main>

<footer class="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 col-lg-6">
                <div class="footer__logo">
                    <img src="/${service_name}/logo.png" alt="">
                </div>
                <p class="footer__tagline">${advert.content}</p>

            </div>

            <div class="col-12 col-lg-4">
                <h6 class="footer__title" style="font-weight: bolder; font-size: 25px;">The Volna</h6>
                <div class="footer__nav">
                    <p class="col-10">
                        <a href="/about_us">About</a>
                        <a href="/contact_us" style="float: right">Contact Us</a>

                    </p>
                    <p class="col-10">
                        <a href="/term_of_use">Terms of Use</a>
                        <a href="/privacy_policy" style="float: right">Privacy Policy</a>
                    </p>
                </div>
                <div class="footer__links">
                    <a href="mailto:support@volna.template">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                            <path d="M19,4H5A3,3,0,0,0,2,7V17a3,3,0,0,0,3,3H19a3,3,0,0,0,3-3V7A3,3,0,0,0,19,4Zm-.41,2-5.88,5.88a1,1,0,0,1-1.42,0L5.41,6ZM20,17a1,1,0,0,1-1,1H5a1,1,0,0,1-1-1V7.41l5.88,5.88a3,3,0,0,0,4.24,0L20,7.41Z"/>
                        </svg>
                        ${advert.contactMail}</a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="footer__content">
                    <small class="footer__copyright">Copyright &copy; 2024 ${service_name}. All Rights
                        Reserved.</small>
                </div>
            </div>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="/${service_name}/js/bootstrap.bundle.min.js"></script>
<script src="/${service_name}/js/owl.carousel.min.js"></script>
<script src="/${service_name}/js/jquery.magnific-popup.min.js"></script>
<script src="/${service_name}/js/smooth-scrollbar.js"></script>
<script src="/${service_name}/js/select2.min.js"></script>
<script src="/${service_name}/js/slider-radio.js"></script>
<script src="/${service_name}/js/jquery.inputmask.min.js"></script>
<script src="/${service_name}/js/plyr.min.js"></script>
<script src="/${service_name}/js/main.js"></script>
</body>
</html>