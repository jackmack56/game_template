<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/magnific-popup.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/select2.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/paymentfont.min.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/slider-radio.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/plyr.css">
    <link rel="stylesheet" href="/domain/${advert.domain}/css/main.css">
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
    ${advert.gaCode}
</head>
<body style="background: white">
<header class="header" style="background: #f7f7f7;">
    <div class="header__content">
        <div class="header__logo">
            <a href="/">
                <img src="/domain/${advert.domain}/logo.png" alt="">
            </a>
        </div>


        <div class="header__actions">
            <div class="header__action header__action--note" style="margin-right: 4rem">
                <a class="header__action-btn" style="color: black">Category</a>
                <div class="header__drop" style="background: white">
                    <#list game_types as type>
                        <div class="header__note header__note--succ">
                            <a href="/type/${type}" class="open-modal">${type}</a>
                        </div>
                    </#list>
                </div>
            </div>

            <div class="header__action header__action--search">
                <button class="header__action-btn" type="button">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <path d="M21.71,20.29,18,16.61A9,9,0,1,0,16.61,18l3.68,3.68a1,1,0,0,0,1.42,0A1,1,0,0,0,21.71,20.29ZM11,18a7,7,0,1,1,7-7A7,7,0,0,1,11,18Z"/>
                    </svg>
                </button>
            </div>
        </div>

        <form action="/search" method="get" class="header__search">
            <input name="s" value="" type="search" placeholder="Artist, track or podcast" aria-label="Search"
                   style="background: white; color: black; border: 1px solid">
            <button type="button">
                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                    <path d="M21.71,20.29,18,16.61A9,9,0,1,0,16.61,18l3.68,3.68a1,1,0,0,0,1.42,0A1,1,0,0,0,21.71,20.29ZM11,18a7,7,0,1,1,7-7A7,7,0,0,1,11,18Z"/>
                </svg>
            </button>
        </form>
    </div>
    </div>
</header>

<main class="main">
    <div class="container-fluid">

        <section class="row row--grid">
            <div class="col-12">
                <div class="main__title">
                    <h2>Home Games</h2>
                </div>
            </div>
            <#list all_game as game>
                    <div class="col-6 col-sm-4 col-lg-2">
                        <div class="album">
                            <div class="album__cover" style="background: #f7f7f7; border-radius: 0px; ">
                                <img src="${game.gamePreview}" alt="" style="height: 100%">
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
                                <span><a href="/type/${game.gameCategory}">${game.gameCategory}</a></span>
                            </div>
                        </div>
                    </div>
            </#list>
        </section>


    </div>
</main>

<footer class="footer" style="background: #f7f7f7">
    <div class="container-fluid">
        <div class="row">
            <div class="col-12 col-lg-6">
                <div class="footer__logo">
                    <img src="/domain/${advert.domain}/logo.png" alt="">
                </div>
                <p class="footer__tagline" style="color: black">${advert.content}</p>
            </div>
            <div class="col-12 col-lg-4">
                <h6 class="footer__title" style="font-weight: bolder; font-size: 25px; color: black">${advert.serviceName}</h6>
                <div class="footer__nav" style="color: black">
                    <p class="col-10">
                        <a href="/about_us" style="color: black">About Us</a>
                        <a href="/contact_us" style="float: right;color: black" style="color: black">Contact Us</a>
                    </p>
                    <p class="col-10">
                        <a href="/term_of_use" style="color: black">Terms of Use</a>
                        <a href="/privacy_policy" style="float: right;color: black">Privacy Policy</a>
                    </p>
                </div>
                <div class="footer__links">
                    <a href="#" style="color: black">
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
                    <small class="footer__copyright" style="color: black">Copyright &copy; 2024 ${advert.serviceName}. All Rights
                        Reserved.</small>
                </div>
            </div>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>
<script src="/domain/${advert.domain}/js/bootstrap.bundle.min.js"></script>
<script src="/domain/${advert.domain}/js/owl.carousel.min.js"></script>
<script src="/domain/${advert.domain}/js/jquery.magnific-popup.min.js"></script>
<script src="/domain/${advert.domain}/js/smooth-scrollbar.js"></script>
<script src="/domain/${advert.domain}/js/select2.min.js"></script>
<script src="/domain/${advert.domain}/js/slider-radio.js"></script>
<script src="/domain/${advert.domain}/js/jquery.inputmask.min.js"></script>
<script src="/domain/${advert.domain}/js/plyr.min.js"></script>
<script src="/domain/${advert.domain}/js/main.js"></script>
</body>
</html>