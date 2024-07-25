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
    <meta name="description" content="${advert.content}" />
    <meta name="keywords" content="${advert.keywords}" />
    <meta name="author" content="">
    <title>${advert.title}</title>
</head>
<body>
<header class="header">
    <div class="header__content">
        <div class="header__logo">
            <a href="/">
                <img src="/${service_name}/logo.png" alt="">
            </a>
        </div>

        <form action="/search" method="get" class="header__search">
            <input name="s" value="" type="search" placeholder="Artist, track or podcast" aria-label="Search">
            <button type="button"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M21.71,20.29,18,16.61A9,9,0,1,0,16.61,18l3.68,3.68a1,1,0,0,0,1.42,0A1,1,0,0,0,21.71,20.29ZM11,18a7,7,0,1,1,7-7A7,7,0,0,1,11,18Z"/></svg></button>
        </form>

        <div class="header__actions">
            <div class="header__action header__action--search">
                <button class="header__action-btn" type="button"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M21.71,20.29,18,16.61A9,9,0,1,0,16.61,18l3.68,3.68a1,1,0,0,0,1.42,0A1,1,0,0,0,21.71,20.29ZM11,18a7,7,0,1,1,7-7A7,7,0,0,1,11,18Z"/></svg></button>
            </div>

            <div class="header__action header__action--note" style="margin-left: 2rem">
                <a  class="header__action-btn" style="color: white">Category</a>

                <div class="header__drop">
                    <#list game_types as type>
                        <div class="header__note header__note--succ">
                            <a href="/type/${type}" class="open-modal">${type}</a>
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
            <!-- title -->
            <div class="col-12">
                <div class="main__title">
                    <h2>Puzzle Games</h2>
                    <a href="/type/Puzzle" class="main__link">See all <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M17.92,11.62a1,1,0,0,0-.21-.33l-5-5a1,1,0,0,0-1.42,1.42L14.59,11H7a1,1,0,0,0,0,2h7.59l-3.3,3.29a1,1,0,0,0,0,1.42,1,1,0,0,0,1.42,0l5-5a1,1,0,0,0,.21-.33A1,1,0,0,0,17.92,11.62Z"/></svg></a>
                </div>
            </div>
            <!-- end title -->

            <div class="col-12">
                <div class="main__carousel-wrap">
                    <div class="main__carousel main__carousel--store owl-carousel" id="store">
                        <#assign pluzze = 0>
                        <#list all_game as game>
                            <#if pluzze < 6 && game.gameCategory == "Puzzle">
                                <div class="product">
                                    <a href="/details/${game.id}" class="product__img">
                                        <img src="${game.gamePreview}" alt="">
                                    </a>
                                    <h3 class="product__title"><a href="/details/${game.id}">${game.gameName}</a></h3>
                                    <span class="product__price">${game.gameCategory}</span>
                                    <span class="product__new">${game.createTime?string("yyyy-MM-dd")}</span>
                                </div>
                                <#assign pluzze ++>
                            </#if>
                        </#list>
                    </div>

                    <button class="main__nav main__nav--prev" data-nav="#store" type="button"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M17,11H9.41l3.3-3.29a1,1,0,1,0-1.42-1.42l-5,5a1,1,0,0,0-.21.33,1,1,0,0,0,0,.76,1,1,0,0,0,.21.33l5,5a1,1,0,0,0,1.42,0,1,1,0,0,0,0-1.42L9.41,13H17a1,1,0,0,0,0-2Z"/></svg></button>
                    <button class="main__nav main__nav--next" data-nav="#store" type="button"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M17.92,11.62a1,1,0,0,0-.21-.33l-5-5a1,1,0,0,0-1.42,1.42L14.59,11H7a1,1,0,0,0,0,2h7.59l-3.3,3.29a1,1,0,0,0,0,1.42,1,1,0,0,0,1.42,0l5-5a1,1,0,0,0,.21-.33A1,1,0,0,0,17.92,11.62Z"/></svg></button>
                </div>
            </div>
        </section>


        <section class="row row--grid">
            <div class="col-12">
                <div class="main__title">
                    <h2>Other Games</h2>
                </div>
            </div>
            <#list all_game as game>
                <#if game_index < 84>
                    <div class="col-6 col-sm-4 col-lg-2">
                        <div class="album">
                            <div class="album__cover">
                                <img src="${game.gamePreview}" alt="">
                                <a href="/details/${game.id}">
                                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                        <path d="M18.54,9,8.88,3.46a3.42,3.42,0,0,0-5.13,3V17.58A3.42,3.42,0,0,0,7.17,21a3.43,3.43,0,0,0,1.71-.46L18.54,15a3.42,3.42,0,0,0,0-5.92Zm-1,4.19L7.88,18.81a1.44,1.44,0,0,1-1.42,0,1.42,1.42,0,0,1-.71-1.23V6.42a1.42,1.42,0,0,1,.71-1.23A1.51,1.51,0,0,1,7.17,5a1.54,1.54,0,0,1,.71.19l9.66,5.58a1.42,1.42,0,0,1,0,2.46Z"/></svg></a>
                                <span class="album__stat">
								<span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M3.71,16.29a1,1,0,0,0-.33-.21,1,1,0,0,0-.76,0,1,1,0,0,0-.33.21,1,1,0,0,0-.21.33,1,1,0,0,0,.21,1.09,1.15,1.15,0,0,0,.33.21.94.94,0,0,0,.76,0,1.15,1.15,0,0,0,.33-.21,1,1,0,0,0,.21-1.09A1,1,0,0,0,3.71,16.29ZM7,8H21a1,1,0,0,0,0-2H7A1,1,0,0,0,7,8ZM3.71,11.29a1,1,0,0,0-1.09-.21,1.15,1.15,0,0,0-.33.21,1,1,0,0,0-.21.33.94.94,0,0,0,0,.76,1.15,1.15,0,0,0,.21.33,1.15,1.15,0,0,0,.33.21.94.94,0,0,0,.76,0,1.15,1.15,0,0,0,.33-.21,1.15,1.15,0,0,0,.21-.33.94.94,0,0,0,0-.76A1,1,0,0,0,3.71,11.29ZM21,11H7a1,1,0,0,0,0,2H21a1,1,0,0,0,0-2ZM3.71,6.29a1,1,0,0,0-.33-.21,1,1,0,0,0-1.09.21,1.15,1.15,0,0,0-.21.33.94.94,0,0,0,0,.76,1.15,1.15,0,0,0,.21.33,1.15,1.15,0,0,0,.33.21,1,1,0,0,0,1.09-.21,1.15,1.15,0,0,0,.21-.33.94.94,0,0,0,0-.76A1.15,1.15,0,0,0,3.71,6.29ZM21,16H7a1,1,0,0,0,0,2H21a1,1,0,0,0,0-2Z"/></svg>
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
                </#if>
            </#list>
        </section>


        <section class="row row--grid">
            <div class="col-12">
                <div class="main__title">
                    <h2>Action Games</h2>

                    <a href="events.html" class="main__link">See all <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M17.92,11.62a1,1,0,0,0-.21-.33l-5-5a1,1,0,0,0-1.42,1.42L14.59,11H7a1,1,0,0,0,0,2h7.59l-3.3,3.29a1,1,0,0,0,0,1.42,1,1,0,0,0,1.42,0l5-5a1,1,0,0,0,.21-.33A1,1,0,0,0,17.92,11.62Z"/></svg></a>
                </div>
            </div>
            <!-- end title -->

            <div class="col-12">
                <div class="main__carousel-wrap">
                    <div class="main__carousel main__carousel--events owl-carousel" id="events">
                        <#assign action = 0>
                        <#list all_game as game>
                            <#if action < 6 && game.gameCategory == "Action">
                                <div class="event" data-bg="${game.gamePreview}">
                                    <a href="/details/${game.id}" class="event__ticket open-modal">
                                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                            <path d="M9,10a1,1,0,0,0-1,1v2a1,1,0,0,0,2,0V11A1,1,0,0,0,9,10Zm12,1a1,1,0,0,0,1-1V6a1,1,0,0,0-1-1H3A1,1,0,0,0,2,6v4a1,1,0,0,0,1,1,1,1,0,0,1,0,2,1,1,0,0,0-1,1v4a1,1,0,0,0,1,1H21a1,1,0,0,0,1-1V14a1,1,0,0,0-1-1,1,1,0,0,1,0-2ZM20,9.18a3,3,0,0,0,0,5.64V17H10a1,1,0,0,0-2,0H4V14.82A3,3,0,0,0,4,9.18V7H8a1,1,0,0,0,2,0H20Z"/></svg>
                                        ${game.gameHot}</a>
                                    <span class="event__date">${game.createTime?string("yyyy-MM-dd")}</span>
                                    <span class="event__time">${game.gameCategory}</span>
                                    <h3 class="event__title"><a href="/details/${game.id}">${game.gameName}</a></h3>
                                </div>
                                <#assign action ++>
                            </#if>
                        </#list>
                    </div>
                    <button class="main__nav main__nav--prev" data-nav="#events" type="button"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M17,11H9.41l3.3-3.29a1,1,0,1,0-1.42-1.42l-5,5a1,1,0,0,0-.21.33,1,1,0,0,0,0,.76,1,1,0,0,0,.21.33l5,5a1,1,0,0,0,1.42,0,1,1,0,0,0,0-1.42L9.41,13H17a1,1,0,0,0,0-2Z"/></svg></button>
                    <button class="main__nav main__nav--next" data-nav="#events" type="button"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M17.92,11.62a1,1,0,0,0-.21-.33l-5-5a1,1,0,0,0-1.42,1.42L14.59,11H7a1,1,0,0,0,0,2h7.59l-3.3,3.29a1,1,0,0,0,0,1.42,1,1,0,0,0,1.42,0l5-5a1,1,0,0,0,.21-.33A1,1,0,0,0,17.92,11.62Z"/></svg></button>
                </div>
            </div>
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
                <h6 class="footer__title" style="font-weight: bolder; font-size: 25px;">H5 Arcade</h6>
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
                            <path d="M19,4H5A3,3,0,0,0,2,7V17a3,3,0,0,0,3,3H19a3,3,0,0,0,3-3V7A3,3,0,0,0,19,4Zm-.41,2-5.88,5.88a1,1,0,0,1-1.42,0L5.41,6ZM20,17a1,1,0,0,1-1,1H5a1,1,0,0,1-1-1V7.41l5.88,5.88a3,3,0,0,0,4.24,0L20,7.41Z"/></svg>
                        ${advert.contactMail}</a>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="footer__content">
                    <small class="footer__copyright">Copyright &copy; 2024 ${service_name}. All Rights Reserved.</small>
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