function bin2hex(str) {
    var result = "";
    for (i = 0; i < str.length; i++) {
        var c = str.charCodeAt(i);
        result += byte2Hex(c >> 8 & 0xff); // 高字节
        result += byte2Hex(c & 0xff); // 低字节
    }
    return result;
}

function byte2Hex(b) {
    if (b < 0x10) return "0" + b.toString(16);
    else return b.toString(16);
}

function getBrowser() {
    var u = navigator.userAgent
    var bws = [{
        name: 'sgssapp',
        it: /sogousearch/i.test(u)
    }, {
        name: 'wechat',
        it: /MicroMessenger/i.test(u)
    }, {
        name: 'weibo',
        it: !!u.match(/Weibo/i)
    }, {
        name: 'uc',
        it: !!u.match(/UCBrowser/i) || u.indexOf(' UBrowser') > -1
    }, {
        name: 'sogou',
        it: u.indexOf('MetaSr') > -1 || u.indexOf('Sogou') > -1
    }, {
        name: 'xiaomi',
        it: u.indexOf('MiuiBrowser') > -1
    }, {
        name: 'baidu',
        it: u.indexOf('Baidu') > -1 || u.indexOf('BIDUBrowser') > -1
    }, {
        name: '360',
        it: u.indexOf('360EE') > -1 || u.indexOf('360SE') > -1
    }, {
        name: '2345',
        it: u.indexOf('2345Explorer') > -1
    }, {
        name: 'edge',
        it: u.indexOf('Edge') > -1
    }, {
        name: 'ie11',
        it: u.indexOf('Trident') > -1 && u.indexOf('rv:11.0') > -1
    }, {
        name: 'ie',
        it: u.indexOf('compatible') > -1 && u.indexOf('MSIE') > -1
    }, {
        name: 'firefox',
        it: u.indexOf('Firefox') > -1
    }, {
        name: 'safari',
        it: u.indexOf('Safari') > -1 && u.indexOf('Chrome') === -1
    }, {
        name: 'qqbrowser',
        it: u.indexOf('MQQBrowser') > -1 && u.indexOf(' QQ') === -1
    }, {
        name: 'qq',
        it: u.indexOf('QQ') > -1
    }, {
        name: 'chrome',
        it: u.indexOf('Chrome') > -1 || u.indexOf('CriOS') > -1
    }, {
        name: 'opera',
        it: u.indexOf('Opera') > -1 || u.indexOf('OPR') > -1
    }]
    for (var i = 0; i < bws.length; i++) {
        if (bws[i].it) {
            return bws[i].name
        }
    }

    return 'other'
}

function getOS() {
    var u = navigator.userAgent
    if (!!u.match(/compatible/i) || u.match(/Windows/i)) {
        return 'windows'
    } else if (!!u.match(/Macintosh/i) || u.match(/MacIntel/i)) {
        return 'macOS'
    } else if (!!u.match(/iphone/i) || u.match(/Ipad/i)) {
        return 'ios'
    } else if (u.match(/android/i)) {
        return 'android'
    } else if (u.match(/Ubuntu/i)) {
        return 'Ubuntu'
    } else {
        return 'other'
    }
}


function ajax(opt) {
    opt = opt || {};
    opt.method = opt.method.toUpperCase() || 'POST';
    opt.url = opt.url || '';
    opt.async = opt.async || true;
    opt.data = opt.data || null;
    opt.success = opt.success ||
        function () {
        };
    var xmlHttp = null;
    if (XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    } else {
        xmlHttp = new ActiveXObject('Microsoft.XMLHTTP');
    }
    var params = [];
    for (var key in opt.data) {
        params.push(key + '=' + opt.data[key]);
    }
    var postData = params.join('&');
    if (opt.method.toUpperCase() === 'POST') {
        xmlHttp.open(opt.method, opt.url, opt.async);
        xmlHttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded;charset=utf-8');
        xmlHttp.send(postData);
    } else if (opt.method.toUpperCase() === 'GET') {
        xmlHttp.open(opt.method, opt.url + '?' + postData, opt.async);
        xmlHttp.send(null);
    }
    xmlHttp.onreadystatechange = function () {
        if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
            opt.success(xmlHttp.responseText);
        }
    };
}

function S4() {
    return (((1 + Math.random()) * 0x10000) | 0).toString(16).substring(1);
};

function guid() {
    return (S4() + S4() + "-" + S4() + "-" + S4() + "-" + S4() + "-" + S4() + S4() + S4());
}


function addCookie(objName, objValue, objHours) {
    var str = objName + "=" + escape(objValue); //编码
    if (objHours > 0) { //为0时不设定过期时间，浏览器关闭时cookie自动消失
        var date = new Date();
        var ms = objHours * 3600 * 1000;
        date.setTime(date.getTime() + ms);
        str += "; expires=" + date.toGMTString();
    }
    document.cookie = str;
}

//读Cookie
function getCookie(objName) { //获取指定名称的cookie的值
    var arrStr = document.cookie.split("; ");
    for (var i = 0; i < arrStr.length; i++) {
        var temp = arrStr[i].split("=");
        if (temp[0] == objName) return unescape(temp[1]); //解码
    }
    return "";
}

//读Cookie
var user_cookie = getCookie('userids')

if (!user_cookie) {
    addCookie('userids', guid(), 100000)
    // console.log('ee');
    postJson()

}

function postJson() {
    var Gpu = '';
    try {
        var canvas = document.createElement('canvas'),
            gl = canvas.getContext('experimental-webgl'),
            debugInfo = gl.getExtension('WEBGL_debug_renderer_info');
        Gpu = gl.getParameter(debugInfo.UNMASKED_RENDERER_WEBGL);

    } catch (e) {
        // statements
        console.log(e);
    }

    url = 'https://quanchao-js-test.ap-southeast-1.log.aliyuncs.com/logstores/quanchao-js-test/track?APIVersion=0.6.0&';

    ajax({
        method: 'get',
        url: url,
        async: false,
        data: {
            '&os': getOS(),
            'Browser': getBrowser(),
            'title': document.title,
            'guid': getCookie('userids'),
            'documentHeight': document.body.offsetHeight,
            'screenW': window.screen.width,
            'screenH': window.screen.height,
            'Gpu': Gpu,
            'navigator_platform': navigator.platform,
            'navigator_appName': navigator.appName,
            'navigator_language': navigator.language,
            'navigator_appVersion': navigator.appVersion,
            'navigator_userAgent': navigator.userAgent,
            'currentURL': window.location.href
        },
        success: function (res) {
            // var time =Math.floor( endTime - startTime)
            // alert('手速'+time + '毫秒')
        }

    });

}