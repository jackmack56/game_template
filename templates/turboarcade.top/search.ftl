<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="description" content="${advert.content}"/>
    <meta name="keywords" content="${advert.keywords}"/>
    <meta name="author" content="">
    <title>${advert.title}</title>
    <meta
            name="viewport"
            content="width=device-width,user-scalable=no,minimum-scale=1,maximum-scale=1"
    />
    <link href="/domain/${advert.domain}/css/app.cccc71fbc122b4fe8770.css" rel="stylesheet"/>
    <style data-id="immersive-translate-input-injected-css">
        .immersive-translate-input {
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
                box-shadow: 0px 0 rgba(255, 255, 255, 0), 0px 0 rgba(255, 255, 255, 0),
                0px 0 rgba(255, 255, 255, 0), 0px 0 rgba(255, 255, 255, 0);
            }

            12% {
                box-shadow: 100px 0 var(--loading-color), 0px 0 rgba(255, 255, 255, 0),
                0px 0 rgba(255, 255, 255, 0), 0px 0 rgba(255, 255, 255, 0);
            }

            25% {
                box-shadow: 110px 0 var(--loading-color), 100px 0 var(--loading-color),
                0px 0 rgba(255, 255, 255, 0), 0px 0 rgba(255, 255, 255, 0);
            }

            36% {
                box-shadow: 120px 0 var(--loading-color), 110px 0 var(--loading-color),
                100px 0 var(--loading-color), 0px 0 rgba(255, 255, 255, 0);
            }

            50% {
                box-shadow: 130px 0 var(--loading-color), 120px 0 var(--loading-color),
                110px 0 var(--loading-color), 100px 0 var(--loading-color);
            }

            62% {
                box-shadow: 200px 0 rgba(255, 255, 255, 0),
                130px 0 var(--loading-color), 120px 0 var(--loading-color),
                110px 0 var(--loading-color);
            }

            75% {
                box-shadow: 200px 0 rgba(255, 255, 255, 0),
                200px 0 rgba(255, 255, 255, 0), 130px 0 var(--loading-color),
                120px 0 var(--loading-color);
            }

            87% {
                box-shadow: 200px 0 rgba(255, 255, 255, 0),
                200px 0 rgba(255, 255, 255, 0), 200px 0 rgba(255, 255, 255, 0),
                130px 0 var(--loading-color);
            }

            100% {
                box-shadow: 200px 0 rgba(255, 255, 255, 0),
                200px 0 rgba(255, 255, 255, 0), 200px 0 rgba(255, 255, 255, 0),
                200px 0 rgba(255, 255, 255, 0);
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

        .immersive-translate-search-title {
        }

        .immersive-translate-search-title-wrapper {
        }

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
            font-size: 15px;
        }

        .immersive-translate-modal-content {
            background-color: #fefefe;
            margin: 10% auto;
            padding: 40px 24px 24px;
            border: 1px solid #888;
            border-radius: 10px;
            width: 80%;
            max-width: 270px;
            font-family: system-ui, -apple-system, "Segoe UI", "Roboto", "Ubuntu",
            "Cantarell", "Noto Sans", sans-serif, "Apple Color Emoji",
            "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
            position: relative;
        }

        .immersive-translate-modal .immersive-translate-modal-content-in-input {
            max-width: 500px;
        }

        .immersive-translate-modal-content-in-input
        .immersive-translate-modal-body {
            text-align: left;
            max-height: unset;
        }

        .immersive-translate-modal-title {
            text-align: center;
            font-size: 16px;
            font-weight: 700;
            color: #333333;
        }

        .immersive-translate-modal-body {
            text-align: center;
            font-size: 14px;
            font-weight: 400;
            color: #333333;
            word-break: break-all;
            margin-top: 24px;
        }

        @media screen and (max-width: 768px) {
            .immersive-translate-modal-body {
                max-height: 250px;
                overflow-y: auto;
            }
        }

        .immersive-translate-close {
            color: #666666;
            position: absolute;
            right: 16px;
            top: 16px;
            font-size: 20px;
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
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 24px;
        }

        .immersive-translate-btn {
            width: fit-content;
            color: #fff;
            background-color: #ea4c89;
            border: none;
            font-size: 16px;
            margin: 0 8px;
            padding: 9px 30px;
            border-radius: 5px;
            display: flex;
            align-items: center;
            justify-content: center;
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

        .immersive-translate-action-btn {
            background-color: transparent;
            color: #ea4c89;
            border: 1px solid #ea4c89;
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
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1);
        }

        .immersive-translate-primary-link {
            cursor: pointer;
            user-select: none;
            -webkit-user-drag: none;
            text-decoration: none;
            color: #ea4c89;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0.1);
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

    <style id="onetrust-style">
        #onetrust-banner-sdk {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
        }

        #onetrust-banner-sdk .onetrust-vendors-list-handler {
            cursor: pointer;
            color: #1f96db;
            font-size: inherit;
            font-weight: bold;
            text-decoration: none;
            margin-left: 5px;
        }

        #onetrust-banner-sdk .onetrust-vendors-list-handler:hover {
            color: #1f96db;
        }

        #onetrust-banner-sdk:focus {
            outline: 2px solid #000;
            outline-offset: -2px;
        }

        #onetrust-banner-sdk a:focus {
            outline: 2px solid #000;
        }

        #onetrust-banner-sdk #onetrust-accept-btn-handler,
        #onetrust-banner-sdk #onetrust-reject-all-handler,
        #onetrust-banner-sdk #onetrust-pc-btn-handler {
            outline-offset: 1px;
        }

        #onetrust-banner-sdk.ot-bnr-w-logo .ot-bnr-logo {
            height: 64px;
            width: 64px;
        }

        #onetrust-banner-sdk .ot-tcf2-vendor-count.ot-text-bold {
            font-weight: bold;
        }

        #onetrust-banner-sdk .ot-close-icon,
        #onetrust-pc-sdk .ot-close-icon,
        #ot-sync-ntfy .ot-close-icon {
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
            height: 12px;
            width: 12px;
        }

        #onetrust-banner-sdk .powered-by-logo,
        #onetrust-banner-sdk .ot-pc-footer-logo a,
        #onetrust-pc-sdk .powered-by-logo,
        #onetrust-pc-sdk .ot-pc-footer-logo a,
        #ot-sync-ntfy .powered-by-logo,
        #ot-sync-ntfy .ot-pc-footer-logo a {
            background-size: contain;
            background-repeat: no-repeat;
            background-position: center;
            height: 25px;
            width: 152px;
            display: block;
            text-decoration: none;
            font-size: 0.75em;
        }

        #onetrust-banner-sdk .powered-by-logo:hover,
        #onetrust-banner-sdk .ot-pc-footer-logo a:hover,
        #onetrust-pc-sdk .powered-by-logo:hover,
        #onetrust-pc-sdk .ot-pc-footer-logo a:hover,
        #ot-sync-ntfy .powered-by-logo:hover,
        #ot-sync-ntfy .ot-pc-footer-logo a:hover {
            color: #565656;
        }

        #onetrust-banner-sdk h3 *,
        #onetrust-banner-sdk h4 *,
        #onetrust-banner-sdk h6 *,
        #onetrust-banner-sdk button *,
        #onetrust-banner-sdk a[data-parent-id] *,
        #onetrust-pc-sdk h3 *,
        #onetrust-pc-sdk h4 *,
        #onetrust-pc-sdk h6 *,
        #onetrust-pc-sdk button *,
        #onetrust-pc-sdk a[data-parent-id] *,
        #ot-sync-ntfy h3 *,
        #ot-sync-ntfy h4 *,
        #ot-sync-ntfy h6 *,
        #ot-sync-ntfy button *,
        #ot-sync-ntfy a[data-parent-id] * {
            font-size: inherit;
            font-weight: inherit;
            color: inherit;
        }

        #onetrust-banner-sdk .ot-hide,
        #onetrust-pc-sdk .ot-hide,
        #ot-sync-ntfy .ot-hide {
            display: none !important;
        }

        #onetrust-banner-sdk button.ot-link-btn:hover,
        #onetrust-pc-sdk button.ot-link-btn:hover,
        #ot-sync-ntfy button.ot-link-btn:hover {
            text-decoration: underline;
            opacity: 1;
        }

        #onetrust-pc-sdk .ot-sdk-row .ot-sdk-column {
            padding: 0;
        }

        #onetrust-pc-sdk .ot-sdk-container {
            padding-right: 0;
        }

        #onetrust-pc-sdk .ot-sdk-row {
            flex-direction: initial;
            width: 100%;
        }

        #onetrust-pc-sdk [type="checkbox"]:checked,
        #onetrust-pc-sdk [type="checkbox"]:not(:checked) {
            pointer-events: initial;
        }

        #onetrust-pc-sdk [type="checkbox"]:disabled + label::before,
        #onetrust-pc-sdk [type="checkbox"]:disabled + label:after,
        #onetrust-pc-sdk [type="checkbox"]:disabled + label {
            pointer-events: none;
            opacity: 0.7;
        }

        #onetrust-pc-sdk #vendor-list-content {
            transform: translate3d(0, 0, 0);
        }

        #onetrust-pc-sdk li input[type="checkbox"] {
            z-index: 1;
        }

        #onetrust-pc-sdk li .ot-checkbox label {
            z-index: 2;
        }

        #onetrust-pc-sdk li .ot-checkbox input[type="checkbox"] {
            height: auto;
            width: auto;
        }

        #onetrust-pc-sdk li .host-title a,
        #onetrust-pc-sdk li .ot-host-name a,
        #onetrust-pc-sdk li .accordion-text,
        #onetrust-pc-sdk li .ot-acc-txt {
            z-index: 2;
            position: relative;
        }

        #onetrust-pc-sdk input {
            margin: 3px 0.1ex;
        }

        #onetrust-pc-sdk .pc-logo,
        #onetrust-pc-sdk .ot-pc-logo {
            height: 60px;
            width: 180px;
            background-position: center;
            background-size: contain;
            background-repeat: no-repeat;
            display: inline-flex;
            justify-content: center;
            align-items: center;
        }

        #onetrust-pc-sdk .pc-logo img,
        #onetrust-pc-sdk .ot-pc-logo img {
            max-height: 100%;
            max-width: 100%;
        }

        #onetrust-pc-sdk .screen-reader-only,
        #onetrust-pc-sdk .ot-scrn-rdr,
        .ot-sdk-cookie-policy .screen-reader-only,
        .ot-sdk-cookie-policy .ot-scrn-rdr {
            border: 0;
            clip: rect(0 0 0 0);
            height: 1px;
            margin: -1px;
            overflow: hidden;
            padding: 0;
            position: absolute;
            width: 1px;
        }

        #onetrust-pc-sdk.ot-fade-in,
        .onetrust-pc-dark-filter.ot-fade-in,
        #onetrust-banner-sdk.ot-fade-in {
            animation-name: onetrust-fade-in;
            animation-duration: 400ms;
            animation-timing-function: ease-in-out;
        }

        #onetrust-pc-sdk.ot-hide {
            display: none !important;
        }

        .onetrust-pc-dark-filter.ot-hide {
            display: none !important;
        }

        #ot-sdk-btn.ot-sdk-show-settings,
        #ot-sdk-btn.optanon-show-settings {
            color: #68b631;
            border: 1px solid #68b631;
            height: auto;
            white-space: normal;
            word-wrap: break-word;
            padding: 0.8em 2em;
            font-size: 0.8em;
            line-height: 1.2;
            cursor: pointer;
            -moz-transition: 0.1s ease;
            -o-transition: 0.1s ease;
            -webkit-transition: 1s ease;
            transition: 0.1s ease;
        }

        #ot-sdk-btn.ot-sdk-show-settings:hover,
        #ot-sdk-btn.optanon-show-settings:hover {
            color: #fff;
            background-color: #68b631;
        }

        .onetrust-pc-dark-filter {
            background: rgba(0, 0, 0, 0.5);
            z-index: 2147483646;
            width: 100%;
            height: 100%;
            overflow: hidden;
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
        }

        @keyframes onetrust-fade-in {
            0% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
        }

        .ot-cookie-label {
            text-decoration: underline;
        }

        @media only screen and (min-width: 426px) and (max-width: 896px) and (orientation: landscape) {
            #onetrust-pc-sdk p {
                font-size: 0.75em;
            }
        }

        #onetrust-banner-sdk .banner-option-input:focus + label {
            outline: 1px solid #000;
            outline-style: auto;
        }

        .category-vendors-list-handler + a:focus,
        .category-vendors-list-handler + a:focus-visible {
            outline: 2px solid #000;
        }

        #onetrust-pc-sdk .ot-userid-title {
            margin-top: 10px;
        }

        #onetrust-pc-sdk .ot-userid-title > span,
        #onetrust-pc-sdk .ot-userid-timestamp > span {
            font-weight: 700;
        }

        #onetrust-pc-sdk .ot-userid-desc {
            font-style: italic;
        }

        #onetrust-pc-sdk .ot-host-desc a {
            pointer-events: initial;
        }

        #onetrust-pc-sdk .ot-ven-hdr > p a {
            position: relative;
            z-index: 2;
            pointer-events: initial;
        }

        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-vnd-info a,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-vnd-info a {
            margin-right: auto;
        }

        #onetrust-pc-sdk .ot-pc-footer-logo img {
            width: 136px;
            height: 16px;
        }

        #onetrust-pc-sdk .ot-pur-vdr-count {
            font-weight: 400;
            font-size: 0.7rem;
            padding-top: 3px;
            display: block;
        }

        #onetrust-banner-sdk .ot-optout-signal,
        #onetrust-pc-sdk .ot-optout-signal {
            border: 1px solid #32ae88;
            border-radius: 3px;
            padding: 5px;
            margin-bottom: 10px;
            background-color: #f9fffa;
            font-size: 0.85rem;
            line-height: 2;
        }

        #onetrust-banner-sdk .ot-optout-signal .ot-optout-icon,
        #onetrust-pc-sdk .ot-optout-signal .ot-optout-icon {
            display: inline;
            margin-right: 5px;
        }

        #onetrust-banner-sdk .ot-optout-signal svg,
        #onetrust-pc-sdk .ot-optout-signal svg {
            height: 20px;
            width: 30px;
            transform: scale(0.5);
        }

        #onetrust-banner-sdk .ot-optout-signal svg path,
        #onetrust-pc-sdk .ot-optout-signal svg path {
            fill: #32ae88;
        }

        #onetrust-banner-sdk,
        #onetrust-pc-sdk,
        #ot-sdk-cookie-policy,
        #ot-sync-ntfy {
            font-size: 16px;
        }

        #onetrust-banner-sdk *,
        #onetrust-banner-sdk ::after,
        #onetrust-banner-sdk ::before,
        #onetrust-pc-sdk *,
        #onetrust-pc-sdk ::after,
        #onetrust-pc-sdk ::before,
        #ot-sdk-cookie-policy *,
        #ot-sdk-cookie-policy ::after,
        #ot-sdk-cookie-policy ::before,
        #ot-sync-ntfy *,
        #ot-sync-ntfy ::after,
        #ot-sync-ntfy ::before {
            -webkit-box-sizing: content-box;
            -moz-box-sizing: content-box;
            box-sizing: content-box;
        }

        #onetrust-banner-sdk div,
        #onetrust-banner-sdk span,
        #onetrust-banner-sdk h1,
        #onetrust-banner-sdk h2,
        #onetrust-banner-sdk h3,
        #onetrust-banner-sdk h4,
        #onetrust-banner-sdk h5,
        #onetrust-banner-sdk h6,
        #onetrust-banner-sdk p,
        #onetrust-banner-sdk img,
        #onetrust-banner-sdk svg,
        #onetrust-banner-sdk button,
        #onetrust-banner-sdk section,
        #onetrust-banner-sdk a,
        #onetrust-banner-sdk label,
        #onetrust-banner-sdk input,
        #onetrust-banner-sdk ul,
        #onetrust-banner-sdk li,
        #onetrust-banner-sdk nav,
        #onetrust-banner-sdk table,
        #onetrust-banner-sdk thead,
        #onetrust-banner-sdk tr,
        #onetrust-banner-sdk td,
        #onetrust-banner-sdk tbody,
        #onetrust-banner-sdk .ot-main-content,
        #onetrust-banner-sdk .ot-toggle,
        #onetrust-banner-sdk #ot-content,
        #onetrust-banner-sdk #ot-pc-content,
        #onetrust-banner-sdk .checkbox,
        #onetrust-pc-sdk div,
        #onetrust-pc-sdk span,
        #onetrust-pc-sdk h1,
        #onetrust-pc-sdk h2,
        #onetrust-pc-sdk h3,
        #onetrust-pc-sdk h4,
        #onetrust-pc-sdk h5,
        #onetrust-pc-sdk h6,
        #onetrust-pc-sdk p,
        #onetrust-pc-sdk img,
        #onetrust-pc-sdk svg,
        #onetrust-pc-sdk button,
        #onetrust-pc-sdk section,
        #onetrust-pc-sdk a,
        #onetrust-pc-sdk label,
        #onetrust-pc-sdk input,
        #onetrust-pc-sdk ul,
        #onetrust-pc-sdk li,
        #onetrust-pc-sdk nav,
        #onetrust-pc-sdk table,
        #onetrust-pc-sdk thead,
        #onetrust-pc-sdk tr,
        #onetrust-pc-sdk td,
        #onetrust-pc-sdk tbody,
        #onetrust-pc-sdk .ot-main-content,
        #onetrust-pc-sdk .ot-toggle,
        #onetrust-pc-sdk #ot-content,
        #onetrust-pc-sdk #ot-pc-content,
        #onetrust-pc-sdk .checkbox,
        #ot-sdk-cookie-policy div,
        #ot-sdk-cookie-policy span,
        #ot-sdk-cookie-policy h1,
        #ot-sdk-cookie-policy h2,
        #ot-sdk-cookie-policy h3,
        #ot-sdk-cookie-policy h4,
        #ot-sdk-cookie-policy h5,
        #ot-sdk-cookie-policy h6,
        #ot-sdk-cookie-policy p,
        #ot-sdk-cookie-policy img,
        #ot-sdk-cookie-policy svg,
        #ot-sdk-cookie-policy button,
        #ot-sdk-cookie-policy section,
        #ot-sdk-cookie-policy a,
        #ot-sdk-cookie-policy label,
        #ot-sdk-cookie-policy input,
        #ot-sdk-cookie-policy ul,
        #ot-sdk-cookie-policy li,
        #ot-sdk-cookie-policy nav,
        #ot-sdk-cookie-policy table,
        #ot-sdk-cookie-policy thead,
        #ot-sdk-cookie-policy tr,
        #ot-sdk-cookie-policy td,
        #ot-sdk-cookie-policy tbody,
        #ot-sdk-cookie-policy .ot-main-content,
        #ot-sdk-cookie-policy .ot-toggle,
        #ot-sdk-cookie-policy #ot-content,
        #ot-sdk-cookie-policy #ot-pc-content,
        #ot-sdk-cookie-policy .checkbox,
        #ot-sync-ntfy div,
        #ot-sync-ntfy span,
        #ot-sync-ntfy h1,
        #ot-sync-ntfy h2,
        #ot-sync-ntfy h3,
        #ot-sync-ntfy h4,
        #ot-sync-ntfy h5,
        #ot-sync-ntfy h6,
        #ot-sync-ntfy p,
        #ot-sync-ntfy img,
        #ot-sync-ntfy svg,
        #ot-sync-ntfy button,
        #ot-sync-ntfy section,
        #ot-sync-ntfy a,
        #ot-sync-ntfy label,
        #ot-sync-ntfy input,
        #ot-sync-ntfy ul,
        #ot-sync-ntfy li,
        #ot-sync-ntfy nav,
        #ot-sync-ntfy table,
        #ot-sync-ntfy thead,
        #ot-sync-ntfy tr,
        #ot-sync-ntfy td,
        #ot-sync-ntfy tbody,
        #ot-sync-ntfy .ot-main-content,
        #ot-sync-ntfy .ot-toggle,
        #ot-sync-ntfy #ot-content,
        #ot-sync-ntfy #ot-pc-content,
        #ot-sync-ntfy .checkbox {
            font-family: inherit;
            font-weight: normal;
            -webkit-font-smoothing: auto;
            letter-spacing: normal;
            line-height: normal;
            padding: 0;
            margin: 0;
            height: auto;
            min-height: 0;
            max-height: none;
            width: auto;
            min-width: 0;
            max-width: none;
            border-radius: 0;
            border: none;
            clear: none;
            float: none;
            position: static;
            bottom: auto;
            left: auto;
            right: auto;
            top: auto;
            text-align: left;
            text-decoration: none;
            text-indent: 0;
            text-shadow: none;
            text-transform: none;
            white-space: normal;
            background: none;
            overflow: visible;
            vertical-align: baseline;
            visibility: visible;
            z-index: auto;
            box-shadow: none;
        }

        #onetrust-banner-sdk label:before,
        #onetrust-banner-sdk label:after,
        #onetrust-banner-sdk .checkbox:after,
        #onetrust-banner-sdk .checkbox:before,
        #onetrust-pc-sdk label:before,
        #onetrust-pc-sdk label:after,
        #onetrust-pc-sdk .checkbox:after,
        #onetrust-pc-sdk .checkbox:before,
        #ot-sdk-cookie-policy label:before,
        #ot-sdk-cookie-policy label:after,
        #ot-sdk-cookie-policy .checkbox:after,
        #ot-sdk-cookie-policy .checkbox:before,
        #ot-sync-ntfy label:before,
        #ot-sync-ntfy label:after,
        #ot-sync-ntfy .checkbox:after,
        #ot-sync-ntfy .checkbox:before {
            content: "";
            content: none;
        }

        #onetrust-banner-sdk .ot-sdk-container,
        #onetrust-pc-sdk .ot-sdk-container,
        #ot-sdk-cookie-policy .ot-sdk-container {
            position: relative;
            width: 100%;
            max-width: 100%;
            margin: 0 auto;
            padding: 0 20px;
            box-sizing: border-box;
        }

        #onetrust-banner-sdk .ot-sdk-column,
        #onetrust-banner-sdk .ot-sdk-columns,
        #onetrust-pc-sdk .ot-sdk-column,
        #onetrust-pc-sdk .ot-sdk-columns,
        #ot-sdk-cookie-policy .ot-sdk-column,
        #ot-sdk-cookie-policy .ot-sdk-columns {
            width: 100%;
            float: left;
            box-sizing: border-box;
            padding: 0;
            display: initial;
        }

        @media (min-width: 400px) {
            #onetrust-banner-sdk .ot-sdk-container,
            #onetrust-pc-sdk .ot-sdk-container,
            #ot-sdk-cookie-policy .ot-sdk-container {
                width: 90%;
                padding: 0;
            }
        }

        @media (min-width: 550px) {
            #onetrust-banner-sdk .ot-sdk-container,
            #onetrust-pc-sdk .ot-sdk-container,
            #ot-sdk-cookie-policy .ot-sdk-container {
                width: 100%;
            }

            #onetrust-banner-sdk .ot-sdk-column,
            #onetrust-banner-sdk .ot-sdk-columns,
            #onetrust-pc-sdk .ot-sdk-column,
            #onetrust-pc-sdk .ot-sdk-columns,
            #ot-sdk-cookie-policy .ot-sdk-column,
            #ot-sdk-cookie-policy .ot-sdk-columns {
                margin-left: 4%;
            }

            #onetrust-banner-sdk .ot-sdk-column:first-child,
            #onetrust-banner-sdk .ot-sdk-columns:first-child,
            #onetrust-pc-sdk .ot-sdk-column:first-child,
            #onetrust-pc-sdk .ot-sdk-columns:first-child,
            #ot-sdk-cookie-policy .ot-sdk-column:first-child,
            #ot-sdk-cookie-policy .ot-sdk-columns:first-child {
                margin-left: 0;
            }

            #onetrust-banner-sdk .ot-sdk-two.ot-sdk-columns,
            #onetrust-pc-sdk .ot-sdk-two.ot-sdk-columns,
            #ot-sdk-cookie-policy .ot-sdk-two.ot-sdk-columns {
                width: 13.3333333333%;
            }

            #onetrust-banner-sdk .ot-sdk-three.ot-sdk-columns,
            #onetrust-pc-sdk .ot-sdk-three.ot-sdk-columns,
            #ot-sdk-cookie-policy .ot-sdk-three.ot-sdk-columns {
                width: 22%;
            }

            #onetrust-banner-sdk .ot-sdk-four.ot-sdk-columns,
            #onetrust-pc-sdk .ot-sdk-four.ot-sdk-columns,
            #ot-sdk-cookie-policy .ot-sdk-four.ot-sdk-columns {
                width: 30.6666666667%;
            }

            #onetrust-banner-sdk .ot-sdk-eight.ot-sdk-columns,
            #onetrust-pc-sdk .ot-sdk-eight.ot-sdk-columns,
            #ot-sdk-cookie-policy .ot-sdk-eight.ot-sdk-columns {
                width: 65.3333333333%;
            }

            #onetrust-banner-sdk .ot-sdk-nine.ot-sdk-columns,
            #onetrust-pc-sdk .ot-sdk-nine.ot-sdk-columns,
            #ot-sdk-cookie-policy .ot-sdk-nine.ot-sdk-columns {
                width: 74%;
            }

            #onetrust-banner-sdk .ot-sdk-ten.ot-sdk-columns,
            #onetrust-pc-sdk .ot-sdk-ten.ot-sdk-columns,
            #ot-sdk-cookie-policy .ot-sdk-ten.ot-sdk-columns {
                width: 82.6666666667%;
            }

            #onetrust-banner-sdk .ot-sdk-eleven.ot-sdk-columns,
            #onetrust-pc-sdk .ot-sdk-eleven.ot-sdk-columns,
            #ot-sdk-cookie-policy .ot-sdk-eleven.ot-sdk-columns {
                width: 91.3333333333%;
            }

            #onetrust-banner-sdk .ot-sdk-twelve.ot-sdk-columns,
            #onetrust-pc-sdk .ot-sdk-twelve.ot-sdk-columns,
            #ot-sdk-cookie-policy .ot-sdk-twelve.ot-sdk-columns {
                width: 100%;
                margin-left: 0;
            }
        }

        #onetrust-banner-sdk h1,
        #onetrust-banner-sdk h2,
        #onetrust-banner-sdk h3,
        #onetrust-banner-sdk h4,
        #onetrust-banner-sdk h5,
        #onetrust-banner-sdk h6,
        #onetrust-pc-sdk h1,
        #onetrust-pc-sdk h2,
        #onetrust-pc-sdk h3,
        #onetrust-pc-sdk h4,
        #onetrust-pc-sdk h5,
        #onetrust-pc-sdk h6,
        #ot-sdk-cookie-policy h1,
        #ot-sdk-cookie-policy h2,
        #ot-sdk-cookie-policy h3,
        #ot-sdk-cookie-policy h4,
        #ot-sdk-cookie-policy h5,
        #ot-sdk-cookie-policy h6 {
            margin-top: 0;
            font-weight: 600;
            font-family: inherit;
        }

        #onetrust-banner-sdk h1,
        #onetrust-pc-sdk h1,
        #ot-sdk-cookie-policy h1 {
            font-size: 1.5rem;
            line-height: 1.2;
        }

        #onetrust-banner-sdk h2,
        #onetrust-pc-sdk h2,
        #ot-sdk-cookie-policy h2 {
            font-size: 1.5rem;
            line-height: 1.25;
        }

        #onetrust-banner-sdk h3,
        #onetrust-pc-sdk h3,
        #ot-sdk-cookie-policy h3 {
            font-size: 1.5rem;
            line-height: 1.3;
        }

        #onetrust-banner-sdk h4,
        #onetrust-pc-sdk h4,
        #ot-sdk-cookie-policy h4 {
            font-size: 1.5rem;
            line-height: 1.35;
        }

        #onetrust-banner-sdk h5,
        #onetrust-pc-sdk h5,
        #ot-sdk-cookie-policy h5 {
            font-size: 1.5rem;
            line-height: 1.5;
        }

        #onetrust-banner-sdk h6,
        #onetrust-pc-sdk h6,
        #ot-sdk-cookie-policy h6 {
            font-size: 1.5rem;
            line-height: 1.6;
        }

        @media (min-width: 550px) {
            #onetrust-banner-sdk h1,
            #onetrust-pc-sdk h1,
            #ot-sdk-cookie-policy h1 {
                font-size: 1.5rem;
            }

            #onetrust-banner-sdk h2,
            #onetrust-pc-sdk h2,
            #ot-sdk-cookie-policy h2 {
                font-size: 1.5rem;
            }

            #onetrust-banner-sdk h3,
            #onetrust-pc-sdk h3,
            #ot-sdk-cookie-policy h3 {
                font-size: 1.5rem;
            }

            #onetrust-banner-sdk h4,
            #onetrust-pc-sdk h4,
            #ot-sdk-cookie-policy h4 {
                font-size: 1.5rem;
            }

            #onetrust-banner-sdk h5,
            #onetrust-pc-sdk h5,
            #ot-sdk-cookie-policy h5 {
                font-size: 1.5rem;
            }

            #onetrust-banner-sdk h6,
            #onetrust-pc-sdk h6,
            #ot-sdk-cookie-policy h6 {
                font-size: 1.5rem;
            }
        }

        #onetrust-banner-sdk p,
        #onetrust-pc-sdk p,
        #ot-sdk-cookie-policy p {
            margin: 0 0 1em 0;
            font-family: inherit;
            line-height: normal;
        }

        #onetrust-banner-sdk a,
        #onetrust-pc-sdk a,
        #ot-sdk-cookie-policy a {
            color: #565656;
            text-decoration: underline;
        }

        #onetrust-banner-sdk a:hover,
        #onetrust-pc-sdk a:hover,
        #ot-sdk-cookie-policy a:hover {
            color: #565656;
            text-decoration: none;
        }

        #onetrust-banner-sdk .ot-sdk-button,
        #onetrust-banner-sdk button,
        #onetrust-pc-sdk .ot-sdk-button,
        #onetrust-pc-sdk button,
        #ot-sdk-cookie-policy .ot-sdk-button,
        #ot-sdk-cookie-policy button {
            margin-bottom: 1rem;
            font-family: inherit;
        }

        #onetrust-banner-sdk .ot-sdk-button,
        #onetrust-banner-sdk button,
        #onetrust-pc-sdk .ot-sdk-button,
        #onetrust-pc-sdk button,
        #ot-sdk-cookie-policy .ot-sdk-button,
        #ot-sdk-cookie-policy button {
            display: inline-block;
            height: 38px;
            padding: 0 30px;
            color: #555;
            text-align: center;
            font-size: 0.9em;
            font-weight: 400;
            line-height: 38px;
            letter-spacing: 0.01em;
            text-decoration: none;
            white-space: nowrap;
            background-color: rgba(0, 0, 0, 0);
            border-radius: 2px;
            border: 1px solid #bbb;
            cursor: pointer;
            box-sizing: border-box;
        }

        #onetrust-banner-sdk .ot-sdk-button:hover,
        #onetrust-banner-sdk
        :not(.ot-leg-btn-container)
        > button:not(.ot-link-btn):hover,
        #onetrust-banner-sdk
        :not(.ot-leg-btn-container)
        > button:not(.ot-link-btn):focus,
        #onetrust-pc-sdk .ot-sdk-button:hover,
        #onetrust-pc-sdk
        :not(.ot-leg-btn-container)
        > button:not(.ot-link-btn):hover,
        #onetrust-pc-sdk
        :not(.ot-leg-btn-container)
        > button:not(.ot-link-btn):focus,
        #ot-sdk-cookie-policy .ot-sdk-button:hover,
        #ot-sdk-cookie-policy
        :not(.ot-leg-btn-container)
        > button:not(.ot-link-btn):hover,
        #ot-sdk-cookie-policy
        :not(.ot-leg-btn-container)
        > button:not(.ot-link-btn):focus {
            color: #333;
            border-color: #888;
            opacity: 0.7;
        }

        #onetrust-banner-sdk .ot-sdk-button:focus,
        #onetrust-banner-sdk :not(.ot-leg-btn-container) > button:focus,
        #onetrust-pc-sdk .ot-sdk-button:focus,
        #onetrust-pc-sdk :not(.ot-leg-btn-container) > button:focus,
        #ot-sdk-cookie-policy .ot-sdk-button:focus,
        #ot-sdk-cookie-policy :not(.ot-leg-btn-container) > button:focus {
            outline: 2px solid #000;
        }

        #onetrust-banner-sdk .ot-sdk-button.ot-sdk-button-primary,
        #onetrust-banner-sdk button.ot-sdk-button-primary,
        #onetrust-banner-sdk input[type="submit"].ot-sdk-button-primary,
        #onetrust-banner-sdk input[type="reset"].ot-sdk-button-primary,
        #onetrust-banner-sdk input[type="button"].ot-sdk-button-primary,
        #onetrust-pc-sdk .ot-sdk-button.ot-sdk-button-primary,
        #onetrust-pc-sdk button.ot-sdk-button-primary,
        #onetrust-pc-sdk input[type="submit"].ot-sdk-button-primary,
        #onetrust-pc-sdk input[type="reset"].ot-sdk-button-primary,
        #onetrust-pc-sdk input[type="button"].ot-sdk-button-primary,
        #ot-sdk-cookie-policy .ot-sdk-button.ot-sdk-button-primary,
        #ot-sdk-cookie-policy button.ot-sdk-button-primary,
        #ot-sdk-cookie-policy input[type="submit"].ot-sdk-button-primary,
        #ot-sdk-cookie-policy input[type="reset"].ot-sdk-button-primary,
        #ot-sdk-cookie-policy input[type="button"].ot-sdk-button-primary {
            color: #fff;
            background-color: #33c3f0;
            border-color: #33c3f0;
        }

        #onetrust-banner-sdk .ot-sdk-button.ot-sdk-button-primary:hover,
        #onetrust-banner-sdk button.ot-sdk-button-primary:hover,
        #onetrust-banner-sdk input[type="submit"].ot-sdk-button-primary:hover,
        #onetrust-banner-sdk input[type="reset"].ot-sdk-button-primary:hover,
        #onetrust-banner-sdk input[type="button"].ot-sdk-button-primary:hover,
        #onetrust-banner-sdk .ot-sdk-button.ot-sdk-button-primary:focus,
        #onetrust-banner-sdk button.ot-sdk-button-primary:focus,
        #onetrust-banner-sdk input[type="submit"].ot-sdk-button-primary:focus,
        #onetrust-banner-sdk input[type="reset"].ot-sdk-button-primary:focus,
        #onetrust-banner-sdk input[type="button"].ot-sdk-button-primary:focus,
        #onetrust-pc-sdk .ot-sdk-button.ot-sdk-button-primary:hover,
        #onetrust-pc-sdk button.ot-sdk-button-primary:hover,
        #onetrust-pc-sdk input[type="submit"].ot-sdk-button-primary:hover,
        #onetrust-pc-sdk input[type="reset"].ot-sdk-button-primary:hover,
        #onetrust-pc-sdk input[type="button"].ot-sdk-button-primary:hover,
        #onetrust-pc-sdk .ot-sdk-button.ot-sdk-button-primary:focus,
        #onetrust-pc-sdk button.ot-sdk-button-primary:focus,
        #onetrust-pc-sdk input[type="submit"].ot-sdk-button-primary:focus,
        #onetrust-pc-sdk input[type="reset"].ot-sdk-button-primary:focus,
        #onetrust-pc-sdk input[type="button"].ot-sdk-button-primary:focus,
        #ot-sdk-cookie-policy .ot-sdk-button.ot-sdk-button-primary:hover,
        #ot-sdk-cookie-policy button.ot-sdk-button-primary:hover,
        #ot-sdk-cookie-policy input[type="submit"].ot-sdk-button-primary:hover,
        #ot-sdk-cookie-policy input[type="reset"].ot-sdk-button-primary:hover,
        #ot-sdk-cookie-policy input[type="button"].ot-sdk-button-primary:hover,
        #ot-sdk-cookie-policy .ot-sdk-button.ot-sdk-button-primary:focus,
        #ot-sdk-cookie-policy button.ot-sdk-button-primary:focus,
        #ot-sdk-cookie-policy input[type="submit"].ot-sdk-button-primary:focus,
        #ot-sdk-cookie-policy input[type="reset"].ot-sdk-button-primary:focus,
        #ot-sdk-cookie-policy input[type="button"].ot-sdk-button-primary:focus {
            color: #fff;
            background-color: #1eaedb;
            border-color: #1eaedb;
        }

        #onetrust-banner-sdk input[type="text"],
        #onetrust-pc-sdk input[type="text"],
        #ot-sdk-cookie-policy input[type="text"] {
            height: 38px;
            padding: 6px 10px;
            background-color: #fff;
            border: 1px solid #d1d1d1;
            border-radius: 4px;
            box-shadow: none;
            box-sizing: border-box;
        }

        #onetrust-banner-sdk input[type="text"],
        #onetrust-pc-sdk input[type="text"],
        #ot-sdk-cookie-policy input[type="text"] {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }

        #onetrust-banner-sdk input[type="text"]:focus,
        #onetrust-pc-sdk input[type="text"]:focus,
        #ot-sdk-cookie-policy input[type="text"]:focus {
            border: 1px solid #000;
            outline: 0;
        }

        #onetrust-banner-sdk label,
        #onetrust-pc-sdk label,
        #ot-sdk-cookie-policy label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 600;
        }

        #onetrust-banner-sdk input[type="checkbox"],
        #onetrust-pc-sdk input[type="checkbox"],
        #ot-sdk-cookie-policy input[type="checkbox"] {
            display: inline;
        }

        #onetrust-banner-sdk ul,
        #onetrust-pc-sdk ul,
        #ot-sdk-cookie-policy ul {
            list-style: circle inside;
        }

        #onetrust-banner-sdk ul,
        #onetrust-pc-sdk ul,
        #ot-sdk-cookie-policy ul {
            padding-left: 0;
            margin-top: 0;
        }

        #onetrust-banner-sdk ul ul,
        #onetrust-pc-sdk ul ul,
        #ot-sdk-cookie-policy ul ul {
            margin: 1.5rem 0 1.5rem 3rem;
            font-size: 90%;
        }

        #onetrust-banner-sdk li,
        #onetrust-pc-sdk li,
        #ot-sdk-cookie-policy li {
            margin-bottom: 1rem;
        }

        #onetrust-banner-sdk th,
        #onetrust-banner-sdk td,
        #onetrust-pc-sdk th,
        #onetrust-pc-sdk td,
        #ot-sdk-cookie-policy th,
        #ot-sdk-cookie-policy td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #e1e1e1;
        }

        #onetrust-banner-sdk button,
        #onetrust-pc-sdk button,
        #ot-sdk-cookie-policy button {
            margin-bottom: 1rem;
            font-family: inherit;
        }

        #onetrust-banner-sdk .ot-sdk-container:after,
        #onetrust-banner-sdk .ot-sdk-row:after,
        #onetrust-pc-sdk .ot-sdk-container:after,
        #onetrust-pc-sdk .ot-sdk-row:after,
        #ot-sdk-cookie-policy .ot-sdk-container:after,
        #ot-sdk-cookie-policy .ot-sdk-row:after {
            content: "";
            display: table;
            clear: both;
        }

        #onetrust-banner-sdk .ot-sdk-row,
        #onetrust-pc-sdk .ot-sdk-row,
        #ot-sdk-cookie-policy .ot-sdk-row {
            margin: 0;
            max-width: none;
            display: block;
        }

        #onetrust-banner-sdk {
            box-shadow: 0 0 18px rgba(0, 0, 0, 0.2);
        }

        #onetrust-banner-sdk.otCenterRounded {
            z-index: 2147483645;
            top: 10%;
            position: fixed;
            right: 0;
            background-color: #fff;
            width: 60%;
            max-width: 650px;
            border-radius: 2.5px;
            left: 1em;
            margin: 0 auto;
            font-size: 14px;
            max-height: 90%;
            overflow-x: hidden;
            overflow-y: auto;
        }

        #onetrust-banner-sdk.otRelFont {
            font-size: 0.875rem;
        }

        #onetrust-banner-sdk::-webkit-scrollbar {
            width: 11px;
        }

        #onetrust-banner-sdk::-webkit-scrollbar-thumb {
            border-radius: 10px;
            background: #c1c1c1;
        }

        #onetrust-banner-sdk {
            scrollbar-arrow-color: #c1c1c1;
            scrollbar-darkshadow-color: #c1c1c1;
            scrollbar-face-color: #c1c1c1;
            scrollbar-shadow-color: #c1c1c1;
        }

        #onetrust-banner-sdk h3,
        #onetrust-banner-sdk p {
            color: dimgray;
        }

        #onetrust-banner-sdk #onetrust-policy {
            margin-top: 40px;
        }

        #onetrust-banner-sdk #onetrust-policy-title {
            float: left;
            text-align: left;
            font-size: 1em;
            line-height: 1.4;
            margin-bottom: 0;
            padding: 0 0 10px 30px;
            width: calc(100% - 90px);
        }

        #onetrust-banner-sdk #onetrust-policy-text,
        #onetrust-banner-sdk .ot-b-addl-desc,
        #onetrust-banner-sdk .ot-gv-list-handler {
            clear: both;
            float: left;
            margin: 0 30px 10px 30px;
            font-size: 0.813em;
            line-height: 1.5;
        }

        #onetrust-banner-sdk #onetrust-policy-text *,
        #onetrust-banner-sdk .ot-b-addl-desc *,
        #onetrust-banner-sdk .ot-gv-list-handler * {
            line-height: inherit;
            font-size: inherit;
            margin: 0;
        }

        #onetrust-banner-sdk .ot-optout-signal {
            margin: 0 1.875rem 0.625rem 1.875rem;
        }

        #onetrust-banner-sdk .ot-gv-list-handler {
            padding: 0;
            border: 0;
            height: auto;
            width: auto;
        }

        #onetrust-banner-sdk .ot-b-addl-desc {
            display: block;
        }

        #onetrust-banner-sdk #onetrust-button-group-parent {
            padding: 15px 30px;
            text-align: center;
        }

        #onetrust-banner-sdk
        #onetrust-button-group-parent:not(.has-reject-all-button)
        #onetrust-button-group {
            text-align: right;
        }

        #onetrust-banner-sdk #onetrust-button-group {
            text-align: center;
            display: inline-block;
            width: 100%;
        }

        #onetrust-banner-sdk #onetrust-reject-all-handler,
        #onetrust-banner-sdk #onetrust-pc-btn-handler {
            margin-right: 1em;
        }

        #onetrust-banner-sdk #onetrust-pc-btn-handler {
            border: 1px solid #6cc04a;
            max-width: 45%;
        }

        #onetrust-banner-sdk .banner-actions-container {
            float: right;
            width: 50%;
        }

        #onetrust-banner-sdk #onetrust-pc-btn-handler.cookie-setting-link {
            background-color: #fff;
            border: none;
            color: #6cc04a;
            text-decoration: underline;
            padding-left: 0;
            padding-right: 0;
        }

        #onetrust-banner-sdk #onetrust-accept-btn-handler,
        #onetrust-banner-sdk #onetrust-reject-all-handler,
        #onetrust-banner-sdk #onetrust-pc-btn-handler {
            background-color: #6cc04a;
            color: #fff;
            border-color: #6cc04a;
            min-width: 135px;
            padding: 12px 10px;
            letter-spacing: 0.05em;
            line-height: 1.4;
            font-size: 0.813em;
            font-weight: 600;
            height: auto;
            white-space: normal;
            word-break: break-word;
            word-wrap: break-word;
        }

        #onetrust-banner-sdk .has-reject-all-button #onetrust-pc-btn-handler {
            float: left;
            max-width: calc(40% - 18px);
        }

        #onetrust-banner-sdk
        .has-reject-all-button
        #onetrust-pc-btn-handler.cookie-setting-link {
            text-align: left;
            margin-right: 0;
        }

        #onetrust-banner-sdk .has-reject-all-button .banner-actions-container {
            max-width: 60%;
            width: auto;
        }

        #onetrust-banner-sdk .ot-close-icon {
            width: 44px;
            height: 44px;
            background-size: 12px;
            margin: -18px -18px 0 0;
            border: none;
            display: inline-block;
            padding: 0;
        }

        #onetrust-banner-sdk #onetrust-close-btn-container {
            position: absolute;
            right: 24px;
            top: 20px;
        }

        #onetrust-banner-sdk .banner_logo {
            display: none;
        }

        #onetrust-banner-sdk.ot-bnr-w-logo #onetrust-policy {
            margin-top: 10px;
        }

        #onetrust-banner-sdk.ot-bnr-w-logo .ot-bnr-logo {
            margin: 4px 25px;
        }

        #onetrust-banner-sdk #banner-options {
            float: left;
            padding: 0 30px;
            width: calc(100% - 90px);
        }

        #onetrust-banner-sdk .banner-option {
            margin-bottom: 10px;
        }

        #onetrust-banner-sdk .banner-option-input {
            cursor: pointer;
            width: auto;
            height: auto;
            border: none;
            padding: 0;
            padding-right: 3px;
            margin: 0 0 6px;
            font-size: 0.82em;
            line-height: 1.4;
        }

        #onetrust-banner-sdk .banner-option-input * {
            pointer-events: none;
            font-size: inherit;
            line-height: inherit;
        }

        #onetrust-banner-sdk
        .banner-option-input[aria-expanded="true"]
        .ot-arrow-container {
            transform: rotate(90deg);
        }

        #onetrust-banner-sdk
        .banner-option-input[aria-expanded="true"]
        ~ .banner-option-details {
            height: auto;
            display: block;
        }

        #onetrust-banner-sdk .banner-option-header {
            cursor: pointer;
            display: inline-block;
        }

        #onetrust-banner-sdk .banner-option-header :first-child {
            color: dimgray;
            font-weight: bold;
            float: left;
        }

        #onetrust-banner-sdk .ot-arrow-container,
        #onetrust-banner-sdk .banner-option-details {
            transition: all 300ms ease-in 0s;
            -webkit-transition: all 300ms ease-in 0s;
            -moz-transition: all 300ms ease-in 0s;
            -o-transition: all 300ms ease-in 0s;
        }

        #onetrust-banner-sdk .ot-arrow-container {
            display: inline-block;
            border-top: 6px solid rgba(0, 0, 0, 0);
            border-bottom: 6px solid rgba(0, 0, 0, 0);
            border-left: 6px solid dimgray;
            margin-left: 10px;
            vertical-align: middle;
        }

        #onetrust-banner-sdk .banner-option-details {
            display: none;
            font-size: 0.83em;
            line-height: 1.5;
            height: 0px;
            padding: 10px 10px 5px 10px;
        }

        #onetrust-banner-sdk .banner-option-details * {
            font-size: inherit;
            line-height: inherit;
            color: dimgray;
        }

        #onetrust-banner-sdk .ot-dpd-container {
            float: left;
            margin: 0 30px 10px 30px;
        }

        #onetrust-banner-sdk .ot-dpd-title {
            font-weight: bold;
            padding-bottom: 10px;
        }

        #onetrust-banner-sdk .ot-dpd-title {
            font-size: 1em;
            line-height: 1.4;
        }

        #onetrust-banner-sdk .ot-dpd-desc {
            font-size: 0.813em;
            line-height: 1.5;
            margin-bottom: 0;
        }

        #onetrust-banner-sdk .ot-dpd-desc * {
            margin: 0;
        }

        #onetrust-banner-sdk .onetrust-vendors-list-handler {
            display: block;
            margin-left: 0px;
            margin-top: 5px;
            padding: 0;
            margin-bottom: 0;
            border: 0;
            line-height: normal;
            height: auto;
            width: auto;
        }

        #onetrust-banner-sdk :not(.ot-dpd-desc) > .ot-b-addl-desc {
            float: left;
            margin: 0 30px 10px 30px;
        }

        #onetrust-banner-sdk .ot-dpd-desc > .ot-b-addl-desc {
            margin-top: 10px;
            margin-bottom: 10px;
            font-size: 1em;
            line-height: 1.5;
            float: none;
        }

        #onetrust-banner-sdk #onetrust-policy-text a {
            font-weight: bold;
            margin-left: 5px;
        }

        #onetrust-banner-sdk.ot-close-btn-link #onetrust-close-btn-container {
            top: 15px;
            transform: none;
            right: 15px;
        }

        #onetrust-banner-sdk.ot-close-btn-link
        #onetrust-close-btn-container
        button {
            padding: 0;
            white-space: pre-wrap;
            border: none;
            height: auto;
            line-height: 1.5;
            text-decoration: underline;
            font-size: 0.75em;
        }

        #onetrust-banner-sdk.ot-close-btn-link.ot-wo-title
        #onetrust-group-container {
            margin-top: 20px;
        }

        @media only screen and (max-width: 425px) {
            #onetrust-banner-sdk #onetrust-accept-btn-handler,
            #onetrust-banner-sdk #onetrust-reject-all-handler,
            #onetrust-banner-sdk #onetrust-pc-btn-handler {
                width: 100%;
                margin-bottom: 10px;
            }

            #onetrust-banner-sdk #onetrust-pc-btn-handler,
            #onetrust-banner-sdk #onetrust-reject-all-handler {
                margin-right: 0;
            }

            #onetrust-banner-sdk
            .has-reject-all-button
            #onetrust-pc-btn-handler.cookie-setting-link {
                text-align: center;
            }

            #onetrust-banner-sdk .banner-actions-container,
            #onetrust-banner-sdk #onetrust-pc-btn-handler {
                width: 100%;
                max-width: none;
            }

            #onetrust-banner-sdk.otCenterRounded {
                left: 0;
                width: 95%;
                top: 50%;
                transform: translateY(-50%);
                -webkit-transform: translateY(-50%);
            }
        }

        @media only screen and (max-width: 600px) {
            #onetrust-banner-sdk .ot-sdk-container {
                width: auto;
                padding: 0;
            }

            #onetrust-banner-sdk #onetrust-policy-title {
                padding: 0 22px 10px 22px;
            }

            #onetrust-banner-sdk #onetrust-policy-text,
            #onetrust-banner-sdk :not(.ot-dpd-desc) > .ot-b-addl-desc,
            #onetrust-banner-sdk .ot-dpd-container {
                margin: 0 22px 10px 22px;
                width: calc(100% - 44px);
            }

            #onetrust-banner-sdk #onetrust-button-group-parent {
                padding: 15px 22px;
            }

            #onetrust-banner-sdk #banner-options {
                padding: 0 22px;
                width: calc(100% - 44px);
            }

            #onetrust-banner-sdk .banner-option {
                margin-bottom: 6px;
            }

            #onetrust-banner-sdk .has-reject-all-button #onetrust-pc-btn-handler {
                float: none;
                max-width: 100%;
            }

            #onetrust-banner-sdk .has-reject-all-button .banner-actions-container {
                width: 100%;
                text-align: center;
                max-width: 100%;
            }

            #onetrust-banner-sdk.ot-close-btn-link #onetrust-group-container {
                margin-top: 20px;
            }
        }

        @media only screen and (min-width: 426px) and (max-width: 896px) {
            #onetrust-banner-sdk.otCenterRounded {
                left: 0;
                top: 15%;
                transform: translateY(-13%);
                -webkit-transform: translateY(-13%);
                max-width: 600px;
                width: 95%;
            }
        }

        #onetrust-consent-sdk #onetrust-banner-sdk {
            background-color: #ffffff;
        }

        #onetrust-consent-sdk #onetrust-policy-title,
        #onetrust-consent-sdk #onetrust-policy-text,
        #onetrust-consent-sdk .ot-b-addl-desc,
        #onetrust-consent-sdk .ot-dpd-desc,
        #onetrust-consent-sdk .ot-dpd-title,
        #onetrust-consent-sdk
        #onetrust-policy-text
        *:not(.onetrust-vendors-list-handler),
        #onetrust-consent-sdk .ot-dpd-desc *:not(.onetrust-vendors-list-handler),
        #onetrust-consent-sdk #onetrust-banner-sdk #banner-options *,
        #onetrust-banner-sdk .ot-cat-header,
        #onetrust-banner-sdk .ot-optout-signal {
            color: #696969;
        }

        #onetrust-consent-sdk #onetrust-banner-sdk .banner-option-details {
            background-color: #e9e9e9;
        }

        #onetrust-consent-sdk #onetrust-banner-sdk a[href],
        #onetrust-consent-sdk #onetrust-banner-sdk a[href] font,
        #onetrust-consent-sdk #onetrust-banner-sdk .ot-link-btn {
            color: #3860be;
        }

        #onetrust-consent-sdk #onetrust-accept-btn-handler,
        #onetrust-banner-sdk #onetrust-reject-all-handler {
            background-color: #1e66d0;
            border-color: #1e66d0;
            color: #ffffff;
        }

        #onetrust-consent-sdk #onetrust-banner-sdk *:focus,
        #onetrust-consent-sdk #onetrust-banner-sdk:focus {
            outline-color: #000000;
            outline-width: 1px;
        }

        #onetrust-consent-sdk #onetrust-pc-btn-handler,
        #onetrust-consent-sdk #onetrust-pc-btn-handler.cookie-setting-link {
            color: #346e4a;
            border-color: #346e4a;
            background-color: #ffffff;
        }

        #onetrust-pc-sdk.otPcCenter {
            overflow: hidden;
            position: fixed;
            margin: 0 auto;
            top: 5%;
            right: 0;
            left: 0;
            width: 40%;
            max-width: 575px;
            min-width: 575px;
            border-radius: 2.5px;
            z-index: 2147483647;
            background-color: #fff;
            -webkit-box-shadow: 0px 2px 10px -3px #999;
            -moz-box-shadow: 0px 2px 10px -3px #999;
            box-shadow: 0px 2px 10px -3px #999;
        }

        #onetrust-pc-sdk.otPcCenter[dir="rtl"] {
            right: 0;
            left: 0;
        }

        #onetrust-pc-sdk.otRelFont {
            font-size: 1rem;
        }

        #onetrust-pc-sdk .ot-optout-signal {
            margin-top: 0.625rem;
        }

        #onetrust-pc-sdk #ot-addtl-venlst .ot-arw-cntr,
        #onetrust-pc-sdk #ot-addtl-venlst .ot-plus-minus,
        #onetrust-pc-sdk .ot-hide-tgl {
            visibility: hidden;
        }

        #onetrust-pc-sdk #ot-addtl-venlst .ot-arw-cntr *,
        #onetrust-pc-sdk #ot-addtl-venlst .ot-plus-minus *,
        #onetrust-pc-sdk .ot-hide-tgl * {
            visibility: hidden;
        }

        #onetrust-pc-sdk #ot-gn-venlst .ot-ven-item .ot-acc-hdr {
            min-height: 40px;
        }

        #onetrust-pc-sdk .ot-pc-header {
            height: 39px;
            padding: 10px 0 10px 30px;
            border-bottom: 1px solid #e9e9e9;
        }

        #onetrust-pc-sdk #ot-pc-title,
        #onetrust-pc-sdk #ot-category-title,
        #onetrust-pc-sdk .ot-cat-header,
        #onetrust-pc-sdk #ot-lst-title,
        #onetrust-pc-sdk .ot-ven-hdr .ot-ven-name,
        #onetrust-pc-sdk .ot-always-active {
            font-weight: bold;
            color: dimgray;
        }

        #onetrust-pc-sdk .ot-always-active-group .ot-cat-header {
            width: 55%;
            font-weight: 700;
        }

        #onetrust-pc-sdk .ot-cat-item p {
            clear: both;
            float: left;
            margin-top: 10px;
            margin-bottom: 5px;
            line-height: 1.5;
            font-size: 0.812em;
            color: dimgray;
        }

        #onetrust-pc-sdk .ot-close-icon {
            height: 44px;
            width: 44px;
            background-size: 10px;
        }

        #onetrust-pc-sdk #ot-pc-title {
            float: left;
            font-size: 1em;
            line-height: 1.5;
            margin-bottom: 10px;
            margin-top: 10px;
            width: 100%;
        }

        #onetrust-pc-sdk #accept-recommended-btn-handler {
            margin-right: 10px;
            margin-bottom: 25px;
            outline-offset: -1px;
        }

        #onetrust-pc-sdk #ot-pc-desc {
            clear: both;
            width: 100%;
            font-size: 0.812em;
            line-height: 1.5;
            margin-bottom: 25px;
        }

        #onetrust-pc-sdk #ot-pc-desc a {
            margin-left: 5px;
        }

        #onetrust-pc-sdk #ot-pc-desc * {
            font-size: inherit;
            line-height: inherit;
        }

        #onetrust-pc-sdk #ot-pc-desc ul li {
            padding: 10px 0px;
        }

        #onetrust-pc-sdk a {
            color: #656565;
            cursor: pointer;
        }

        #onetrust-pc-sdk a:hover {
            color: #3860be;
        }

        #onetrust-pc-sdk label {
            margin-bottom: 0;
        }

        #onetrust-pc-sdk #vdr-lst-dsc {
            font-size: 0.812em;
            line-height: 1.5;
            padding: 10px 15px 5px 15px;
        }

        #onetrust-pc-sdk button {
            max-width: 394px;
            padding: 12px 30px;
            line-height: 1;
            word-break: break-word;
            word-wrap: break-word;
            white-space: normal;
            font-weight: bold;
            height: auto;
        }

        #onetrust-pc-sdk .ot-link-btn {
            padding: 0;
            margin-bottom: 0;
            border: 0;
            font-weight: normal;
            line-height: normal;
            width: auto;
            height: auto;
        }

        #onetrust-pc-sdk #ot-pc-content {
            position: absolute;
            overflow-y: scroll;
            padding-left: 0px;
            padding-right: 30px;
            top: 60px;
            bottom: 110px;
            margin: 1px 3px 0 30px;
            width: calc(100% - 63px);
        }

        #onetrust-pc-sdk .ot-vs-list .ot-always-active,
        #onetrust-pc-sdk .ot-cat-grp .ot-always-active {
            float: right;
            clear: none;
            color: #3860be;
            margin: 0;
            font-size: 0.813em;
            line-height: 1.3;
        }

        #onetrust-pc-sdk .ot-pc-scrollbar::-webkit-scrollbar-track {
            margin-right: 20px;
        }

        #onetrust-pc-sdk .ot-pc-scrollbar::-webkit-scrollbar {
            width: 11px;
        }

        #onetrust-pc-sdk .ot-pc-scrollbar::-webkit-scrollbar-thumb {
            border-radius: 10px;
            background: #d8d8d8;
        }

        #onetrust-pc-sdk input[type="checkbox"]:focus + .ot-acc-hdr {
            outline: #000 1px solid;
        }

        #onetrust-pc-sdk .ot-pc-scrollbar {
            scrollbar-arrow-color: #d8d8d8;
            scrollbar-darkshadow-color: #d8d8d8;
            scrollbar-face-color: #d8d8d8;
            scrollbar-shadow-color: #d8d8d8;
        }

        #onetrust-pc-sdk .save-preference-btn-handler {
            margin-right: 20px;
        }

        #onetrust-pc-sdk .ot-pc-refuse-all-handler {
            margin-right: 10px;
        }

        #onetrust-pc-sdk #ot-pc-desc .privacy-notice-link {
            margin-left: 0;
            margin-right: 8px;
        }

        #onetrust-pc-sdk #ot-pc-desc .ot-imprint-handler {
            margin-left: 0;
            margin-right: 8px;
        }

        #onetrust-pc-sdk .ot-subgrp-cntr {
            display: inline-block;
            clear: both;
            width: 100%;
            padding-top: 15px;
        }

        #onetrust-pc-sdk .ot-switch + .ot-subgrp-cntr {
            padding-top: 10px;
        }

        #onetrust-pc-sdk ul.ot-subgrps {
            margin: 0;
            font-size: initial;
        }

        #onetrust-pc-sdk ul.ot-subgrps li p,
        #onetrust-pc-sdk ul.ot-subgrps li h5 {
            font-size: 0.813em;
            line-height: 1.4;
            color: dimgray;
        }

        #onetrust-pc-sdk ul.ot-subgrps .ot-switch {
            min-height: auto;
        }

        #onetrust-pc-sdk ul.ot-subgrps .ot-switch-nob {
            top: 0;
        }

        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr {
            display: inline-block;
            width: 100%;
        }

        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-txt {
            margin: 0;
        }

        #onetrust-pc-sdk ul.ot-subgrps li {
            padding: 0;
            border: none;
        }

        #onetrust-pc-sdk ul.ot-subgrps li h5 {
            position: relative;
            top: 5px;
            font-weight: bold;
            margin-bottom: 0;
            float: left;
        }

        #onetrust-pc-sdk li.ot-subgrp {
            margin-left: 20px;
            overflow: auto;
        }

        #onetrust-pc-sdk li.ot-subgrp > h5 {
            width: calc(100% - 100px);
        }

        #onetrust-pc-sdk .ot-cat-item p > ul,
        #onetrust-pc-sdk li.ot-subgrp p > ul {
            margin: 0px;
            list-style: disc;
            margin-left: 15px;
            font-size: inherit;
        }

        #onetrust-pc-sdk .ot-cat-item p > ul li,
        #onetrust-pc-sdk li.ot-subgrp p > ul li {
            font-size: inherit;
            padding-top: 10px;
            padding-left: 0px;
            padding-right: 0px;
            border: none;
        }

        #onetrust-pc-sdk .ot-cat-item p > ul li:last-child,
        #onetrust-pc-sdk li.ot-subgrp p > ul li:last-child {
            padding-bottom: 10px;
        }

        #onetrust-pc-sdk .ot-pc-logo {
            height: 40px;
            width: 120px;
        }

        #onetrust-pc-sdk .ot-pc-footer {
            position: absolute;
            bottom: 0px;
            width: 100%;
            max-height: 160px;
            border-top: 1px solid #d8d8d8;
        }

        #onetrust-pc-sdk.ot-ftr-stacked .ot-pc-refuse-all-handler {
            margin-bottom: 0px;
        }

        #onetrust-pc-sdk.ot-ftr-stacked #ot-pc-content {
            bottom: 160px;
        }

        #onetrust-pc-sdk.ot-ftr-stacked .ot-pc-footer button {
            width: 100%;
            max-width: none;
        }

        #onetrust-pc-sdk.ot-ftr-stacked .ot-btn-container {
            margin: 0 30px;
            width: calc(100% - 60px);
            padding-right: 0;
        }

        #onetrust-pc-sdk .ot-pc-footer-logo {
            height: 30px;
            width: 100%;
            text-align: right;
            background: #f4f4f4;
        }

        #onetrust-pc-sdk .ot-pc-footer-logo a {
            display: inline-block;
            margin-top: 5px;
            margin-right: 10px;
        }

        #onetrust-pc-sdk[dir="rtl"] .ot-pc-footer-logo {
            direction: rtl;
        }

        #onetrust-pc-sdk[dir="rtl"] .ot-pc-footer-logo a {
            margin-right: 25px;
        }

        #onetrust-pc-sdk .ot-tgl {
            float: right;
            position: relative;
            z-index: 1;
        }

        #onetrust-pc-sdk .ot-tgl input:checked + .ot-switch .ot-switch-nob {
            background-color: #cddcf2;
            border: 1px solid #3860be;
        }

        #onetrust-pc-sdk
        .ot-tgl
        input:checked
        + .ot-switch
        .ot-switch-nob:before {
            -webkit-transform: translateX(20px);
            -ms-transform: translateX(20px);
            transform: translateX(20px);
            background-color: #3860be;
            border-color: #3860be;
        }

        #onetrust-pc-sdk .ot-tgl input:focus + .ot-switch {
            outline: #000 solid 1px;
        }

        #onetrust-pc-sdk .ot-switch {
            position: relative;
            display: inline-block;
            width: 45px;
            height: 25px;
        }

        #onetrust-pc-sdk .ot-switch-nob {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #f2f1f1;
            border: 1px solid #ddd;
            transition: all 0.2s ease-in 0s;
            -moz-transition: all 0.2s ease-in 0s;
            -o-transition: all 0.2s ease-in 0s;
            -webkit-transition: all 0.2s ease-in 0s;
            border-radius: 20px;
        }

        #onetrust-pc-sdk .ot-switch-nob:before {
            position: absolute;
            content: "";
            height: 21px;
            width: 21px;
            bottom: 1px;
            background-color: #7d7d7d;
            -webkit-transition: 0.4s;
            transition: 0.4s;
            border-radius: 20px;
        }

        #onetrust-pc-sdk .ot-chkbox input:checked ~ label::before {
            background-color: #3860be;
        }

        #onetrust-pc-sdk .ot-chkbox input + label::after {
            content: none;
            color: #fff;
        }

        #onetrust-pc-sdk .ot-chkbox input:checked + label::after {
            content: "";
        }

        #onetrust-pc-sdk .ot-chkbox input:focus + label::before {
            outline-style: solid;
            outline-width: 2px;
            outline-style: auto;
        }

        #onetrust-pc-sdk .ot-chkbox label {
            position: relative;
            display: inline-block;
            padding-left: 30px;
            cursor: pointer;
            font-weight: 500;
        }

        #onetrust-pc-sdk .ot-chkbox label::before,
        #onetrust-pc-sdk .ot-chkbox label::after {
            position: absolute;
            content: "";
            display: inline-block;
            border-radius: 3px;
        }

        #onetrust-pc-sdk .ot-chkbox label::before {
            height: 18px;
            width: 18px;
            border: 1px solid #3860be;
            left: 0px;
            top: auto;
        }

        #onetrust-pc-sdk .ot-chkbox label::after {
            height: 5px;
            width: 9px;
            border-left: 3px solid;
            border-bottom: 3px solid;
            transform: rotate(-45deg);
            -o-transform: rotate(-45deg);
            -ms-transform: rotate(-45deg);
            -webkit-transform: rotate(-45deg);
            left: 4px;
            top: 5px;
        }

        #onetrust-pc-sdk .ot-label-txt {
            display: none;
        }

        #onetrust-pc-sdk .ot-chkbox input,
        #onetrust-pc-sdk .ot-tgl input {
            position: absolute;
            opacity: 0;
            width: 0;
            height: 0;
        }

        #onetrust-pc-sdk .ot-arw-cntr {
            float: right;
            position: relative;
            pointer-events: none;
        }

        #onetrust-pc-sdk .ot-arw-cntr .ot-arw {
            width: 16px;
            height: 16px;
            margin-left: 5px;
            color: dimgray;
            display: inline-block;
            vertical-align: middle;
            -webkit-transition: all 150ms ease-in 0s;
            -moz-transition: all 150ms ease-in 0s;
            -o-transition: all 150ms ease-in 0s;
            transition: all 150ms ease-in 0s;
        }

        #onetrust-pc-sdk input:checked ~ .ot-acc-hdr .ot-arw,
        #onetrust-pc-sdk
        button[aria-expanded="true"]
        ~ .ot-acc-hdr
        .ot-arw-cntr
        svg {
            transform: rotate(90deg);
            -o-transform: rotate(90deg);
            -ms-transform: rotate(90deg);
            -webkit-transform: rotate(90deg);
        }

        #onetrust-pc-sdk input[type="checkbox"]:focus + .ot-acc-hdr {
            outline: #000 1px solid;
        }

        #onetrust-pc-sdk .ot-tgl-cntr,
        #onetrust-pc-sdk .ot-arw-cntr {
            display: inline-block;
        }

        #onetrust-pc-sdk .ot-tgl-cntr {
            width: 45px;
            float: right;
            margin-top: 2px;
        }

        #onetrust-pc-sdk #ot-lst-cnt .ot-tgl-cntr {
            margin-top: 10px;
        }

        #onetrust-pc-sdk .ot-always-active-subgroup {
            width: auto;
            padding-left: 0px !important;
            top: 3px;
            position: relative;
        }

        #onetrust-pc-sdk .ot-label-status {
            padding-left: 5px;
            font-size: 0.75em;
            display: none;
        }

        #onetrust-pc-sdk .ot-arw-cntr {
            margin-top: -1px;
        }

        #onetrust-pc-sdk .ot-arw-cntr svg {
            -webkit-transition: all 300ms ease-in 0s;
            -moz-transition: all 300ms ease-in 0s;
            -o-transition: all 300ms ease-in 0s;
            transition: all 300ms ease-in 0s;
            height: 10px;
            width: 10px;
        }

        #onetrust-pc-sdk input:checked ~ .ot-acc-hdr .ot-arw {
            transform: rotate(90deg);
            -o-transform: rotate(90deg);
            -ms-transform: rotate(90deg);
            -webkit-transform: rotate(90deg);
        }

        #onetrust-pc-sdk .ot-arw {
            width: 10px;
            margin-left: 15px;
            transition: all 300ms ease-in 0s;
            -webkit-transition: all 300ms ease-in 0s;
            -moz-transition: all 300ms ease-in 0s;
            -o-transition: all 300ms ease-in 0s;
        }

        #onetrust-pc-sdk .ot-vlst-cntr {
            margin-bottom: 0;
        }

        #onetrust-pc-sdk .ot-hlst-cntr {
            margin-top: 5px;
            display: inline-block;
            width: 100%;
        }

        #onetrust-pc-sdk .category-vendors-list-handler,
        #onetrust-pc-sdk .category-vendors-list-handler + a,
        #onetrust-pc-sdk .category-host-list-handler {
            clear: both;
            color: #3860be;
            margin-left: 0;
            font-size: 0.813em;
            text-decoration: none;
            float: left;
            overflow: hidden;
        }

        #onetrust-pc-sdk .category-vendors-list-handler:hover,
        #onetrust-pc-sdk .category-vendors-list-handler + a:hover,
        #onetrust-pc-sdk .category-host-list-handler:hover {
            text-decoration-line: underline;
        }

        #onetrust-pc-sdk .category-vendors-list-handler + a {
            clear: none;
        }

        #onetrust-pc-sdk .ot-vlst-cntr .ot-ext-lnk,
        #onetrust-pc-sdk .ot-ven-hdr .ot-ext-lnk {
            display: inline-block;
            height: 13px;
            width: 13px;
            background-repeat: no-repeat;
            margin-left: 1px;
            margin-top: 6px;
            cursor: pointer;
        }

        #onetrust-pc-sdk .ot-ven-hdr .ot-ext-lnk {
            margin-bottom: -1px;
        }

        #onetrust-pc-sdk .back-btn-handler {
            font-size: 1em;
            text-decoration: none;
        }

        #onetrust-pc-sdk .back-btn-handler:hover {
            opacity: 0.6;
        }

        #onetrust-pc-sdk #ot-lst-title h3 {
            display: inline-block;
            word-break: break-word;
            word-wrap: break-word;
            margin-bottom: 0;
            color: #656565;
            font-size: 1em;
            font-weight: bold;
            margin-left: 15px;
        }

        #onetrust-pc-sdk #ot-lst-title {
            margin: 10px 0 10px 0px;
            font-size: 1em;
            text-align: left;
        }

        #onetrust-pc-sdk #ot-pc-hdr {
            margin: 0 0 0 30px;
            height: auto;
            width: auto;
        }

        #onetrust-pc-sdk #ot-pc-hdr input::placeholder {
            color: #d4d4d4;
            font-style: italic;
        }

        #onetrust-pc-sdk #vendor-search-handler {
            height: 31px;
            width: 100%;
            border-radius: 50px;
            font-size: 0.8em;
            padding-right: 35px;
            padding-left: 15px;
            float: left;
            margin-left: 15px;
        }

        #onetrust-pc-sdk .ot-ven-name {
            display: block;
            width: auto;
            padding-right: 5px;
        }

        #onetrust-pc-sdk #ot-lst-cnt {
            overflow-y: auto;
            margin-left: 20px;
            margin-right: 7px;
            width: calc(100% - 27px);
            max-height: calc(100% - 80px);
            height: 100%;
            transform: translate3d(0, 0, 0);
        }

        #onetrust-pc-sdk #ot-pc-lst {
            width: 100%;
            bottom: 100px;
            position: absolute;
            top: 60px;
        }

        #onetrust-pc-sdk #ot-pc-lst:not(.ot-enbl-chr) .ot-tgl-cntr .ot-arw-cntr,
        #onetrust-pc-sdk
        #ot-pc-lst:not(.ot-enbl-chr)
        .ot-tgl-cntr
        .ot-arw-cntr
        * {
            visibility: hidden;
        }

        #onetrust-pc-sdk #ot-pc-lst .ot-tgl-cntr {
            right: 12px;
            position: absolute;
        }

        #onetrust-pc-sdk #ot-pc-lst .ot-arw-cntr {
            float: right;
            position: relative;
        }

        #onetrust-pc-sdk #ot-pc-lst .ot-arw {
            margin-left: 10px;
        }

        #onetrust-pc-sdk #ot-pc-lst .ot-acc-hdr {
            overflow: hidden;
            cursor: pointer;
        }

        #onetrust-pc-sdk .ot-vlst-cntr {
            overflow: hidden;
        }

        #onetrust-pc-sdk #ot-sel-blk {
            overflow: hidden;
            width: 100%;
            position: sticky;
            position: -webkit-sticky;
            top: 0;
            z-index: 3;
        }

        #onetrust-pc-sdk #ot-back-arw {
            height: 12px;
            width: 12px;
        }

        #onetrust-pc-sdk .ot-lst-subhdr {
            width: 100%;
            display: inline-block;
        }

        #onetrust-pc-sdk .ot-search-cntr {
            float: left;
            width: 78%;
            position: relative;
        }

        #onetrust-pc-sdk .ot-search-cntr > svg {
            width: 30px;
            height: 30px;
            position: absolute;
            float: left;
            right: -15px;
        }

        #onetrust-pc-sdk .ot-fltr-cntr {
            float: right;
            right: 50px;
            position: relative;
        }

        #onetrust-pc-sdk #filter-btn-handler {
            background-color: #3860be;
            border-radius: 17px;
            display: inline-block;
            position: relative;
            width: 32px;
            height: 32px;
            -moz-transition: 0.1s ease;
            -o-transition: 0.1s ease;
            -webkit-transition: 1s ease;
            transition: 0.1s ease;
            padding: 0;
            margin: 0;
        }

        #onetrust-pc-sdk #filter-btn-handler:hover {
            background-color: #3860be;
        }

        #onetrust-pc-sdk #filter-btn-handler svg {
            width: 12px;
            height: 12px;
            margin: 3px 10px 0 10px;
            display: block;
            position: static;
            right: auto;
            top: auto;
        }

        #onetrust-pc-sdk .ot-ven-link,
        #onetrust-pc-sdk .ot-ven-legclaim-link {
            color: #3860be;
            text-decoration: none;
            font-weight: 100;
            display: inline-block;
            padding-top: 10px;
            transform: translate(0, 1%);
            -o-transform: translate(0, 1%);
            -ms-transform: translate(0, 1%);
            -webkit-transform: translate(0, 1%);
            position: relative;
            z-index: 2;
        }

        #onetrust-pc-sdk .ot-ven-link *,
        #onetrust-pc-sdk .ot-ven-legclaim-link * {
            font-size: inherit;
        }

        #onetrust-pc-sdk .ot-ven-link:hover,
        #onetrust-pc-sdk .ot-ven-legclaim-link:hover {
            text-decoration: underline;
        }

        #onetrust-pc-sdk .ot-ven-hdr {
            width: calc(100% - 160px);
            height: auto;
            float: left;
            word-break: break-word;
            word-wrap: break-word;
            vertical-align: middle;
            padding-bottom: 3px;
        }

        #onetrust-pc-sdk .ot-ven-link,
        #onetrust-pc-sdk .ot-ven-legclaim-link {
            letter-spacing: 0.03em;
            font-size: 0.75em;
            font-weight: 400;
        }

        #onetrust-pc-sdk .ot-ven-dets {
            border-radius: 2px;
            background-color: #f8f8f8;
        }

        #onetrust-pc-sdk .ot-ven-dets li:first-child p:first-child {
            border-top: none;
        }

        #onetrust-pc-sdk .ot-ven-dets .ot-ven-disc:not(:first-child) {
            border-top: 1px solid #ddd !important;
        }

        #onetrust-pc-sdk .ot-ven-dets .ot-ven-disc:nth-child(n + 3) p {
            display: inline-block;
        }

        #onetrust-pc-sdk
        .ot-ven-dets
        .ot-ven-disc:nth-child(n + 3)
        p:nth-of-type(odd) {
            width: 30%;
        }

        #onetrust-pc-sdk
        .ot-ven-dets
        .ot-ven-disc:nth-child(n + 3)
        p:nth-of-type(even) {
            width: 50%;
            word-break: break-word;
            word-wrap: break-word;
        }

        #onetrust-pc-sdk .ot-ven-dets .ot-ven-disc p,
        #onetrust-pc-sdk .ot-ven-dets .ot-ven-disc h4 {
            padding-top: 5px;
            padding-bottom: 5px;
            display: block;
        }

        #onetrust-pc-sdk .ot-ven-dets .ot-ven-disc h4 {
            display: inline-block;
        }

        #onetrust-pc-sdk .ot-ven-dets .ot-ven-disc p:nth-last-child(-n + 1) {
            padding-bottom: 10px;
        }

        #onetrust-pc-sdk
        .ot-ven-dets
        .ot-ven-disc
        p:nth-child(-n + 2):not(.disc-pur) {
            padding-top: 10px;
        }

        #onetrust-pc-sdk .ot-ven-dets .ot-ven-disc .disc-pur-cont {
            display: inline;
        }

        #onetrust-pc-sdk .ot-ven-dets .ot-ven-disc .disc-pur {
            position: relative;
            width: 50% !important;
            word-break: break-word;
            word-wrap: break-word;
            left: calc(30% + 17px);
        }

        #onetrust-pc-sdk .ot-ven-dets .ot-ven-disc .disc-pur:nth-child(-n + 1) {
            position: static;
        }

        #onetrust-pc-sdk .ot-ven-dets p,
        #onetrust-pc-sdk .ot-ven-dets h4,
        #onetrust-pc-sdk .ot-ven-dets span {
            font-size: 0.69em;
            text-align: left;
            vertical-align: middle;
            word-break: break-word;
            word-wrap: break-word;
            margin: 0;
            padding-bottom: 10px;
            padding-left: 15px;
            color: #2e3644;
        }

        #onetrust-pc-sdk .ot-ven-dets h4 {
            padding-top: 5px;
        }

        #onetrust-pc-sdk .ot-ven-dets span {
            color: dimgray;
            padding: 0;
            vertical-align: baseline;
        }

        #onetrust-pc-sdk .ot-ven-dets .ot-ven-pur h4 {
            border-top: 1px solid #e9e9e9;
            border-bottom: 1px solid #e9e9e9;
            padding-bottom: 5px;
            margin-bottom: 5px;
            font-weight: bold;
        }

        #onetrust-pc-sdk #ot-host-lst .ot-sel-all {
            float: right;
            position: relative;
            margin-right: 42px;
            top: 10px;
        }

        #onetrust-pc-sdk #ot-host-lst .ot-sel-all input[type="checkbox"] {
            width: auto;
            height: auto;
        }

        #onetrust-pc-sdk #ot-host-lst .ot-sel-all label {
            height: 20px;
            width: 20px;
            padding-left: 0px;
        }

        #onetrust-pc-sdk #ot-host-lst .ot-acc-txt {
            overflow: hidden;
            width: 95%;
        }

        #onetrust-pc-sdk .ot-host-hdr {
            position: relative;
            z-index: 1;
            pointer-events: none;
            width: calc(100% - 125px);
            float: left;
        }

        #onetrust-pc-sdk .ot-host-name,
        #onetrust-pc-sdk .ot-host-desc {
            display: inline-block;
            width: 90%;
        }

        #onetrust-pc-sdk .ot-host-name {
            pointer-events: none;
        }

        #onetrust-pc-sdk .ot-host-hdr > a {
            text-decoration: underline;
            font-size: 0.82em;
            position: relative;
            z-index: 2;
            float: left;
            margin-bottom: 5px;
            pointer-events: initial;
        }

        #onetrust-pc-sdk .ot-host-name + a {
            margin-top: 5px;
        }

        #onetrust-pc-sdk .ot-host-name,
        #onetrust-pc-sdk .ot-host-name a,
        #onetrust-pc-sdk .ot-host-desc,
        #onetrust-pc-sdk .ot-host-info {
            color: dimgray;
            word-break: break-word;
            word-wrap: break-word;
        }

        #onetrust-pc-sdk .ot-host-name,
        #onetrust-pc-sdk .ot-host-name a {
            font-weight: bold;
            font-size: 0.82em;
            line-height: 1.3;
        }

        #onetrust-pc-sdk .ot-host-name a {
            font-size: 1em;
        }

        #onetrust-pc-sdk .ot-host-expand {
            margin-top: 3px;
            margin-bottom: 3px;
            clear: both;
            display: block;
            color: #3860be;
            font-size: 0.72em;
            font-weight: normal;
        }

        #onetrust-pc-sdk .ot-host-expand * {
            font-size: inherit;
        }

        #onetrust-pc-sdk .ot-host-desc,
        #onetrust-pc-sdk .ot-host-info {
            font-size: 0.688em;
            line-height: 1.4;
            font-weight: normal;
        }

        #onetrust-pc-sdk .ot-host-desc {
            margin-top: 10px;
        }

        #onetrust-pc-sdk .ot-host-opt {
            margin: 0;
            font-size: inherit;
            display: inline-block;
            width: 100%;
        }

        #onetrust-pc-sdk .ot-host-opt li > div div {
            font-size: 0.8em;
            padding: 5px 0;
        }

        #onetrust-pc-sdk .ot-host-opt li > div div:nth-child(1) {
            width: 30%;
            float: left;
        }

        #onetrust-pc-sdk .ot-host-opt li > div div:nth-child(2) {
            width: 70%;
            float: left;
            word-break: break-word;
            word-wrap: break-word;
        }

        #onetrust-pc-sdk .ot-host-info {
            border: none;
            display: inline-block;
            width: calc(100% - 10px);
            padding: 10px;
            margin-bottom: 10px;
            background-color: #f8f8f8;
        }

        #onetrust-pc-sdk .ot-host-info > div {
            overflow: auto;
        }

        #onetrust-pc-sdk #no-results {
            text-align: center;
            margin-top: 30px;
        }

        #onetrust-pc-sdk #no-results p {
            font-size: 1em;
            color: #2e3644;
            word-break: break-word;
            word-wrap: break-word;
        }

        #onetrust-pc-sdk #no-results p span {
            font-weight: bold;
        }

        #onetrust-pc-sdk #ot-fltr-modal {
            width: 100%;
            height: auto;
            display: none;
            -moz-transition: 0.2s ease;
            -o-transition: 0.2s ease;
            -webkit-transition: 2s ease;
            transition: 0.2s ease;
            overflow: hidden;
            opacity: 1;
            right: 0;
        }

        #onetrust-pc-sdk #ot-fltr-modal .ot-label-txt {
            display: inline-block;
            font-size: 0.85em;
            color: dimgray;
        }

        #onetrust-pc-sdk #ot-fltr-cnt {
            z-index: 2147483646;
            background-color: #fff;
            position: absolute;
            height: 90%;
            max-height: 300px;
            width: 325px;
            left: 210px;
            margin-top: 10px;
            margin-bottom: 20px;
            padding-right: 10px;
            border-radius: 3px;
            -webkit-box-shadow: 0px 0px 12px 2px #c7c5c7;
            -moz-box-shadow: 0px 0px 12px 2px #c7c5c7;
            box-shadow: 0px 0px 12px 2px #c7c5c7;
        }

        #onetrust-pc-sdk .ot-fltr-scrlcnt {
            overflow-y: auto;
            overflow-x: hidden;
            clear: both;
            max-height: calc(100% - 60px);
        }

        #onetrust-pc-sdk #ot-anchor {
            border: 12px solid rgba(0, 0, 0, 0);
            display: none;
            position: absolute;
            z-index: 2147483647;
            right: 55px;
            top: 75px;
            transform: rotate(45deg);
            -o-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            background-color: #fff;
            -webkit-box-shadow: -3px -3px 5px -2px #c7c5c7;
            -moz-box-shadow: -3px -3px 5px -2px #c7c5c7;
            box-shadow: -3px -3px 5px -2px #c7c5c7;
        }

        #onetrust-pc-sdk .ot-fltr-btns {
            margin-left: 15px;
        }

        #onetrust-pc-sdk #filter-apply-handler {
            margin-right: 15px;
        }

        #onetrust-pc-sdk .ot-fltr-opt {
            margin-bottom: 25px;
            margin-left: 15px;
            width: 75%;
            position: relative;
        }

        #onetrust-pc-sdk .ot-fltr-opt p {
            display: inline-block;
            margin: 0;
            font-size: 0.9em;
            color: #2e3644;
        }

        #onetrust-pc-sdk .ot-chkbox label span {
            font-size: 0.85em;
            color: dimgray;
        }

        #onetrust-pc-sdk .ot-chkbox input[type="checkbox"] + label::after {
            content: none;
            color: #fff;
        }

        #onetrust-pc-sdk
        .ot-chkbox
        input[type="checkbox"]:checked
        + label::after {
            content: "";
        }

        #onetrust-pc-sdk .ot-chkbox input[type="checkbox"]:focus + label::before {
            outline-style: solid;
            outline-width: 2px;
            outline-style: auto;
        }

        #onetrust-pc-sdk #ot-selall-vencntr,
        #onetrust-pc-sdk #ot-selall-adtlvencntr,
        #onetrust-pc-sdk #ot-selall-hostcntr,
        #onetrust-pc-sdk #ot-selall-licntr,
        #onetrust-pc-sdk #ot-selall-gnvencntr {
            right: 15px;
            position: relative;
            width: 20px;
            height: 20px;
            float: right;
        }

        #onetrust-pc-sdk #ot-selall-vencntr label,
        #onetrust-pc-sdk #ot-selall-adtlvencntr label,
        #onetrust-pc-sdk #ot-selall-hostcntr label,
        #onetrust-pc-sdk #ot-selall-licntr label,
        #onetrust-pc-sdk #ot-selall-gnvencntr label {
            float: left;
            padding-left: 0;
        }

        #onetrust-pc-sdk #ot-ven-lst:first-child {
            border-top: 1px solid #e2e2e2;
        }

        #onetrust-pc-sdk ul {
            list-style: none;
            padding: 0;
        }

        #onetrust-pc-sdk ul li {
            position: relative;
            margin: 0;
            padding: 15px 15px 15px 10px;
            border-bottom: 1px solid #e2e2e2;
        }

        #onetrust-pc-sdk ul li h3 {
            font-size: 0.75em;
            color: #656565;
            margin: 0;
            display: inline-block;
            width: 70%;
            height: auto;
            word-break: break-word;
            word-wrap: break-word;
        }

        #onetrust-pc-sdk ul li p {
            margin: 0;
            font-size: 0.7em;
        }

        #onetrust-pc-sdk ul li input[type="checkbox"] {
            position: absolute;
            cursor: pointer;
            width: 100%;
            height: 100%;
            opacity: 0;
            margin: 0;
            top: 0;
            left: 0;
        }

        #onetrust-pc-sdk .ot-cat-item > button:focus,
        #onetrust-pc-sdk .ot-acc-cntr > button:focus,
        #onetrust-pc-sdk li > button:focus {
            outline: #000 solid 2px;
        }

        #onetrust-pc-sdk .ot-cat-item > button,
        #onetrust-pc-sdk .ot-acc-cntr > button,
        #onetrust-pc-sdk li > button {
            position: absolute;
            cursor: pointer;
            width: 100%;
            height: 100%;
            margin: 0;
            top: 0;
            left: 0;
            z-index: 1;
            max-width: none;
            border: none;
        }

        #onetrust-pc-sdk
        .ot-cat-item
        > button[aria-expanded="false"]
        ~ .ot-acc-txt,
        #onetrust-pc-sdk
        .ot-acc-cntr
        > button[aria-expanded="false"]
        ~ .ot-acc-txt,
        #onetrust-pc-sdk li > button[aria-expanded="false"] ~ .ot-acc-txt {
            margin-top: 0;
            max-height: 0;
            opacity: 0;
            overflow: hidden;
            width: 100%;
            transition: 0.25s ease-out;
            display: none;
        }

        #onetrust-pc-sdk
        .ot-cat-item
        > button[aria-expanded="true"]
        ~ .ot-acc-txt,
        #onetrust-pc-sdk
        .ot-acc-cntr
        > button[aria-expanded="true"]
        ~ .ot-acc-txt,
        #onetrust-pc-sdk li > button[aria-expanded="true"] ~ .ot-acc-txt {
            transition: 0.1s ease-in;
            margin-top: 10px;
            width: 100%;
            overflow: auto;
            display: block;
        }

        #onetrust-pc-sdk
        .ot-cat-item
        > button[aria-expanded="true"]
        ~ .ot-acc-grpcntr,
        #onetrust-pc-sdk
        .ot-acc-cntr
        > button[aria-expanded="true"]
        ~ .ot-acc-grpcntr,
        #onetrust-pc-sdk li > button[aria-expanded="true"] ~ .ot-acc-grpcntr {
            width: auto;
            margin-top: 0px;
            padding-bottom: 10px;
        }

        #onetrust-pc-sdk .ot-host-item > button:focus,
        #onetrust-pc-sdk .ot-ven-item > button:focus {
            outline: 0;
            border: 2px solid #000;
        }

        #onetrust-pc-sdk .ot-hide-acc > button {
            pointer-events: none;
        }

        #onetrust-pc-sdk .ot-hide-acc .ot-plus-minus > *,
        #onetrust-pc-sdk .ot-hide-acc .ot-arw-cntr > * {
            visibility: hidden;
        }

        #onetrust-pc-sdk .ot-hide-acc .ot-acc-hdr {
            min-height: 30px;
        }

        #onetrust-pc-sdk.ot-addtl-vendors #ot-lst-cnt:not(.ot-host-cnt) {
            padding-right: 10px;
            width: calc(100% - 37px);
            margin-top: 10px;
            max-height: calc(100% - 90px);
        }

        #onetrust-pc-sdk.ot-addtl-vendors
        #ot-lst-cnt:not(.ot-host-cnt)
        #ot-sel-blk {
            background-color: #f9f9fc;
            border: 1px solid #e2e2e2;
            width: calc(100% - 2px);
            padding-bottom: 5px;
            padding-top: 5px;
        }

        #onetrust-pc-sdk.ot-addtl-vendors
        #ot-lst-cnt:not(.ot-host-cnt)
        #ot-sel-blk.ot-vnd-list-cnt {
            border: unset;
            background-color: unset;
        }

        #onetrust-pc-sdk.ot-addtl-vendors
        #ot-lst-cnt:not(.ot-host-cnt)
        #ot-sel-blk.ot-vnd-list-cnt
        .ot-sel-all-hdr {
            display: none;
        }

        #onetrust-pc-sdk.ot-addtl-vendors
        #ot-lst-cnt:not(.ot-host-cnt)
        #ot-sel-blk.ot-vnd-list-cnt
        .ot-sel-all {
            padding-right: 0.5rem;
        }

        #onetrust-pc-sdk.ot-addtl-vendors
        #ot-lst-cnt:not(.ot-host-cnt)
        #ot-sel-blk.ot-vnd-list-cnt
        .ot-sel-all
        .ot-chkbox {
            right: 0;
        }

        #onetrust-pc-sdk.ot-addtl-vendors
        #ot-lst-cnt:not(.ot-host-cnt)
        .ot-sel-all {
            padding-right: 34px;
        }

        #onetrust-pc-sdk.ot-addtl-vendors
        #ot-lst-cnt:not(.ot-host-cnt)
        .ot-sel-all-chkbox {
            width: auto;
        }

        #onetrust-pc-sdk.ot-addtl-vendors #ot-lst-cnt:not(.ot-host-cnt) ul li {
            border: 1px solid #e2e2e2;
            margin-bottom: 10px;
        }

        #onetrust-pc-sdk.ot-addtl-vendors
        #ot-lst-cnt:not(.ot-host-cnt)
        .ot-acc-cntr
        > .ot-acc-hdr {
            padding: 10px 0 10px 15px;
        }

        #onetrust-pc-sdk.ot-addtl-vendors .ot-sel-all-chkbox {
            float: right;
        }

        #onetrust-pc-sdk.ot-addtl-vendors .ot-plus-minus ~ .ot-sel-all-chkbox {
            right: 34px;
        }

        #onetrust-pc-sdk.ot-addtl-vendors #ot-ven-lst:first-child {
            border-top: none;
        }

        #onetrust-pc-sdk .ot-acc-cntr {
            position: relative;
            border-left: 1px solid #e2e2e2;
            border-right: 1px solid #e2e2e2;
            border-bottom: 1px solid #e2e2e2;
        }

        #onetrust-pc-sdk .ot-acc-cntr input {
            z-index: 1;
        }

        #onetrust-pc-sdk .ot-acc-cntr > .ot-acc-hdr {
            background-color: #f9f9fc;
            padding: 5px 0 5px 15px;
            width: auto;
        }

        #onetrust-pc-sdk .ot-acc-cntr > .ot-acc-hdr .ot-plus-minus {
            vertical-align: middle;
            top: auto;
        }

        #onetrust-pc-sdk .ot-acc-cntr > .ot-acc-hdr .ot-arw-cntr {
            right: 10px;
        }

        #onetrust-pc-sdk .ot-acc-cntr > .ot-acc-hdr input {
            z-index: 2;
        }

        #onetrust-pc-sdk .ot-acc-cntr.ot-add-tech .ot-acc-hdr {
            padding: 10px 0 10px 15px;
        }

        #onetrust-pc-sdk
        .ot-acc-cntr
        > input[type="checkbox"]:checked
        ~ .ot-acc-hdr {
            border-bottom: 1px solid #e2e2e2;
        }

        #onetrust-pc-sdk .ot-acc-cntr > .ot-acc-txt {
            padding-left: 10px;
            padding-right: 10px;
        }

        #onetrust-pc-sdk .ot-acc-cntr button[aria-expanded="true"] ~ .ot-acc-txt {
            width: auto;
        }

        #onetrust-pc-sdk .ot-acc-cntr .ot-addtl-venbox {
            display: none;
        }

        #onetrust-pc-sdk .ot-vlst-cntr {
            margin-bottom: 0;
            width: 100%;
        }

        #onetrust-pc-sdk .ot-vensec-title {
            font-size: 0.813em;
            vertical-align: middle;
            display: inline-block;
        }

        #onetrust-pc-sdk .category-vendors-list-handler,
        #onetrust-pc-sdk .category-vendors-list-handler + a {
            margin-left: 0;
            margin-top: 10px;
        }

        #onetrust-pc-sdk #ot-selall-vencntr.line-through label::after,
        #onetrust-pc-sdk #ot-selall-adtlvencntr.line-through label::after,
        #onetrust-pc-sdk #ot-selall-licntr.line-through label::after,
        #onetrust-pc-sdk #ot-selall-hostcntr.line-through label::after,
        #onetrust-pc-sdk #ot-selall-gnvencntr.line-through label::after {
            height: auto;
            border-left: 0;
            transform: none;
            -o-transform: none;
            -ms-transform: none;
            -webkit-transform: none;
            left: 5px;
            top: 9px;
        }

        #onetrust-pc-sdk #ot-category-title {
            float: left;
            padding-bottom: 10px;
            font-size: 1em;
            width: 100%;
        }

        #onetrust-pc-sdk .ot-cat-grp {
            margin-top: 10px;
        }

        #onetrust-pc-sdk .ot-cat-item {
            line-height: 1.1;
            margin-top: 10px;
            display: inline-block;
            width: 100%;
        }

        #onetrust-pc-sdk .ot-btn-container {
            text-align: right;
        }

        #onetrust-pc-sdk .ot-btn-container button {
            display: inline-block;
            font-size: 0.75em;
            letter-spacing: 0.08em;
            margin-top: 19px;
        }

        #onetrust-pc-sdk #close-pc-btn-handler.ot-close-icon {
            position: absolute;
            top: 10px;
            right: 0;
            z-index: 1;
            padding: 0;
            background-color: rgba(0, 0, 0, 0);
            border: none;
        }

        #onetrust-pc-sdk #close-pc-btn-handler.ot-close-icon svg {
            display: block;
            height: 10px;
            width: 10px;
        }

        #onetrust-pc-sdk #clear-filters-handler {
            margin-top: 20px;
            margin-bottom: 10px;
            float: right;
            max-width: 200px;
            text-decoration: none;
            color: #3860be;
            font-size: 0.9em;
            font-weight: bold;
            background-color: rgba(0, 0, 0, 0);
            border-color: rgba(0, 0, 0, 0);
            padding: 1px;
        }

        #onetrust-pc-sdk #clear-filters-handler:hover {
            color: #2285f7;
        }

        #onetrust-pc-sdk #clear-filters-handler:focus {
            outline: #000 solid 1px;
        }

        #onetrust-pc-sdk .ot-enbl-chr h4 ~ .ot-tgl,
        #onetrust-pc-sdk .ot-enbl-chr h4 ~ .ot-always-active {
            right: 45px;
        }

        #onetrust-pc-sdk .ot-enbl-chr h4 ~ .ot-tgl + .ot-tgl {
            right: 120px;
        }

        #onetrust-pc-sdk
        .ot-enbl-chr
        .ot-pli-hdr.ot-leg-border-color
        span:first-child {
            width: 90px;
        }

        #onetrust-pc-sdk .ot-enbl-chr li.ot-subgrp > h5 + .ot-tgl-cntr {
            padding-right: 25px;
        }

        #onetrust-pc-sdk .ot-plus-minus {
            width: 20px;
            height: 20px;
            font-size: 1.5em;
            position: relative;
            display: inline-block;
            margin-right: 5px;
            top: 3px;
        }

        #onetrust-pc-sdk .ot-plus-minus span {
            position: absolute;
            background: #27455c;
            border-radius: 1px;
        }

        #onetrust-pc-sdk .ot-plus-minus span:first-of-type {
            top: 25%;
            bottom: 25%;
            width: 10%;
            left: 45%;
        }

        #onetrust-pc-sdk .ot-plus-minus span:last-of-type {
            left: 25%;
            right: 25%;
            height: 10%;
            top: 45%;
        }

        #onetrust-pc-sdk button[aria-expanded="true"] ~ .ot-acc-hdr .ot-arw,
        #onetrust-pc-sdk
        button[aria-expanded="true"]
        ~ .ot-acc-hdr
        .ot-plus-minus
        span:first-of-type,
        #onetrust-pc-sdk
        button[aria-expanded="true"]
        ~ .ot-acc-hdr
        .ot-plus-minus
        span:last-of-type {
            transform: rotate(90deg);
        }

        #onetrust-pc-sdk
        button[aria-expanded="true"]
        ~ .ot-acc-hdr
        .ot-plus-minus
        span:last-of-type {
            left: 50%;
            right: 50%;
        }

        #onetrust-pc-sdk #ot-selall-vencntr label,
        #onetrust-pc-sdk #ot-selall-adtlvencntr label,
        #onetrust-pc-sdk #ot-selall-hostcntr label,
        #onetrust-pc-sdk #ot-selall-licntr label {
            position: relative;
            display: inline-block;
            width: 20px;
            height: 20px;
        }

        #onetrust-pc-sdk .ot-host-item .ot-plus-minus,
        #onetrust-pc-sdk .ot-ven-item .ot-plus-minus {
            float: left;
            margin-right: 8px;
            top: 10px;
        }

        #onetrust-pc-sdk .ot-ven-item ul {
            list-style: none inside;
            font-size: 100%;
            margin: 0;
        }

        #onetrust-pc-sdk .ot-ven-item ul li {
            margin: 0 !important;
            padding: 0;
            border: none !important;
        }

        #onetrust-pc-sdk .ot-pli-hdr {
            color: #77808e;
            overflow: hidden;
            padding-top: 7.5px;
            padding-bottom: 7.5px;
            width: calc(100% - 2px);
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
        }

        #onetrust-pc-sdk .ot-pli-hdr span:first-child {
            top: 50%;
            transform: translateY(50%);
            max-width: 90px;
        }

        #onetrust-pc-sdk .ot-pli-hdr span:last-child {
            padding-right: 10px;
            max-width: 95px;
            text-align: center;
        }

        #onetrust-pc-sdk .ot-li-title {
            float: right;
            font-size: 0.813em;
        }

        #onetrust-pc-sdk .ot-pli-hdr.ot-leg-border-color {
            background-color: #f4f4f4;
            border: 1px solid #d8d8d8;
        }

        #onetrust-pc-sdk .ot-pli-hdr.ot-leg-border-color span:first-child {
            text-align: left;
            width: 70px;
        }

        #onetrust-pc-sdk li.ot-subgrp > h5,
        #onetrust-pc-sdk .ot-cat-header {
            width: calc(100% - 130px);
        }

        #onetrust-pc-sdk li.ot-subgrp > h5 + .ot-tgl-cntr {
            padding-left: 13px;
        }

        #onetrust-pc-sdk .ot-acc-grpcntr .ot-acc-grpdesc {
            margin-bottom: 5px;
        }

        #onetrust-pc-sdk .ot-acc-grpcntr .ot-subgrp-cntr {
            border-top: 1px solid #d8d8d8;
        }

        #onetrust-pc-sdk .ot-acc-grpcntr .ot-vlst-cntr + .ot-subgrp-cntr {
            border-top: none;
        }

        #onetrust-pc-sdk .ot-acc-hdr .ot-arw-cntr + .ot-tgl-cntr,
        #onetrust-pc-sdk .ot-acc-txt h4 + .ot-tgl-cntr {
            padding-left: 13px;
        }

        #onetrust-pc-sdk .ot-pli-hdr ~ .ot-cat-item .ot-subgrp > h5,
        #onetrust-pc-sdk .ot-pli-hdr ~ .ot-cat-item .ot-cat-header {
            width: calc(100% - 145px);
        }

        #onetrust-pc-sdk .ot-pli-hdr ~ .ot-cat-item h5 + .ot-tgl-cntr,
        #onetrust-pc-sdk .ot-pli-hdr ~ .ot-cat-item .ot-cat-header + .ot-tgl {
            padding-left: 28px;
        }

        #onetrust-pc-sdk .ot-sel-all-hdr,
        #onetrust-pc-sdk .ot-sel-all-chkbox {
            display: inline-block;
            width: 100%;
            position: relative;
        }

        #onetrust-pc-sdk .ot-sel-all-chkbox {
            z-index: 1;
        }

        #onetrust-pc-sdk .ot-sel-all {
            margin: 0;
            position: relative;
            padding-right: 23px;
            float: right;
        }

        #onetrust-pc-sdk .ot-consent-hdr,
        #onetrust-pc-sdk .ot-li-hdr {
            float: right;
            font-size: 0.812em;
            line-height: normal;
            text-align: center;
            word-break: break-word;
            word-wrap: break-word;
        }

        #onetrust-pc-sdk .ot-li-hdr {
            max-width: 100px;
            padding-right: 10px;
        }

        #onetrust-pc-sdk .ot-consent-hdr {
            max-width: 55px;
        }

        #onetrust-pc-sdk #ot-selall-licntr {
            display: block;
            width: 21px;
            height: auto;
            float: right;
            position: relative;
            right: 80px;
        }

        #onetrust-pc-sdk #ot-selall-licntr label {
            position: absolute;
        }

        #onetrust-pc-sdk .ot-ven-ctgl {
            margin-left: 66px;
        }

        #onetrust-pc-sdk .ot-ven-litgl + .ot-arw-cntr {
            margin-left: 81px;
        }

        #onetrust-pc-sdk .ot-enbl-chr .ot-host-cnt .ot-tgl-cntr {
            width: auto;
        }

        #onetrust-pc-sdk #ot-lst-cnt:not(.ot-host-cnt) .ot-tgl-cntr {
            width: auto;
            top: auto;
            height: 20px;
        }

        #onetrust-pc-sdk #ot-lst-cnt .ot-chkbox {
            position: relative;
            display: inline-block;
            width: 20px;
            height: 20px;
        }

        #onetrust-pc-sdk #ot-lst-cnt .ot-chkbox label {
            position: absolute;
            padding: 0;
            width: 20px;
            height: 20px;
        }

        #onetrust-pc-sdk #ot-lst-cnt .ot-vnd-info-cntr {
            border: 1px solid #d8d8d8;
            padding: 0.75rem 2rem;
            padding-bottom: 0;
            width: auto;
            margin-top: 0.5rem;
        }

        #onetrust-pc-sdk .ot-acc-grpdesc + .ot-leg-btn-container {
            padding-left: 20px;
            padding-right: 20px;
            width: calc(100% - 40px);
            margin-bottom: 5px;
        }

        #onetrust-pc-sdk .ot-subgrp .ot-leg-btn-container {
            margin-bottom: 5px;
        }

        #onetrust-pc-sdk #ot-ven-lst .ot-leg-btn-container {
            margin-top: 10px;
        }

        #onetrust-pc-sdk .ot-leg-btn-container {
            display: inline-block;
            width: 100%;
            margin-bottom: 10px;
        }

        #onetrust-pc-sdk .ot-leg-btn-container button {
            height: auto;
            padding: 6.5px 8px;
            margin-bottom: 0;
            letter-spacing: 0;
            font-size: 0.75em;
            line-height: normal;
        }

        #onetrust-pc-sdk .ot-leg-btn-container svg {
            display: none;
            height: 14px;
            width: 14px;
            padding-right: 5px;
            vertical-align: sub;
        }

        #onetrust-pc-sdk .ot-active-leg-btn {
            cursor: default;
            pointer-events: none;
        }

        #onetrust-pc-sdk .ot-active-leg-btn svg {
            display: inline-block;
        }

        #onetrust-pc-sdk .ot-remove-objection-handler {
            text-decoration: underline;
            padding: 0;
            font-size: 0.75em;
            font-weight: 600;
            line-height: 1;
            padding-left: 10px;
        }

        #onetrust-pc-sdk .ot-obj-leg-btn-handler span {
            font-weight: bold;
            text-align: center;
            font-size: inherit;
            line-height: 1.5;
        }

        #onetrust-pc-sdk.ot-close-btn-link #close-pc-btn-handler {
            border: none;
            height: auto;
            line-height: 1.5;
            text-decoration: underline;
            font-size: 0.69em;
            background: none;
            right: 15px;
            top: 15px;
            width: auto;
            font-weight: normal;
        }

        #onetrust-pc-sdk .ot-pgph-link {
            font-size: 0.813em !important;
            margin-top: 5px;
            position: relative;
        }

        #onetrust-pc-sdk .ot-pgph-link.ot-pgph-link-subgroup {
            margin-bottom: 1rem;
        }

        #onetrust-pc-sdk .ot-pgph-contr {
            margin: 0 2.5rem;
        }

        #onetrust-pc-sdk .ot-pgph-title {
            font-size: 1.18rem;
            margin-bottom: 2rem;
        }

        #onetrust-pc-sdk .ot-pgph-desc {
            font-size: 1rem;
            font-weight: 400;
            margin-bottom: 2rem;
            line-height: 1.5rem;
        }

        #onetrust-pc-sdk .ot-pgph-desc:not(:last-child):after {
            content: "";
            width: 96%;
            display: block;
            margin: 0 auto;
            padding-bottom: 2rem;
            border-bottom: 1px solid #e9e9e9;
        }

        #onetrust-pc-sdk .ot-cat-header {
            float: left;
            font-weight: 600;
            font-size: 0.875em;
            line-height: 1.5;
            max-width: 90%;
            vertical-align: middle;
        }

        #onetrust-pc-sdk .ot-vnd-item > button:focus {
            outline: #000 solid 2px;
        }

        #onetrust-pc-sdk .ot-vnd-item > button {
            position: absolute;
            cursor: pointer;
            width: 100%;
            height: 100%;
            margin: 0;
            top: 0;
            left: 0;
            z-index: 1;
            max-width: none;
            border: none;
        }

        #onetrust-pc-sdk
        .ot-vnd-item
        > button[aria-expanded="false"]
        ~ .ot-acc-txt {
            margin-top: 0;
            max-height: 0;
            opacity: 0;
            overflow: hidden;
            width: 100%;
            transition: 0.25s ease-out;
            display: none;
        }

        #onetrust-pc-sdk
        .ot-vnd-item
        > button[aria-expanded="true"]
        ~ .ot-acc-txt {
            transition: 0.1s ease-in;
            margin-top: 10px;
            width: 100%;
            overflow: auto;
            display: block;
        }

        #onetrust-pc-sdk
        .ot-vnd-item
        > button[aria-expanded="true"]
        ~ .ot-acc-grpcntr {
            width: auto;
            margin-top: 0px;
            padding-bottom: 10px;
        }

        #onetrust-pc-sdk .ot-accordion-layout.ot-cat-item {
            position: relative;
            border-radius: 2px;
            margin: 0;
            padding: 0;
            border: 1px solid #d8d8d8;
            border-top: none;
            width: calc(100% - 2px);
            float: left;
        }

        #onetrust-pc-sdk .ot-accordion-layout.ot-cat-item:first-of-type {
            margin-top: 10px;
            border-top: 1px solid #d8d8d8;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-acc-grpdesc {
            padding-left: 20px;
            padding-right: 20px;
            width: calc(100% - 40px);
            font-size: 0.812em;
            margin-bottom: 10px;
            margin-top: 15px;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-acc-grpdesc > ul {
            padding-top: 10px;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-acc-grpdesc > ul li {
            padding-top: 0;
            line-height: 1.5;
            padding-bottom: 10px;
        }

        #onetrust-pc-sdk .ot-accordion-layout div + .ot-acc-grpdesc {
            margin-top: 5px;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-vlst-cntr:first-child {
            margin-top: 10px;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-vlst-cntr:last-child,
        #onetrust-pc-sdk .ot-accordion-layout .ot-hlst-cntr:last-child {
            margin-bottom: 5px;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-acc-hdr {
            padding-top: 11.5px;
            padding-bottom: 11.5px;
            padding-left: 20px;
            padding-right: 20px;
            width: calc(100% - 40px);
            display: inline-block;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-acc-txt {
            width: 100%;
            padding: 0;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-subgrp-cntr {
            padding-left: 20px;
            padding-right: 15px;
            padding-bottom: 0;
            width: calc(100% - 35px);
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-subgrp {
            padding-right: 5px;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-acc-grpcntr {
            z-index: 1;
            position: relative;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-cat-header + .ot-arw-cntr {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            right: 20px;
            margin-top: -2px;
        }

        #onetrust-pc-sdk
        .ot-accordion-layout
        .ot-cat-header
        + .ot-arw-cntr
        .ot-arw {
            width: 15px;
            height: 20px;
            margin-left: 5px;
            color: dimgray;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-cat-header {
            float: none;
            color: #2e3644;
            margin: 0;
            display: inline-block;
            height: auto;
            word-wrap: break-word;
            min-height: inherit;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-vlst-cntr,
        #onetrust-pc-sdk .ot-accordion-layout .ot-hlst-cntr {
            padding-left: 20px;
            width: calc(100% - 20px);
            display: inline-block;
            margin-top: 0;
            padding-bottom: 2px;
        }

        #onetrust-pc-sdk .ot-accordion-layout .ot-acc-hdr {
            position: relative;
            min-height: 25px;
        }

        #onetrust-pc-sdk .ot-accordion-layout h4 ~ .ot-tgl,
        #onetrust-pc-sdk .ot-accordion-layout h4 ~ .ot-always-active {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            right: 20px;
        }

        #onetrust-pc-sdk .ot-accordion-layout h4 ~ .ot-tgl + .ot-tgl {
            right: 95px;
        }

        #onetrust-pc-sdk .ot-accordion-layout .category-vendors-list-handler,
        #onetrust-pc-sdk .ot-accordion-layout .category-vendors-list-handler + a {
            margin-top: 5px;
        }

        #onetrust-pc-sdk #ot-lst-cnt {
            margin-top: 1rem;
            max-height: calc(100% - 96px);
        }

        #onetrust-pc-sdk #ot-lst-cnt .ot-vnd-info-cntr {
            border: 1px solid #d8d8d8;
            padding: 0.75rem 2rem;
            padding-bottom: 0;
            width: auto;
            margin-top: 0.5rem;
        }

        #onetrust-pc-sdk #ot-lst-cnt .ot-vnd-info {
            margin-bottom: 1rem;
            padding-left: 0.75rem;
            padding-right: 0.75rem;
            display: flex;
            flex-direction: column;
        }

        #onetrust-pc-sdk #ot-lst-cnt .ot-vnd-info[data-vnd-info-key*="DPOEmail"] {
            border-top: 1px solid #d8d8d8;
            padding-top: 1rem;
        }

        #onetrust-pc-sdk #ot-lst-cnt .ot-vnd-info[data-vnd-info-key*="DPOLink"] {
            border-bottom: 1px solid #d8d8d8;
            padding-bottom: 1rem;
        }

        #onetrust-pc-sdk #ot-lst-cnt .ot-vnd-info .ot-vnd-lbl {
            font-weight: bold;
            font-size: 0.85em;
            margin-bottom: 0.5rem;
        }

        #onetrust-pc-sdk #ot-lst-cnt .ot-vnd-info .ot-vnd-cnt {
            margin-left: 0.5rem;
            font-weight: 500;
            font-size: 0.85rem;
        }

        #onetrust-pc-sdk .ot-vs-list,
        #onetrust-pc-sdk .ot-vnd-serv {
            width: auto;
            padding: 1rem 1.25rem;
            padding-bottom: 0;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-serv-hdr-cntr,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-serv-hdr-cntr {
            padding-bottom: 0.75rem;
            border-bottom: 1px solid #d8d8d8;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-serv-hdr-cntr .ot-vnd-serv-hdr,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-serv-hdr-cntr .ot-vnd-serv-hdr {
            font-weight: 600;
            font-size: 0.95em;
            line-height: 2;
            margin-left: 0.5rem;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item {
            border: none;
            margin: 0;
            padding: 0;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item button,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item button {
            outline: none;
            border-bottom: 1px solid #d8d8d8;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item button[aria-expanded="true"],
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item button[aria-expanded="true"] {
            border-bottom: none;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item:first-child,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item:first-child {
            margin-top: 0.25rem;
            border-top: unset;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item:last-child,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item:last-child {
            margin-bottom: 0.5rem;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item:last-child button,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item:last-child button {
            border-bottom: none;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-vnd-info-cntr,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-vnd-info-cntr {
            border: 1px solid #d8d8d8;
            padding: 0.75rem 1.75rem;
            padding-bottom: 0;
            width: auto;
            margin-top: 0.5rem;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-vnd-info,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-vnd-info {
            margin-bottom: 1rem;
            padding-left: 0.75rem;
            padding-right: 0.75rem;
            display: flex;
            flex-direction: column;
        }

        #onetrust-pc-sdk
        .ot-vs-list
        .ot-vnd-item
        .ot-vnd-info[data-vnd-info-key*="DPOEmail"],
        #onetrust-pc-sdk
        .ot-vnd-serv
        .ot-vnd-item
        .ot-vnd-info[data-vnd-info-key*="DPOEmail"] {
            border-top: 1px solid #d8d8d8;
            padding-top: 1rem;
        }

        #onetrust-pc-sdk
        .ot-vs-list
        .ot-vnd-item
        .ot-vnd-info[data-vnd-info-key*="DPOLink"],
        #onetrust-pc-sdk
        .ot-vnd-serv
        .ot-vnd-item
        .ot-vnd-info[data-vnd-info-key*="DPOLink"] {
            border-bottom: 1px solid #d8d8d8;
            padding-bottom: 1rem;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-vnd-info .ot-vnd-lbl,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-vnd-info .ot-vnd-lbl {
            font-weight: bold;
            font-size: 0.85em;
            margin-bottom: 0.5rem;
        }

        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-vnd-info .ot-vnd-cnt,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-vnd-info .ot-vnd-cnt {
            margin-left: 0.5rem;
            font-weight: 500;
            font-size: 0.85rem;
        }

        #onetrust-pc-sdk .ot-vs-list.ot-vnd-subgrp-cnt,
        #onetrust-pc-sdk .ot-vnd-serv.ot-vnd-subgrp-cnt {
            padding-left: 40px;
        }

        #onetrust-pc-sdk
        .ot-vs-list.ot-vnd-subgrp-cnt
        .ot-vnd-serv-hdr-cntr
        .ot-vnd-serv-hdr,
        #onetrust-pc-sdk
        .ot-vnd-serv.ot-vnd-subgrp-cnt
        .ot-vnd-serv-hdr-cntr
        .ot-vnd-serv-hdr {
            font-size: 0.8em;
        }

        #onetrust-pc-sdk .ot-vs-list.ot-vnd-subgrp-cnt .ot-cat-header,
        #onetrust-pc-sdk .ot-vnd-serv.ot-vnd-subgrp-cnt .ot-cat-header {
            font-size: 0.8em;
        }

        #onetrust-pc-sdk .ot-subgrp-cntr .ot-vnd-serv {
            margin-bottom: 1rem;
            padding: 1rem 0.95rem;
        }

        #onetrust-pc-sdk .ot-subgrp-cntr .ot-vnd-serv .ot-vnd-serv-hdr-cntr {
            padding-bottom: 0.75rem;
            border-bottom: 1px solid #d8d8d8;
        }

        #onetrust-pc-sdk
        .ot-subgrp-cntr
        .ot-vnd-serv
        .ot-vnd-serv-hdr-cntr
        .ot-vnd-serv-hdr {
            font-weight: 700;
            font-size: 0.8em;
            line-height: 20px;
            margin-left: 0.82rem;
        }

        #onetrust-pc-sdk .ot-subgrp-cntr .ot-cat-header {
            font-weight: 700;
            font-size: 0.8em;
            line-height: 20px;
        }

        #onetrust-pc-sdk
        .ot-subgrp-cntr
        ul.ot-subgrps
        .ot-vnd-serv
        .ot-vnd-lst-cont
        .ot-accordion-layout
        .ot-acc-hdr
        div.ot-chkbox {
            margin-left: 0.82rem;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr,
        #onetrust-pc-sdk .ot-subgrp-cntr ul.ot-subgrps .ot-acc-hdr,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr,
        #onetrust-pc-sdk #ot-pc-lst .ot-vs-list .ot-vnd-item .ot-acc-hdr,
        #onetrust-pc-sdk .ot-accordion-layout.ot-checkbox-consent .ot-acc-hdr {
            padding: 0.7rem 0;
            margin: 0;
            display: flex;
            width: 100%;
            align-items: center;
            justify-content: space-between;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr div:first-child,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr div:first-child,
        #onetrust-pc-sdk
        .ot-subgrp-cntr
        ul.ot-subgrps
        .ot-acc-hdr
        div:first-child,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr div:first-child,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr div:first-child,
        #onetrust-pc-sdk
        #ot-pc-lst
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        div:first-child,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        div:first-child {
            margin-left: 0.5rem;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr div:last-child,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr div:last-child,
        #onetrust-pc-sdk .ot-subgrp-cntr ul.ot-subgrps .ot-acc-hdr div:last-child,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr div:last-child,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr div:last-child,
        #onetrust-pc-sdk
        #ot-pc-lst
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        div:last-child,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        div:last-child {
            margin-right: 0.5rem;
            margin-left: 0.5rem;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr .ot-always-active,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr .ot-always-active,
        #onetrust-pc-sdk
        .ot-subgrp-cntr
        ul.ot-subgrps
        .ot-acc-hdr
        .ot-always-active,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr .ot-always-active,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr .ot-always-active,
        #onetrust-pc-sdk
        #ot-pc-lst
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        .ot-always-active,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        .ot-always-active {
            position: relative;
            right: unset;
            top: unset;
            transform: unset;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr .ot-plus-minus,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr .ot-plus-minus,
        #onetrust-pc-sdk .ot-subgrp-cntr ul.ot-subgrps .ot-acc-hdr .ot-plus-minus,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr .ot-plus-minus,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr .ot-plus-minus,
        #onetrust-pc-sdk
        #ot-pc-lst
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        .ot-plus-minus,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        .ot-plus-minus {
            top: 0;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr .ot-arw-cntr,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr .ot-arw-cntr,
        #onetrust-pc-sdk .ot-subgrp-cntr ul.ot-subgrps .ot-acc-hdr .ot-arw-cntr,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr .ot-arw-cntr,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr .ot-arw-cntr,
        #onetrust-pc-sdk
        #ot-pc-lst
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        .ot-arw-cntr,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        .ot-arw-cntr {
            float: none;
            top: unset;
            right: unset;
            transform: unset;
            margin-top: -2px;
            position: relative;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr .ot-cat-header,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr .ot-cat-header,
        #onetrust-pc-sdk .ot-subgrp-cntr ul.ot-subgrps .ot-acc-hdr .ot-cat-header,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr .ot-cat-header,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr .ot-cat-header,
        #onetrust-pc-sdk
        #ot-pc-lst
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        .ot-cat-header,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        .ot-cat-header {
            flex: 1;
            margin: 0 0.5rem;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr .ot-tgl,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr .ot-tgl,
        #onetrust-pc-sdk .ot-subgrp-cntr ul.ot-subgrps .ot-acc-hdr .ot-tgl,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr .ot-tgl,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr .ot-tgl,
        #onetrust-pc-sdk #ot-pc-lst .ot-vs-list .ot-vnd-item .ot-acc-hdr .ot-tgl,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        .ot-tgl {
            position: relative;
            transform: none;
            right: 0;
            top: 0;
            float: none;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr .ot-chkbox,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr .ot-chkbox,
        #onetrust-pc-sdk .ot-subgrp-cntr ul.ot-subgrps .ot-acc-hdr .ot-chkbox,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr .ot-chkbox,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr .ot-chkbox,
        #onetrust-pc-sdk
        #ot-pc-lst
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        .ot-chkbox,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        .ot-chkbox {
            position: relative;
            margin: 0 0.5rem;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr .ot-chkbox label,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr .ot-chkbox label,
        #onetrust-pc-sdk
        .ot-subgrp-cntr
        ul.ot-subgrps
        .ot-acc-hdr
        .ot-chkbox
        label,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr .ot-chkbox label,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr .ot-chkbox label,
        #onetrust-pc-sdk
        #ot-pc-lst
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        .ot-chkbox
        label,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        .ot-chkbox
        label {
            padding: 0;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr .ot-chkbox label::before,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr .ot-chkbox label::before,
        #onetrust-pc-sdk
        .ot-subgrp-cntr
        ul.ot-subgrps
        .ot-acc-hdr
        .ot-chkbox
        label::before,
        #onetrust-pc-sdk
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        .ot-chkbox
        label::before,
        #onetrust-pc-sdk
        .ot-vnd-serv
        .ot-vnd-item
        .ot-acc-hdr
        .ot-chkbox
        label::before,
        #onetrust-pc-sdk
        #ot-pc-lst
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        .ot-chkbox
        label::before,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        .ot-chkbox
        label::before {
            position: relative;
        }

        #onetrust-pc-sdk .ot-vs-config .ot-acc-hdr .ot-chkbox input,
        #onetrust-pc-sdk ul.ot-subgrps .ot-acc-hdr .ot-chkbox input,
        #onetrust-pc-sdk
        .ot-subgrp-cntr
        ul.ot-subgrps
        .ot-acc-hdr
        .ot-chkbox
        input,
        #onetrust-pc-sdk .ot-vs-list .ot-vnd-item .ot-acc-hdr .ot-chkbox input,
        #onetrust-pc-sdk .ot-vnd-serv .ot-vnd-item .ot-acc-hdr .ot-chkbox input,
        #onetrust-pc-sdk
        #ot-pc-lst
        .ot-vs-list
        .ot-vnd-item
        .ot-acc-hdr
        .ot-chkbox
        input,
        #onetrust-pc-sdk
        .ot-accordion-layout.ot-checkbox-consent
        .ot-acc-hdr
        .ot-chkbox
        input {
            position: absolute;
            cursor: pointer;
            width: 100%;
            height: 100%;
            opacity: 0;
            margin: 0;
            top: 0;
            left: 0;
            z-index: 1;
        }

        #onetrust-pc-sdk
        .ot-subgrp-cntr
        ul.ot-subgrps
        li.ot-subgrp
        .ot-acc-hdr
        h5.ot-cat-header,
        #onetrust-pc-sdk
        .ot-subgrp-cntr
        ul.ot-subgrps
        li.ot-subgrp
        .ot-acc-hdr
        h4.ot-cat-header {
            margin: 0;
        }

        #onetrust-pc-sdk
        .ot-vs-config
        .ot-subgrp-cntr
        ul.ot-subgrps
        li.ot-subgrp
        h5 {
            top: 0;
            line-height: 20px;
        }

        #onetrust-pc-sdk .ot-vs-list {
            display: flex;
            flex-direction: column;
            padding: 0;
            margin: 0.5rem 4px;
        }

        #onetrust-pc-sdk .ot-vs-selc-all {
            display: flex;
            padding: 0;
            float: unset;
            align-items: center;
            justify-content: flex-start;
        }

        #onetrust-pc-sdk .ot-vs-selc-all.ot-toggle-conf {
            justify-content: flex-end;
        }

        #onetrust-pc-sdk
        .ot-vs-selc-all.ot-toggle-conf.ot-caret-conf
        .ot-sel-all-chkbox {
            margin-right: 48px;
        }

        #onetrust-pc-sdk .ot-vs-selc-all.ot-toggle-conf .ot-sel-all-chkbox {
            margin: 0;
            padding: 0;
            margin-right: 14px;
            justify-content: flex-end;
        }

        #onetrust-pc-sdk
        .ot-vs-selc-all.ot-toggle-conf
        #ot-selall-vencntr.ot-chkbox,
        #onetrust-pc-sdk
        .ot-vs-selc-all.ot-toggle-conf
        #ot-selall-vencntr.ot-tgl {
            display: inline-block;
            right: unset;
            width: auto;
            height: auto;
            float: none;
        }

        #onetrust-pc-sdk .ot-vs-selc-all.ot-toggle-conf #ot-selall-vencntr label {
            width: 45px;
            height: 25px;
        }

        #onetrust-pc-sdk .ot-vs-selc-all .ot-sel-all-chkbox {
            margin-right: 11px;
            margin-left: 0.75rem;
            display: flex;
            align-items: center;
        }

        #onetrust-pc-sdk .ot-vs-selc-all .sel-all-hdr {
            margin: 0 1.25rem;
            font-size: 0.812em;
            line-height: normal;
            text-align: center;
            word-break: break-word;
            word-wrap: break-word;
        }

        #onetrust-pc-sdk .ot-vnd-list-cnt #ot-selall-vencntr.ot-chkbox {
            float: unset;
            right: 0;
        }

        #onetrust-pc-sdk[dir="rtl"] #ot-back-arw,
        #onetrust-pc-sdk[dir="rtl"] input ~ .ot-acc-hdr .ot-arw {
            transform: rotate(180deg);
            -o-transform: rotate(180deg);
            -ms-transform: rotate(180deg);
            -webkit-transform: rotate(180deg);
        }

        #onetrust-pc-sdk[dir="rtl"] input:checked ~ .ot-acc-hdr .ot-arw {
            transform: rotate(270deg);
            -o-transform: rotate(270deg);
            -ms-transform: rotate(270deg);
            -webkit-transform: rotate(270deg);
        }

        #onetrust-pc-sdk[dir="rtl"] .ot-chkbox label::after {
            transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            -o-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            border-left: 0;
            border-right: 3px solid;
        }

        #onetrust-pc-sdk[dir="rtl"] .ot-search-cntr > svg {
            right: 0;
        }

        @media only screen and (max-width: 600px) {
            #onetrust-pc-sdk.otPcCenter {
                left: 0;
                min-width: 100%;
                height: 100%;
                top: 0;
                border-radius: 0;
            }

            #onetrust-pc-sdk #ot-pc-content,
            #onetrust-pc-sdk.ot-ftr-stacked .ot-btn-container {
                margin: 1px 3px 0 10px;
                padding-right: 10px;
                width: calc(100% - 23px);
            }

            #onetrust-pc-sdk .ot-btn-container button {
                max-width: none;
                letter-spacing: 0.01em;
            }

            #onetrust-pc-sdk #close-pc-btn-handler {
                top: 10px;
                right: 17px;
            }

            #onetrust-pc-sdk p {
                font-size: 0.7em;
            }

            #onetrust-pc-sdk #ot-pc-hdr {
                margin: 10px 10px 0 5px;
                width: calc(100% - 15px);
            }

            #onetrust-pc-sdk .vendor-search-handler {
                font-size: 1em;
            }

            #onetrust-pc-sdk #ot-back-arw {
                margin-left: 12px;
            }

            #onetrust-pc-sdk #ot-lst-cnt {
                margin: 0;
                padding: 0 5px 0 10px;
                min-width: 95%;
            }

            #onetrust-pc-sdk .switch + p {
                max-width: 80%;
            }

            #onetrust-pc-sdk .ot-ftr-stacked button {
                width: 100%;
            }

            #onetrust-pc-sdk #ot-fltr-cnt {
                max-width: 320px;
                width: 90%;
                border-top-right-radius: 0;
                border-bottom-right-radius: 0;
                margin: 0;
                margin-left: 15px;
                left: auto;
                right: 40px;
                top: 85px;
            }

            #onetrust-pc-sdk .ot-fltr-opt {
                margin-left: 25px;
                margin-bottom: 10px;
            }

            #onetrust-pc-sdk .ot-pc-refuse-all-handler {
                margin-bottom: 0;
            }

            #onetrust-pc-sdk #ot-fltr-cnt {
                right: 40px;
            }
        }

        @media only screen and (max-width: 476px) {
            #onetrust-pc-sdk .ot-fltr-cntr,
            #onetrust-pc-sdk #ot-fltr-cnt {
                right: 10px;
            }

            #onetrust-pc-sdk #ot-anchor {
                right: 25px;
            }

            #onetrust-pc-sdk button {
                width: 100%;
            }

            #onetrust-pc-sdk:not(.ot-addtl-vendors)
            #ot-pc-lst:not(.ot-enbl-chr)
            .ot-sel-all {
                padding-right: 9px;
            }

            #onetrust-pc-sdk:not(.ot-addtl-vendors)
            #ot-pc-lst:not(.ot-enbl-chr)
            .ot-tgl-cntr {
                right: 0;
            }
        }

        @media only screen and (max-width: 896px) and (max-height: 425px) and (orientation: landscape) {
            #onetrust-pc-sdk.otPcCenter {
                left: 0;
                top: 0;
                min-width: 100%;
                height: 100%;
                border-radius: 0;
            }

            #onetrust-pc-sdk #ot-anchor {
                left: initial;
                right: 50px;
            }

            #onetrust-pc-sdk #ot-lst-title {
                margin-top: 12px;
            }

            #onetrust-pc-sdk #ot-lst-title * {
                font-size: inherit;
            }

            #onetrust-pc-sdk #ot-pc-hdr input {
                margin-right: 0;
                padding-right: 45px;
            }

            #onetrust-pc-sdk .switch + p {
                max-width: 85%;
            }

            #onetrust-pc-sdk #ot-sel-blk {
                position: static;
            }

            #onetrust-pc-sdk #ot-pc-lst {
                overflow: auto;
            }

            #onetrust-pc-sdk #ot-lst-cnt {
                max-height: none;
                overflow: initial;
            }

            #onetrust-pc-sdk #ot-lst-cnt.no-results {
                height: auto;
            }

            #onetrust-pc-sdk input {
                font-size: 1em !important;
            }

            #onetrust-pc-sdk p {
                font-size: 0.6em;
            }

            #onetrust-pc-sdk #ot-fltr-modal {
                width: 100%;
                top: 0;
            }

            #onetrust-pc-sdk ul li p,
            #onetrust-pc-sdk .category-vendors-list-handler,
            #onetrust-pc-sdk .category-vendors-list-handler + a,
            #onetrust-pc-sdk .category-host-list-handler {
                font-size: 0.6em;
            }

            #onetrust-pc-sdk.ot-shw-fltr #ot-anchor {
                display: none !important;
            }

            #onetrust-pc-sdk.ot-shw-fltr #ot-pc-lst {
                height: 100% !important;
                overflow: hidden;
                top: 0px;
            }

            #onetrust-pc-sdk.ot-shw-fltr #ot-fltr-cnt {
                margin: 0;
                height: 100%;
                max-height: none;
                padding: 10px;
                top: 0;
                width: calc(100% - 20px);
                position: absolute;
                right: 0;
                left: 0;
                max-width: none;
            }

            #onetrust-pc-sdk.ot-shw-fltr .ot-fltr-scrlcnt {
                max-height: calc(100% - 65px);
            }
        }

        #onetrust-consent-sdk #onetrust-pc-sdk,
        #onetrust-consent-sdk #ot-search-cntr,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-switch.ot-toggle,
        #onetrust-consent-sdk #onetrust-pc-sdk ot-grp-hdr1 .checkbox,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-pc-title:after,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-sel-blk,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-fltr-cnt,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-anchor {
            background-color: #ffffff;
        }

        #onetrust-consent-sdk #onetrust-pc-sdk h3,
        #onetrust-consent-sdk #onetrust-pc-sdk h4,
        #onetrust-consent-sdk #onetrust-pc-sdk h5,
        #onetrust-consent-sdk #onetrust-pc-sdk h6,
        #onetrust-consent-sdk #onetrust-pc-sdk p,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-ven-lst .ot-ven-opts p,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-pc-desc,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-pc-title,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-li-title,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-sel-all-hdr span,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-host-lst .ot-host-info,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-fltr-modal #modal-header,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-checkbox label span,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-pc-lst #ot-sel-blk p,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-pc-lst #ot-lst-title h3,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-pc-lst .back-btn-handler p,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-pc-lst .ot-ven-name,
        #onetrust-consent-sdk
        #onetrust-pc-sdk
        #ot-pc-lst
        #ot-ven-lst
        .consent-category,
        #onetrust-consent-sdk
        #onetrust-pc-sdk
        .ot-leg-btn-container
        .ot-inactive-leg-btn,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-label-status,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-chkbox label span,
        #onetrust-consent-sdk #onetrust-pc-sdk #clear-filters-handler,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-optout-signal {
            color: #696969;
        }

        #onetrust-consent-sdk #onetrust-pc-sdk .privacy-notice-link,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-pgph-link,
        #onetrust-consent-sdk #onetrust-pc-sdk .category-vendors-list-handler,
        #onetrust-consent-sdk #onetrust-pc-sdk .category-vendors-list-handler + a,
        #onetrust-consent-sdk #onetrust-pc-sdk .category-host-list-handler,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-ven-link,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-ven-legclaim-link,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-host-lst .ot-host-name a,
        #onetrust-consent-sdk
        #onetrust-pc-sdk
        #ot-host-lst
        .ot-acc-hdr
        .ot-host-expand,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-host-lst .ot-host-info a,
        #onetrust-consent-sdk
        #onetrust-pc-sdk
        #ot-pc-content
        #ot-pc-desc
        .ot-link-btn,
        #onetrust-consent-sdk
        #onetrust-pc-sdk
        .ot-vnd-serv
        .ot-vnd-item
        .ot-vnd-info
        a,
        #onetrust-consent-sdk #onetrust-pc-sdk #ot-lst-cnt .ot-vnd-info a {
            color: #3860be;
        }

        #onetrust-consent-sdk
        #onetrust-pc-sdk
        .category-vendors-list-handler:hover {
            text-decoration: underline;
        }

        #onetrust-consent-sdk #onetrust-pc-sdk .ot-acc-grpcntr.ot-acc-txt,
        #onetrust-consent-sdk
        #onetrust-pc-sdk
        .ot-acc-txt
        .ot-subgrp-tgl
        .ot-switch.ot-toggle {
            background-color: #e9e9e9;
        }

        #onetrust-consent-sdk #onetrust-pc-sdk #ot-host-lst .ot-host-info,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-acc-txt .ot-ven-dets {
            background-color: #e9e9e9;
        }

        #onetrust-consent-sdk
        #onetrust-pc-sdk
        button:not(#clear-filters-handler):not(.ot-close-icon):not(
          #filter-btn-handler
        ):not(.ot-remove-objection-handler):not(.ot-obj-leg-btn-handler):not(
          [aria-expanded]
        ):not(.ot-link-btn),
        #onetrust-consent-sdk
        #onetrust-pc-sdk
        .ot-leg-btn-container
        .ot-active-leg-btn {
            background-color: #1e66d0;
            border-color: #1e66d0;
            color: #ffffff;
        }

        #onetrust-consent-sdk #onetrust-pc-sdk .ot-active-menu {
            border-color: #1e66d0;
        }

        #onetrust-consent-sdk
        #onetrust-pc-sdk
        .ot-leg-btn-container
        .ot-remove-objection-handler {
            background-color: transparent;
            border: 1px solid transparent;
        }

        #onetrust-consent-sdk
        #onetrust-pc-sdk
        .ot-leg-btn-container
        .ot-inactive-leg-btn {
            background-color: #ffffff;
            color: #78808e;
            border-color: #78808e;
        }

        #onetrust-consent-sdk #onetrust-pc-sdk .ot-tgl input:focus + .ot-switch,
        .ot-switch .ot-switch-nob,
        .ot-switch .ot-switch-nob:before,
        #onetrust-pc-sdk
        .ot-checkbox
        input[type="checkbox"]:focus
        + label::before,
        #onetrust-pc-sdk .ot-chkbox input[type="checkbox"]:focus + label::before {
            outline-color: #000000;
            outline-width: 1px;
        }

        #onetrust-pc-sdk .ot-host-item > button:focus,
        #onetrust-pc-sdk .ot-ven-item > button:focus {
            border: 1px solid #000000;
        }

        #onetrust-consent-sdk #onetrust-pc-sdk *:focus,
        #onetrust-consent-sdk #onetrust-pc-sdk .ot-vlst-cntr > a:focus {
            outline: 1px solid #000000;
        }

        #onetrust-pc-sdk .ot-vlst-cntr .ot-ext-lnk,
        #onetrust-pc-sdk .ot-ven-hdr .ot-ext-lnk {
            background-image: url("https://cookie-cdn.cookiepro.com/logos/static/ot_external_link.svg");
        }

        .ot-sdk-cookie-policy {
            font-family: inherit;
            font-size: 16px;
        }

        .ot-sdk-cookie-policy.otRelFont {
            font-size: 1rem;
        }

        .ot-sdk-cookie-policy h3,
        .ot-sdk-cookie-policy h4,
        .ot-sdk-cookie-policy h6,
        .ot-sdk-cookie-policy p,
        .ot-sdk-cookie-policy li,
        .ot-sdk-cookie-policy a,
        .ot-sdk-cookie-policy th,
        .ot-sdk-cookie-policy #cookie-policy-description,
        .ot-sdk-cookie-policy .ot-sdk-cookie-policy-group,
        .ot-sdk-cookie-policy #cookie-policy-title {
            color: dimgray;
        }

        .ot-sdk-cookie-policy #cookie-policy-description {
            margin-bottom: 1em;
        }

        .ot-sdk-cookie-policy h4 {
            font-size: 1.2em;
        }

        .ot-sdk-cookie-policy h6 {
            font-size: 1em;
            margin-top: 2em;
        }

        .ot-sdk-cookie-policy th {
            min-width: 75px;
        }

        .ot-sdk-cookie-policy a,
        .ot-sdk-cookie-policy a:hover {
            background: #fff;
        }

        .ot-sdk-cookie-policy thead {
            background-color: #f6f6f4;
            font-weight: bold;
        }

        .ot-sdk-cookie-policy .ot-mobile-border {
            display: none;
        }

        .ot-sdk-cookie-policy section {
            margin-bottom: 2em;
        }

        .ot-sdk-cookie-policy table {
            border-collapse: inherit;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy {
            font-family: inherit;
            font-size: 1rem;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy h3,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy h4,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy h6,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy p,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy li,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy a,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy th,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy #cookie-policy-description,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy .ot-sdk-cookie-policy-group,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy #cookie-policy-title {
            color: dimgray;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy #cookie-policy-description {
            margin-bottom: 1em;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy .ot-sdk-subgroup {
            margin-left: 1.5em;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy #cookie-policy-description,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy
        .ot-sdk-cookie-policy-group-desc,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy .ot-table-header,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy a,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy span,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy td {
            font-size: 0.9em;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy td span,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy td a {
            font-size: inherit;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy
        .ot-sdk-cookie-policy-group {
            font-size: 1em;
            margin-bottom: 0.6em;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy
        .ot-sdk-cookie-policy-title {
            margin-bottom: 1.2em;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy > section {
            margin-bottom: 1em;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy th {
            min-width: 75px;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy a,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy a:hover {
            background: #fff;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy thead {
            background-color: #f6f6f4;
            font-weight: bold;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy .ot-mobile-border {
            display: none;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy section {
            margin-bottom: 2em;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy .ot-sdk-subgroup ul li {
            list-style: disc;
            margin-left: 1.5em;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy .ot-sdk-subgroup ul li h4 {
            display: inline-block;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table {
            border-collapse: inherit;
            margin: auto;
            border: 1px solid #d7d7d7;
            border-radius: 5px;
            border-spacing: initial;
            width: 100%;
            overflow: hidden;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table th,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table td {
            border-bottom: 1px solid #d7d7d7;
            border-right: 1px solid #d7d7d7;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table tr:last-child td {
            border-bottom: 0px;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table tr th:last-child,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table tr td:last-child {
            border-right: 0px;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table .ot-host,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table .ot-cookies-type {
            width: 25%;
        }

        .ot-sdk-cookie-policy[dir="rtl"] {
            text-align: left;
        }

        #ot-sdk-cookie-policy h3 {
            font-size: 1.5em;
        }

        @media only screen and (max-width: 530px) {
            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) table,
            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) thead,
            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) tbody,
            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) th,
            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) td,
            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) tr {
                display: block;
            }

            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) thead tr {
                position: absolute;
                top: -9999px;
                left: -9999px;
            }

            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) tr {
                margin: 0 0 1em 0;
            }

            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) tr:nth-child(odd),
            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2)
            tr:nth-child(odd)
            a {
                background: #f6f6f4;
            }

            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) td {
                border: none;
                border-bottom: 1px solid #eee;
                position: relative;
                padding-left: 50%;
            }

            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) td:before {
                position: absolute;
                height: 100%;
                left: 6px;
                width: 40%;
                padding-right: 10px;
            }

            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) .ot-mobile-border {
                display: inline-block;
                background-color: #e4e4e4;
                position: absolute;
                height: 100%;
                top: 0;
                left: 45%;
                width: 2px;
            }

            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) td:before {
                content: attr(data-label);
                font-weight: bold;
            }

            .ot-sdk-cookie-policy:not(#ot-sdk-cookie-policy-v2) li {
                word-break: break-word;
                word-wrap: break-word;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table {
                overflow: hidden;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table td {
                border: none;
                border-bottom: 1px solid #d7d7d7;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table,
            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy thead,
            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy tbody,
            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy th,
            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy td,
            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy tr {
                display: block;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table .ot-host,
            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table .ot-cookies-type {
                width: auto;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy tr {
                margin: 0 0 1em 0;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy td:before {
                height: 100%;
                width: 40%;
                padding-right: 10px;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy td:before {
                content: attr(data-label);
                font-weight: bold;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy li {
                word-break: break-word;
                word-wrap: break-word;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy thead tr {
                position: absolute;
                top: -9999px;
                left: -9999px;
                z-index: -9999;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table tr:last-child td {
                border-bottom: 1px solid #d7d7d7;
                border-right: 0px;
            }

            #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy
            table
            tr:last-child
            td:last-child {
                border-bottom: 0px;
            }
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy h5,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy h6,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy li,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy p,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy a,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy span,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy td,
        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy #cookie-policy-description {
            color: #696969;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy th {
            color: #696969;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy
        .ot-sdk-cookie-policy-group {
            color: #696969;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy #cookie-policy-title {
            color: #696969;
        }

        #ot-sdk-cookie-policy-v2.ot-sdk-cookie-policy table th {
            background-color: #f8f8f8;
        }

        .ot-floating-button__front {
            background-image: url("https://cookie-cdn.cookiepro.com/logos/static/ot_persistent_cookie_icon.png");
        }

        #ot-sdk-btn-floating.ot-floating-button {
            position: fixed;
            bottom: 10px;
            opacity: 0;
            width: 50px;
            height: 50px;
            line-height: 15px;
            cursor: pointer;
            background-color: rgba(0, 0, 0, 0);
            transition: all 300ms ease;
            z-index: 2147483646;
            animation: otFloatingBtnIntro 800ms ease 0ms 1 forwards;
        }

        #ot-sdk-btn-floating.ot-floating-button.ot-hide {
            display: none;
        }

        #ot-sdk-btn-floating.ot-floating-button::before,
        #ot-sdk-btn-floating.ot-floating-button::after {
            text-transform: none;
            line-height: 1;
            user-select: none;
            pointer-events: none;
            position: absolute;
            transform: scale(0);
            opacity: 0;
            transition: all 300ms ease;
            display: block;
            height: auto;
        }

        #ot-sdk-btn-floating.ot-floating-button::before {
            content: "";
            border: 5px solid rgba(0, 0, 0, 0);
            z-index: 1001;
            top: 50%;
            border-left-width: 0;
            border-right-color: #333;
            right: calc(0em - 5px);
            transform: translate(10px, -50%);
        }

        #ot-sdk-btn-floating.ot-floating-button::after {
            content: attr(title);
            position: absolute;
            text-align: center;
            top: 50%;
            left: calc(100% + 5px);
            transform: translate(10px, -50%);
            font-size: 0.75rem;
            min-width: 3em;
            max-width: 21em;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            padding: 5px;
            border-radius: 0.3ch;
            box-shadow: 0 1em 2em -0.5em rgba(0, 0, 0, 0.35);
            background: #333;
            color: #fff;
            z-index: 2147483645;
        }

        #ot-sdk-btn-floating.ot-floating-button:hover::before,
        #ot-sdk-btn-floating.ot-floating-button:hover::after {
            opacity: 1;
        }

        #ot-sdk-btn-floating.ot-floating-button:hover::before {
            transform: translate(0.5em, -50%) scale(1);
        }

        #ot-sdk-btn-floating.ot-floating-button:hover::after {
            transform: translate(0.5em, -50%) scale(1);
        }

        #ot-sdk-btn-floating.ot-floating-button.ot-pc-open
        .ot-floating-button__front {
            transform: rotateY(-180deg);
        }

        #ot-sdk-btn-floating.ot-floating-button.ot-pc-open
        .ot-floating-button__back {
            transform: rotateY(0);
        }

        #ot-sdk-btn-floating .ot-floating-button__front,
        #ot-sdk-btn-floating .ot-floating-button__back {
            position: absolute;
            width: 100%;
            height: 100%;
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            background-color: #6aaae4;
            border-radius: 10px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            transition: transform 0.6s;
            transform-style: preserve-3d;
        }

        #ot-sdk-btn-floating .ot-floating-button__front {
            background-color: #6aaae4;
            transform: rotateY(0);
        }

        #ot-sdk-btn-floating .ot-floating-button__front.custom-persistent-icon {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: 100%;
            border-radius: 100px;
        }

        #ot-sdk-btn-floating .ot-floating-button__front svg {
            width: 30px;
            height: 37px;
        }

        #ot-sdk-btn-floating .ot-floating-button__back {
            background-color: #69c;
            transform: rotateY(-180deg);
        }

        #ot-sdk-btn-floating .ot-floating-button__back.custom-persistent-icon {
            background-position: center center;
            background-repeat: no-repeat;
            background-size: 100%;
            border-radius: 100px;
        }

        #ot-sdk-btn-floating .ot-floating-button__back svg {
            width: 24px;
            height: 24px;
        }

        #ot-sdk-btn-floating.ot-floating-button button {
            padding: 0;
            background-color: rgba(0, 0, 0, 0);
            border: 0;
            width: 100%;
            height: 100%;
            cursor: pointer;
        }

        @keyframes otFloatingBtnIntro {
            0% {
                opacity: 0;
                left: -75px;
            }

            100% {
                opacity: 1;
                left: 1%;
            }
        }

        @keyframes otFloatingBtnImageIntro {
            0% {
                opacity: 0;
                transform: scale(0) rotate(-270deg);
            }

            100% {
                opacity: 100%;
                transform: scale(0.95) rotate(0deg);
            }
        }
    </style>
    <style>
        :root {
            --btn1: #00bdff;
            --btn2: #ff0029;
            --index-bg: #ff0029;
            --index-bg1: #262626;
            --font-family-sans-serif: "Open Sans", sans-serif;
            --font-family-monospace: SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
        }
    </style>
    ${advert.gaCode}
</head>

<body class="dark-mode">

<header id="page-header" class="fixed-top">
    <div class="d-none d-lg-flex w-100 px-40 align-items-center justify-content-between">
        <nav class="navbar navbar-expand-md navbar-light">
            <a href="/" class="navbar-brand">
                <img src="/domain/${advert.domain}/logo.png" style="width: 10rem; height: 6rem"/>
            </a>
            <ul class="navbar-nav pl-72">
                <li class="nav-item active">
                    <a href="/" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/privacy_policy">Privacy Policy</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact_us">Contact Us</a>
                </li>
            </ul>
        </nav>
    </div>
    <div class="d-flex d-lg-none w-100 px-16 align-items-center justify-content-between overflow-hidden">
        <nav
                class="navbar navbar-expand navbar-light white-space-no-wrap svg-menu-animate w-100"
        >
            <a href="/" class="navbar-brand">
                <img src="/domain/${advert.domain}/logo.png" style="width: 10rem; height: 6rem"/>
            </a>
            <ul class="navbar-nav pl-24 w-100 align-items-center position-relative">
                <li class="nav-item active">
                    <a href="/" class="nav-link">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/privacy_policy">Privacy Policy</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/contact_us">Contact Us</a>
                </li>
            </ul>
        </nav>
    </div>
</header>


<main id="main-content" class="header-spacing">
    <div class="container pt-16 pb-32 pt-md-96 pb-md-48 order-5 order-md-6">
        <div class="row border-bottom-light-grey-row align-items-center pb-8 pb-md-16">
            <div class="col-9">
                <h3 class="mb-0">${category ! ''} Games</h3>
            </div>
        </div>
        <div class="row">
            <#list all_game as game>
                <div class="col-12 col-md-4 col-lg-3 col-xl-2 my-8 my-md-24">
                    <a href="/details/${game.id}" class="text-decoration-none">
                        <div class="row align-items-center">
                            <div class="col-3 col-md-12">
                                <div class="img-mb-sm img-dt-md">
                                <span><img width="192" height="192" src="${game.gamePreview}"
                                           class="img-fluid game-icon"></span>
                                </div>
                            </div>
                            <div class="col-6 col-md-12">
                                <h4 class="mt-md-16 mb-4 single-line">${game.gameName}</h4>
                                <div class="d-flex pt-md-8" style="justify-content: space-between">
                                    <span class="text-lighter-grey exclude-theme">${game.gameCategory}</span>
                                    <div class="ml-5 ml-md-0" style="display: inline-block">
                                        <span class="">${game.gameHot}</span>
                                        <div class="star"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-3 col-md-12 text-right text-md-left">
                                <button class="btn btn-sm btn-secondary mt-md-16">
                                    Play
                                </button>
                            </div>
                        </div>
                    </a>
                </div>
            </#list>
        </div>
    </div>
</main>

<footer id="page-footer" class="container-fluid py-30 pt-md-96 pb-md-42 px-16 px-md-40 bg-light">
    <div class="row">
        <div class="col-12">
            <div class="mb-30 text-center">
                ${advert.content}
            </div>
            <div>
                <ul class="ul-navigation-horizontal justify-content-center">
                    <li><a style="color: white !important;" href="/about_us">About Us</a></li>
                    <li><a style="color: white !important;" href="/privacy_policy">Privacy Policy</a></li>
                    <li><a style="color: white !important;" href="/term_of_use">Terms of Use</a></li>
                    <li><a style="color: white !important;" href="/contact_us">Contact Us</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="row pt-32 pt-md-50 flex-column flex-md-row">
        <div class="col text-center text-md-left">Copyright © 2024 <a href="/">${advert.serviceName}</a>. All Rights
            Reserved.
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-element-bundle.min.js"></script>
</body>
</html>
