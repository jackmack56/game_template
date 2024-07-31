<!DOCTYPE HTML>
<html>
<head>
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="/domain/${advert.domain}/css/bootstrap.min.css" rel='stylesheet' type='text/css' media="all" />
    <link href="/domain/${advert.domain}/css/dashboard.css" rel="stylesheet" />
    <link href="/domain/${advert.domain}/css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <link href="/domain/${advert.domain}/css/style.css" rel='stylesheet' type='text/css' media="all" />
    <script src="/domain/${advert.domain}/js/jquery-1.11.1.min.js"></script>
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Poiret+One' rel='stylesheet' type='text/css'>
    ${advert.gaCode}
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div id="navbar" class="navbar-collapse collapse">
            <div class="top-search">
                <form class="navbar-form navbar-right" action="/search" method="get">
                    <input type="search" class="form-control" placeholder="Search Game " name="s" value="">
                    <input type="submit" value=" ">
                </form>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
</nav>

<div class="col-sm-3 col-md-2 sidebar">
    <div class="top-navigation">
        <div class="t-menu">MENU</div>
        <div class="t-img">
            <img src="images/lines.png" alt="" />
        </div>
        <div class="clearfix"> </div>
    </div>
    <div class="drop-navigation drop-navigation">
        <ul class="nav nav-sidebar">
            <li class="active"><a href="/" class="home-icon"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li><a class="menu1"><span class="glyphicon glyphicon-film" aria-hidden="true"></span>Category<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
            <ul class="cl-effect-2">
                <#list game_types as type>
                    <li><a href="/type/${type}">${type}</a></li>
                </#list>
            </ul>

            <li><a href="#" class="menu"><span class="glyphicon glyphicon-film glyphicon-king" aria-hidden="true"></span>Help<span class="glyphicon glyphicon-menu-down" aria-hidden="true"></span></a></li>
            <ul class="cl-effect-1">
                <li> <a href="/about_us" >About Us</a></li>
                <li> <a href="/privacy_policy" >Privacy Policy</a></li>
                <li> <a href="/term_of_use" >Terms of Use</a> </li>
                <li> <a href="/contact_us" >Contact Us</a> </li>
            </ul>
        </ul>

    </div>
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    <div class="main-grids">
        <div class="top-grids">
            <div class="recommended-info">
                <h3>New Game</h3>
            </div>
            <#list all_game as game>
                <#if game_index < 24>
                    <div class="col-lg-2 resent-grid recommended-grid slider-top-grids ">
                        <div class="resent-grid-img recommended-grid-img">
                            <a href="/details/${game.id}"><img src="${game.gamePreview}" alt="" /></a>
                            <div class="time">
                                <p>${game.createTime?string("yyyy-MM-dd")}</p>
                            </div>

                        </div>
                        <div class="resent-grid-info recommended-grid-info">
                            <ul>
                                <li><p class="author author-info"><a href="/details/${game.id}" class="author">${game.gameName}</a></p></li>
                            </ul>
                        </div>
                    </div>

                </#if>
            </#list>
            <div class="clearfix"> </div>
        </div>

        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>Recommend Games</h3>
                </div>

                <div  id="top" class="callbacks_container">
                    <ul class="rslides" id="slider3">
                        <li>
                            <div class="animated-grids">
                                <#list all_game as game>
                                    <#if 24 < game_index && game_index < 31 >

                                        <div class="col-md-2 col-lg-2 resent-grid recommended-grid slider-top-grids ">
                                            <div class="resent-grid-img recommended-grid-img" style="height: 18rem">
                                                <a href="/details/${game.id}"><img src="${game.gamePreview}" alt="" style="height: 100%" /></a>
                                                <div class="time small-time slider-time">
                                                    <p>${game.createTime?string("yyyy-MM-dd")}</p>
                                                </div>
                                            </div>
                                            <div class="resent-grid-info recommended-grid-info">
                                                <div class="slid-bottom-grids">
                                                    <div class="slid-bottom-grid">
                                                        <p class="author author-info"><a href="/details/${game.id}" class="author">${game.gameName}</a></p>
                                                    </div>
                                                    <div class="slid-bottom-grid slid-bottom-right">
                                                        <p class="views views-info">${game.gameHot}</p>
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </#if>
                                </#list>
                                <div class="clearfix"> </div>
                            </div>
                        </li>
                        <li>
                            <div class="animated-grids">
                                <#list all_game as game>
                                    <#if 31 < game_index && game_index < 38 >
                                        <div class="col-md-2 col-lg-2 resent-grid recommended-grid slider-top-grids " >
                                            <div class="resent-grid-img recommended-grid-img" style="height: 18rem">
                                                <a href="/details/${game.id}"><img src="${game.gamePreview}" alt="" style="height: 100%" /></a>
                                                <div class="time small-time slider-time">
                                                    <p>${game.createTime?string("yyyy-MM-dd")}</p>
                                                </div>
                                            </div>
                                            <div class="resent-grid-info recommended-grid-info">
                                                <div class="slid-bottom-grids">
                                                    <div class="slid-bottom-grid">
                                                        <p class="author author-info"><a href="/details/${game.id}" class="author">${game.gameName}</a></p>
                                                    </div>
                                                    <div class="slid-bottom-grid slid-bottom-right">
                                                        <p class="views views-info">${game.gameHot}</p>
                                                    </div>
                                                    <div class="clearfix"> </div>
                                                </div>
                                            </div>
                                        </div>
                                    </#if>
                                </#list>
                                <div class="clearfix"> </div>
                            </div>
                        </li>

                    </ul>
                </div>
            </div>
        </div>

        <div class="recommended">
            <div class="recommended-grids">
                <div class="recommended-info">
                    <h3>Other Games</h3>
                </div>
                <#list all_game as game>
                    <#if 37 < game_index && game_index < 80 >
                        <div class="col-md-2 col-lg-2 resent-grid recommended-grid slider-top-grids ">
                            <div class="resent-grid-img recommended-grid-img">
                                <a href="/details/${game.id}"><img src="${game.gamePreview}" alt="" /></a>
                                <div class="time">
                                    <p>${game.createTime?string("yyyy-MM-dd")}</p>
                                </div>

                            </div>
                            <div class="resent-grid-info recommended-grid-info">
                                <ul>
                                    <li><p class="author author-info"><a href="/details/${game.id}" class="author">${game.gameName}</a></p></li>
                                </ul>
                            </div>
                        </div>
                    </#if>
                </#list>
                <div class="clearfix"> </div>
            </div>
        </div>

    </div>
    <div class="footer">
        <div class="footer-grids">
            <div class="footer-top">
                <div class="footer-top-nav">
                    <p style="font-size: 15px; color: white">
                        ${advert.content}
                    </p>
                </div>
                <div class="footer-top-nav">
                    <ul>
                        <li> <a href="/about_us" style="color: white">About Us</a></li>
                        <li> <a href="/privacy_policy" style="color: white">Privacy Policy</a></li>
                        <li> <a href="/term_of_use" style="color: white">Terms of Use</a> </li>
                        <li> <a href="/contact_us" style="color: white">Contact Us</a> </li>
                    </ul>
                </div>
                <div class="footer-bottom-nav">
                    <ul>
                        <li> ${advert.contactMail} </li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <ul>
                    <li><a style="color:white; font-size: 20px; font-weight: bolder">Copyright © 2024 ${service_name}. All Rights Reserved</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap.min.js@3.3.5/bootstrap.min.js"></script>
<script type="text/javascript" src="/domain/${advert.domain}/js/modernizr.custom.min.js"></script>
<script src="/domain/${advert.domain}/js/jquery.magnific-popup.js" type="text/javascript"></script>
<script src="/domain/${advert.domain}/js/responsiveslides.min.js"></script>
<script>
    $(document).ready(function() {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
    $( "li a.menu" ).click(function() {
        $( "ul.cl-effect-1" ).slideToggle( 300, function() {

        });
    });
    $( "li a.menu1" ).click(function() {
        $( "ul.cl-effect-2" ).slideToggle( 300, function() {

        });
    });
    $( ".top-navigation" ).click(function() {
        $( ".drop-navigation" ).slideToggle( 300, function() {

        });
    });
    $(function () {
        // Slideshow 4
        $("#slider3").responsiveSlides({
            auto: true,
            pager: false,
            nav: true,
            speed: 500,
            namespace: "callbacks",
            before: function () {
                $('.events').append("<li>before event fired.</li>");
            },
            after: function () {
                $('.events').append("<li>after event fired.</li>");
            }
        });

    });
</script>
</body>
</html>