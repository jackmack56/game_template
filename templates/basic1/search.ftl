<html lang style="font-size: 19.3px;"><head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="icon" href="favicon.ico">
        <meta content="yes" name="apple-mobile-web-app-capable">
        <meta content="yes" name="apple-touch-fullscreen">
        <title>Drivemy.net: Where joy takes the wheel!</title>
        <link href="/css/basic/chunk-common.2627b58b.css" rel="preload" as="style">
        <link href="/css/basic/chunk-vendors.df919975.css" rel="preload" as="style">
        <link href="/css/basic/chunk-vendors.df919975.css" rel="stylesheet">
        <link href="/css/basic/chunk-common.2627b58b.css" rel="stylesheet">
        <link href="/css/basic/index.c29d2c62.css" rel="stylesheet">
        <style>#back {background: #FFFFFF!important;}</style><style>#header {background: #0984e3!important;}</style><style>body {background: #74b9ff!important;}</style><style>.van-popup--left {background: #0984e3!important;color: var(--font-color-blank)!important;}</style>
   </head>

    <body>
        <div id="app">
            <div data-v-49759819 class="van-popup van-popup--left"
                style="height: 100vh; min-width: 35%; color: rgb(8, 8, 8); overflow-y: auto; z-index: 2002; left: -40rem; transition: left 0.3s ease 0s;">
                <h3 data-v-49759819 style="padding: 0.4rem 0.7rem;">
                    Menu
                </h3>
                <a data-v-49759819 href="/" class="type_item">
                    <div data-v-49759819 class="type_item"
                        style="color: rgb(255, 255, 255); background: rgb(6, 184, 184);">
                        <span data-v-49759819 class="item_name">
                            Home
                        </span>
                    </div>
                </a>

                <#list game_types as game_type>
                    <a data-v-49759819="" href="/type/${game_type}" class="type_item">
                        <div data-v-49759819="">

                    <span data-v-49759819="" class="item_name">
                        ${game_type}
                    </span>
                        </div>
                    </a>
                </#list>

            </div>
            <div data-v-49759819 class="header_page">
                <div data-v-49759819 id="header" class="header">
                    <div data-v-49759819 class="menu">
                        <svg data-v-49759819 t="1687244222935"
                            viewBox="0 0 1024 1024" version="1.1"
                            xmlns="http://www.w3.org/2000/svg" p-id="19883"
                            xmlns:xlink="http://www.w3.org/1999/xlink"
                            width="1.8rem" height="1.8rem" class="icon">
                            <path data-v-49759819
                                d="M672.757869 550.62896H195.293694c-21.181973 0-38.373139-17.191166-38.373138-38.373139s17.191166-38.373139 38.373138-38.373139h477.464175c21.181973 0 38.373139 17.191166 38.373139 38.373139 0 21.079644-17.191166 38.373139-38.373139 38.373139zM828.706306 289.998601h-633.412612c-21.181973 0-38.373139-17.191166-38.373138-38.373139s17.191166-38.373139 38.373138-38.373139h633.412612c21.181973 0 38.373139 17.191166 38.373138 38.373139s-17.191166 38.373139-38.373138 38.373139zM512 810.747677H195.293694c-21.181973 0-38.373139-17.191166-38.373138-38.373139s17.191166-38.373139 38.373138-38.373139h316.706306c21.181973 0 38.373139 17.191166 38.373139 38.373139 0 21.284301-17.191166 38.373139-38.373139 38.373139z"
                                fill="#ffffff" p-id="19884">
                            </path>
                        </svg>
                    </div>
                    <div data-v-49759819 class="title">
                        <a href="/">${service_name}</a>
                    </div>
                    <div></div>
                </div>
                <div data-v-0544793f data-v-49759819
                    class="search_box search_box" style="display: none;">
                    <input data-v-0544793f type="text"
                        placeholder="input the keywords" clearable defaultvalue>
                    <div data-v-0544793f>
                        <svg data-v-0544793f t="1680079992751"
                            viewBox="0 0 1024 1024" version="1.1"
                            xmlns="http://www.w3.org/2000/svg" p-id="15827"
                            width="2rem" height="2rem" class="icon">
                            <path data-v-0544793f
                                d="M606.72 668.949333l62.144-62.144 248.298667 248.298667-62.144 62.144z"
                                fill="#607D8B" p-id="15828">
                            </path>
                            <path data-v-0544793f
                                d="M426.666667 426.666667m-320 0a320 320 0 1 0 640 0 320 320 0 1 0-640 0Z"
                                fill="#607D8B" p-id="15829">
                            </path>
                            <path data-v-0544793f
                                d="M426.666667 426.666667m-256 0a256 256 0 1 0 512 0 256 256 0 1 0-512 0Z"
                                fill="#B3E5FC" p-id="15830">
                            </path>
                        </svg>
                    </div>
                </div>
            </div>
            <div>
                <div data-v-362b6a26 class="home">
                    <div data-v-362b6a26 class="mid_content">

                        <div data-v-362b6a26>
                            <div data-v-5924636a data-v-362b6a26
                                class="top_game_1">
                                <div data-v-5776c7ec data-v-5924636a
                                    class="title_index">
                                    <div data-v-9f35d832 data-v-5776c7ec
                                        class="default_title">

                                    </div>
                                </div>
                                <div data-v-05ea4fc9 class="similar_game">
                                    <div data-v-05ea4fc9 class="similar_list">

                                        <#list all_game as game>
                                            <div data-v-05ea4fc9
                                                 class="t_in_i_game_item">
                                                <a data-v-05ea4fc9
                                                   href="./detail.html?id=89">
                                                    <img data-v-05ea4fc9
                                                        alt
                                                         src="${game.gamePreview}">
                                                </a>
                                                <a data-v-05ea4fc9
                                                   href="./detail.html?id=89"
                                                   class="a">
                                                <span data-v-05ea4fc9>
                                                    ${game.gameName}
                                                </span>
                                                </a>
                                            </div>
                                        </#list>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div data-v-aadb60d4 id="back_top" class=" back_top"
                    style="opacity: 1; display: none;">
                    <svg data-v-aadb60d4 t="1688456792516"
                        viewBox="0 0 1024 1024" version="1.1"
                        xmlns="http://www.w3.org/2000/svg" p-id="21202"
                        xmlns:xlink="http://www.w3.org/1999/xlink" width="50"
                        height="50" class="icon">
                        <path data-v-aadb60d4
                            d="M512 68.266667c245.060267 0 443.733333 198.673067 443.733333 443.733333S757.060267 955.733333 512 955.733333 68.266667 757.060267 68.266667 512 266.939733 68.266667 512 68.266667"
                            fill="#1c7ed6" p-id="21203"
                            data-spm-anchor-id="a313x.7781069.0.i40"
                            class="selected">
                        </path>
                        <path data-v-aadb60d4
                            d="M665.6 520.430933c-7.645867 0-15.291733-2.901333-21.111467-8.7552L512 379.221333l-132.488533 132.471467a29.832533 29.832533 0 0 1-42.222934 0 29.832533 29.832533 0 0 1 0-42.222933l153.6-153.6a29.832533 29.832533 0 0 1 42.222934 0l153.6 153.6A29.832533 29.832533 0 0 1 665.6 520.430933"
                            fill="#FFFFFF" p-id="21204">
                        </path>
                        <path data-v-aadb60d4
                            d="M512 717.4656a29.866667 29.866667 0 0 1-29.866667-29.866667V354.030933a29.866667 29.866667 0 0 1 59.733334 0v333.568a29.866667 29.866667 0 0 1-29.866667 29.866667"
                            fill="#FFFFFF" p-id="21205">
                        </path>
                    </svg>
                </div>
                <div data-v-3f9b7f6b class="footer_1"
                    style="padding-bottom: 0.2rem; padding-top: 1rem; background: var(--bgc-color-white);">
                    <div data-v-3f9b7f6b class="footer">
                        <div data-v-3f9b7f6b="">
                            <a data-v-3f9b7f6b="" href="/contact_us" target="_blank">
                                About Us
                            </a>
                        </div>
                        ●
                        <div data-v-3f9b7f6b>
                            <a data-v-3f9b7f6b href="/getAgreement"
                                target="_blank">
                                Users Agreement
                            </a>
                        </div>
                        ●
                        <div data-v-3f9b7f6b>
                            <a data-v-3f9b7f6b href="/privacy_policy"
                                target="_blank">
                                Privacy Policy
                            </a>
                        </div>
                    </div>
                    <div data-v-3f9b7f6b class="cop">
                        Copyright © 2019 - 2024, rianglo.com
                    </div>
                </div>
            </div>
        </div>
        <div data-v-7e327750 class="loadingWrap">
        </div>
        <script>
function resetRootFZ() {
var htmlDom = document.querySelector('html');
var w = htmlDom.getBoundingClientRect().width;
htmlDom.style.fontSize = w / 20 + 'px'
}
resetRootFZ();
window.addEventListener('resize',
function () {
resetRootFZ()
})
</script>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
        <script>
$(document).ready(function () {
var $openButton = $('.menu');
var $popup = $('.van-popup');

$openButton.click(function (event) {
event.stopPropagation();
$popup.css("left", "0rem")
});
$(document).click(function (event) {
if (!$popup.is(event.target) && $popup.has(event.target).length === 0) {
$popup.css("left", "-40rem")
}
});
$(window).scroll(function () {
var top1 = $(this).scrollTop();
if (top1 > 100) {
$("#back_top").stop().fadeIn();
} else {
$("#back_top").stop().fadeOut();
}
});
$("#back_top").click(function () {
$("body , html").animate({ scrollTop: 0 }, 300);
});
});
</script>


        <style
                data-id="immersive-translate-input-injected-css">.immersive-translate-input {
            position: absolute;
            top: 0;
            right: 0;
            left: 0;
            bottom: 0;
            z-index: 2147483647;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .immersive-translate-loading-spinner {
            vertical-align: middle !important;
            width: 10px !important;
            height: 10px !important;
            display: inline-block !important;
            margin: 0 4px !important;
            border: 2px rgba(221, 244, 255, 0.6) solid !important;
            border-top: 2px rgba(0, 0, 0, 0.375) solid !important;
            border-left: 2px rgba(0, 0, 0, 0.375) solid !important;
            border-radius: 50% !important;
            padding: 0 !important;
            -webkit-animation: immersive-translate-loading-animation 0.6s infinite linear !important;
            animation: immersive-translate-loading-animation 0.6s infinite linear !important;
        }

        @-webkit-keyframes immersive-translate-loading-animation {
            from {
                -webkit-transform: rotate(0deg);
            }

            to {
                -webkit-transform: rotate(359deg);
            }
        }

        @keyframes immersive-translate-loading-animation {
            from {
                transform: rotate(0deg);
            }

            to {
                transform: rotate(359deg);
            }
        }


        .immersive-translate-input-loading {
            --loading-color: #f78fb6;
            width: 6px;
            height: 6px;
            border-radius: 50%;
            display: block;
            margin: 12px auto;
            position: relative;
            color: white;
            left: -100px;
            box-sizing: border-box;
            animation: immersiveTranslateShadowRolling 1.5s linear infinite;
        }

        @keyframes immersiveTranslateShadowRolling {
            0% {
                box-shadow: 0px 0 rgba(255, 255, 255, 0), 0px 0 rgba(255, 255, 255, 0), 0px 0 rgba(255, 255, 255, 0), 0px 0 rgba(255, 255, 255, 0);
            }

            12% {
                box-shadow: 100px 0 var(--loading-color), 0px 0 rgba(255, 255, 255, 0), 0px 0 rgba(255, 255, 255, 0), 0px 0 rgba(255, 255, 255, 0);
            }

            25% {
                box-shadow: 110px 0 var(--loading-color), 100px 0 var(--loading-color), 0px 0 rgba(255, 255, 255, 0), 0px 0 rgba(255, 255, 255, 0);
            }

            36% {
                box-shadow: 120px 0 var(--loading-color), 110px 0 var(--loading-color), 100px 0 var(--loading-color), 0px 0 rgba(255, 255, 255, 0);
            }

            50% {
                box-shadow: 130px 0 var(--loading-color), 120px 0 var(--loading-color), 110px 0 var(--loading-color), 100px 0 var(--loading-color);
            }

            62% {
                box-shadow: 200px 0 rgba(255, 255, 255, 0), 130px 0 var(--loading-color), 120px 0 var(--loading-color), 110px 0 var(--loading-color);
            }

            75% {
                box-shadow: 200px 0 rgba(255, 255, 255, 0), 200px 0 rgba(255, 255, 255, 0), 130px 0 var(--loading-color), 120px 0 var(--loading-color);
            }

            87% {
                box-shadow: 200px 0 rgba(255, 255, 255, 0), 200px 0 rgba(255, 255, 255, 0), 200px 0 rgba(255, 255, 255, 0), 130px 0 var(--loading-color);
            }

            100% {
                box-shadow: 200px 0 rgba(255, 255, 255, 0), 200px 0 rgba(255, 255, 255, 0), 200px 0 rgba(255, 255, 255, 0), 200px 0 rgba(255, 255, 255, 0);
            }
        }


        .immersive-translate-search-recomend {
            border: 1px solid #dadce0;
            border-radius: 8px;
            padding: 16px;
            margin-bottom: 16px;
            position: relative;
            font-size: 16px;
        }
        .immersive-translate-search-enhancement-en-title {
            color: #4d5156;
        }
        /* dark */
        @media (prefers-color-scheme: dark) {
            .immersive-translate-search-recomend {
                border: 1px solid #3c4043;
            }
            .immersive-translate-close-action svg {
                fill: #bdc1c6;
            }

            .immersive-translate-search-enhancement-en-title {
                color: #bdc1c6;
            }
        }


        .immersive-translate-search-settings {
            position: absolute;
            top: 16px;
            right: 16px;
            cursor: pointer;
        }

        .immersive-translate-search-recomend::before {
            /* content: " "; */
            /* width: 20px; */
            /* height: 20px; */
            /* top: 16px; */
            /* position: absolute; */
            /* background: center / contain url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAAxlBMVEUAAADpTInqTIjpSofnSIfqS4nfS4XqS4nqTIjsTYnrTInqTIroS4jvQIDqTIn////+/v7rSYjpTIn8/v7uaZzrTIr9/f3wfansWJL88/b85e73qc39+/v3xNnylrvrVI/98fb62Obva5/8+fr76vH4y9zpSIj74e353Oj1ocTzm77xhK/veKbtYpjsXJTqU47oTInxjrXyh7L99fj40eH2ttH1udD3sc31ssz1rMnykLXucqPtbqD85e/1xdn2u9DzqcXrUY6FaJb8AAAADnRSTlMA34BgIM8Q37/fz7+/EGOHcVQAAAGhSURBVDjLhZPncuowEEZFTW7bXVU7xsYYTO/p7bb3f6lICIOYJOT4h7/VnFmvrBFjrF3/CR/SajBHswafctG0Qg3O8O0Xa8BZ6uw7eLjqr30SofCDVSkemMinfL1ecy20r5ygR5zz3ArcAqJExPTPKhDENEmS30Q9+yo4lEQkqVTiIEAHCT10xWERRdH0Bq0aCOPZNDV3s0xaYce1lHEoDHU8wEh3qRJypNcTAeKUIjgKMeGLDoRCLVLTVf+Ownj8Kk6H9HM6QXPgYjQSB0F00EJEu10ILQrs/QeP77BSSr0MzLOyuJJQbnUoOOIUI/A8EeJk9E4YUHUWiRyTVKGgQUB8/3e/NpdGlfI+FMQyWsCBWyz4A/ZyHXyiiz0Ne5aGZssoxRmcChw8/EFKQ5JwwkUo3FRT5yXS7q+Y/rHDZmFktzpGMvO+5QofA4FPpEmGw+EWRCFvnaof7Zhe8NuYSLR0xErKLThUSs8gnODh87ssy6438yzbLzxl012HS19vfCf3CNhnbWOL1eEsDda+gDPUvri8tSZzNFrwIZf1NmNvqC1I/t8j7nYAAAAASUVORK5CYII='); */
        }

        .immersive-translate-search-title {}

        .immersive-translate-search-title-wrapper {}

        .immersive-translate-search-time {
            font-size: 12px;
            margin: 4px 0 24px;
            color: #70757a;
        }

        .immersive-translate-expand-items {
            display: none;
        }

        .immersive-translate-search-more {
            margin-top: 16px;
            font-size: 14px;
        }

        .immersive-translate-modal {
            display: none;
            position: fixed;
            z-index: 2147483647;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0, 0, 0);
            background-color: rgba(0, 0, 0, 0.4);
            font-size:15px;
        }

        .immersive-translate-modal-content {
            background-color: #fefefe;
            margin: 15% auto;
            padding: 20px;
            border: 1px solid #888;
            border-radius: 10px;
            width: 80%;
            max-width: 500px;
            font-family: system-ui, -apple-system, "Segoe UI", "Roboto", "Ubuntu",
            "Cantarell", "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji",
            "Segoe UI Symbol", "Noto Color Emoji";
        }

        .immersive-translate-modal-title {
            font-size: 1.3rem;
            font-weight: 500;
            margin-bottom: 20px;
            color: hsl(205, 20%, 32%);
        }

        .immersive-translate-modal-body {
            color: hsl(205, 20%, 32%)
        }

        .immersive-translate-close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .immersive-translate-close:hover,
        .immersive-translate-close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

        .immersive-translate-modal-footer {
            display: flex;
            justify-content: flex-end;
            flex-wrap: wrap;
            margin-top: 20px;
        }

        .immersive-translate-btn {
            width: fit-content;
            color: #fff;
            background-color: #ea4c89;
            border: none;
            font-size: 14px;
            margin: 5px;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            display: flex;
            align-items: center;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .immersive-translate-btn:hover {
            background-color: #f082ac;
        }
        .immersive-translate-cancel-btn {
            /* gray color */
            background-color: rgb(89, 107, 120);
        }


        .immersive-translate-cancel-btn:hover {
            background-color: hsl(205, 20%, 32%);
        }


        .immersive-translate-btn svg {
            margin-right: 5px;
        }

        .immersive-translate-link {
            cursor: pointer;
            user-select: none;
            -webkit-user-drag: none;
            text-decoration: none;
            color: #007bff;
            -webkit-tap-highlight-color: rgba(0, 0, 0, .1);
        }

        .immersive-translate-primary-link {
            cursor: pointer;
            user-select: none;
            -webkit-user-drag: none;
            text-decoration: none;
            color: #ea4c89;
            -webkit-tap-highlight-color: rgba(0, 0, 0, .1);
        }

        .immersive-translate-modal input[type="radio"] {
            margin: 0 6px;
            cursor: pointer;
        }

        .immersive-translate-modal label {
            cursor: pointer;
        }

        .immersive-translate-close-action {
            position: absolute;
            top: 2px;
            right: 0px;
            cursor: pointer;
        }



        </style>
    </body></html>