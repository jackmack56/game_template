(()=>{
  var e = {
      18: (e,t,o)=>{
          "use strict";
          var n = o(178);
          e.exports = function(e, t, o) {
              var r = []
                , i = !1
                , a = !1;
              function s() {
                  if (i)
                      throw new Error("Nested m.redraw.sync() call");
                  i = !0;
                  for (var t = 0; t < r.length; t += 2)
                      try {
                          e(r[t], n(r[t + 1]), l)
                      } catch (e) {
                          o.error(e)
                      }
                  i = !1
              }
              function l() {
                  a || (a = !0,
                  t((function() {
                      a = !1,
                      s()
                  }
                  )))
              }
              return l.sync = s,
              {
                  mount: function(t, o) {
                      if (null != o && null == o.view && "function" != typeof o)
                          throw new TypeError("m.mount(element, component) expects a component, not a vnode");
                      var i = r.indexOf(t);
                      i >= 0 && (r.splice(i, 2),
                      e(t, [], l)),
                      null != o && (r.push(t, o),
                      e(t, n(o), l))
                  },
                  redraw: l
              }
          }
      }
      ,
      223: (e,t,o)=>{
          "use strict";
          var n = o(178)
            , r = o(373)
            , i = o(164)
            , a = o(249)
            , s = o(561)
            , l = o(562)
            , c = o(127)
            , d = {};
          e.exports = function(e, t) {
              var o;
              function h(t, n, r) {
                  if (t = a(t, n),
                  null != o) {
                      o();
                      var i = r ? r.state : null
                        , s = r ? r.title : null;
                      r && r.replace ? e.history.replaceState(i, s, v.prefix + t) : e.history.pushState(i, s, v.prefix + t)
                  } else
                      e.location.href = v.prefix + t
              }
              var p, u, m, f, g = d, y = v.SKIP = {};
              function v(r, a, b) {
                  if (null == r)
                      throw new Error("Ensure the DOM element that was passed to `m.route` is not undefined");
                  var w, R = 0, k = Object.keys(b).map((function(e) {
                      if ("/" !== e[0])
                          throw new SyntaxError("Routes must start with a `/`");
                      if (/:([^\/\.-]+)(\.{3})?:/.test(e))
                          throw new SyntaxError("Route parameter names must be separated with either `/`, `.`, or `-`");
                      return {
                          route: e,
                          component: b[e],
                          check: l(e)
                      }
                  }
                  )), F = "function" == typeof setImmediate ? setImmediate : setTimeout, V = i.resolve(), C = !1;
                  if (o = null,
                  null != a) {
                      var S = s(a);
                      if (!k.some((function(e) {
                          return e.check(S)
                      }
                      )))
                          throw new ReferenceError("Default route doesn't match any known routes")
                  }
                  function P() {
                      C = !1;
                      var o = e.location.hash;
                      "#" !== v.prefix[0] && (o = e.location.search + o,
                      "?" !== v.prefix[0] && "/" !== (o = e.location.pathname + o)[0] && (o = "/" + o));
                      var n = o.concat().replace(/(?:%[a-f89][a-f0-9])+/gim, decodeURIComponent).slice(v.prefix.length)
                        , r = s(n);
                      function i() {
                          if (n === a)
                              throw new Error("Could not resolve default route " + a);
                          h(a, null, {
                              replace: !0
                          })
                      }
                      c(r.params, e.history.state),
                      function e(o) {
                          for (; o < k.length; o++)
                              if (k[o].check(r)) {
                                  var a = k[o].component
                                    , s = k[o].route
                                    , l = a
                                    , c = f = function(i) {
                                      if (c === f) {
                                          if (i === y)
                                              return e(o + 1);
                                          p = null == i || "function" != typeof i.view && "function" != typeof i ? "div" : i,
                                          u = r.params,
                                          m = n,
                                          f = null,
                                          g = a.render ? a : null,
                                          2 === R ? t.redraw() : (R = 2,
                                          t.redraw.sync())
                                      }
                                  }
                                  ;
                                  return void (a.view || "function" == typeof a ? (a = {},
                                  c(l)) : a.onmatch ? V.then((function() {
                                      return a.onmatch(r.params, n, s)
                                  }
                                  )).then(c, i) : c("div"))
                              }
                          i()
                      }(0)
                  }
                  return o = function() {
                      C || (C = !0,
                      F(P))
                  }
                  ,
                  "function" == typeof e.history.pushState ? (w = function() {
                      e.removeEventListener("popstate", o, !1)
                  }
                  ,
                  e.addEventListener("popstate", o, !1)) : "#" === v.prefix[0] && (o = null,
                  w = function() {
                      e.removeEventListener("hashchange", P, !1)
                  }
                  ,
                  e.addEventListener("hashchange", P, !1)),
                  t.mount(r, {
                      onbeforeupdate: function() {
                          return !(!(R = R ? 2 : 1) || d === g)
                      },
                      oncreate: P,
                      onremove: w,
                      view: function() {
                          if (R && d !== g) {
                              var e = [n(p, u.key, u)];
                              return g && (e = g.render(e[0])),
                              e
                          }
                      }
                  })
              }
              return v.set = function(e, t, o) {
                  null != f && ((o = o || {}).replace = !0),
                  f = null,
                  h(e, t, o)
              }
              ,
              v.get = function() {
                  return m
              }
              ,
              v.prefix = "#!",
              v.Link = {
                  view: function(e) {
                      var t, o, n = e.attrs.options, i = {};
                      c(i, e.attrs),
                      i.selector = i.options = i.key = i.oninit = i.oncreate = i.onbeforeupdate = i.onupdate = i.onbeforeremove = i.onremove = null;
                      var a = r(e.attrs.selector || "a", i, e.children);
                      return (a.attrs.disabled = Boolean(a.attrs.disabled)) ? (a.attrs.href = null,
                      a.attrs["aria-disabled"] = "true",
                      a.attrs.onclick = null) : (t = a.attrs.onclick,
                      o = a.attrs.href,
                      a.attrs.href = v.prefix + o,
                      a.attrs.onclick = function(e) {
                          var r;
                          "function" == typeof t ? r = t.call(e.currentTarget, e) : null == t || "object" != typeof t || "function" == typeof t.handleEvent && t.handleEvent(e),
                          !1 === r || e.defaultPrevented || 0 !== e.button && 0 !== e.which && 1 !== e.which || e.currentTarget.target && "_self" !== e.currentTarget.target || e.ctrlKey || e.metaKey || e.shiftKey || e.altKey || (e.preventDefault(),
                          e.redraw = !1,
                          v.set(o, null, n))
                      }
                      ),
                      a
                  }
              },
              v.param = function(e) {
                  return u && null != e ? u[e] : u
              }
              ,
              v
          }
      }
      ,
      262: (e,t,o)=>{
          "use strict";
          var n = o(373);
          n.trust = o(742),
          n.fragment = o(621),
          e.exports = n
      }
      ,
      865: (e,t,o)=>{
          "use strict";
          var n = o(262)
            , r = o(74)
            , i = o(165)
            , a = function() {
              return n.apply(this, arguments)
          };
          a.m = n,
          a.trust = n.trust,
          a.fragment = n.fragment,
          a.mount = i.mount,
          a.route = o(843),
          a.render = o(358),
          a.redraw = i.redraw,
          a.request = r.request,
          a.jsonp = r.jsonp,
          a.parseQueryString = o(874),
          a.buildQueryString = o(478),
          a.parsePathname = o(561),
          a.buildPathname = o(249),
          a.vnode = o(178),
          a.PromisePolyfill = o(803),
          e.exports = a
      }
      ,
      165: (e,t,o)=>{
          "use strict";
          var n = o(358);
          e.exports = o(18)(n, requestAnimationFrame, console)
      }
      ,
      127: e=>{
          "use strict";
          e.exports = Object.assign || function(e, t) {
              t && Object.keys(t).forEach((function(o) {
                  e[o] = t[o]
              }
              ))
          }
      }
      ,
      249: (e,t,o)=>{
          "use strict";
          var n = o(478)
            , r = o(127);
          e.exports = function(e, t) {
              if (/:([^\/\.-]+)(\.{3})?:/.test(e))
                  throw new SyntaxError("Template parameter names *must* be separated");
              if (null == t)
                  return e;
              var o = e.indexOf("?")
                , i = e.indexOf("#")
                , a = i < 0 ? e.length : i
                , s = o < 0 ? a : o
                , l = e.slice(0, s)
                , c = {};
              r(c, t);
              var d = l.replace(/:([^\/\.-]+)(\.{3})?/g, (function(e, o, n) {
                  return delete c[o],
                  null == t[o] ? e : n ? t[o] : encodeURIComponent(String(t[o]))
              }
              ))
                , h = d.indexOf("?")
                , p = d.indexOf("#")
                , u = p < 0 ? d.length : p
                , m = h < 0 ? u : h
                , f = d.slice(0, m);
              o >= 0 && (f += e.slice(o, a)),
              h >= 0 && (f += (o < 0 ? "?" : "&") + d.slice(h, u));
              var g = n(c);
              return g && (f += (o < 0 && h < 0 ? "?" : "&") + g),
              i >= 0 && (f += e.slice(i)),
              p >= 0 && (f += (i < 0 ? "" : "&") + d.slice(p)),
              f
          }
      }
      ,
      562: (e,t,o)=>{
          "use strict";
          var n = o(561);
          e.exports = function(e) {
              var t = n(e)
                , o = Object.keys(t.params)
                , r = []
                , i = new RegExp("^" + t.path.replace(/:([^\/.-]+)(\.{3}|\.(?!\.)|-)?|[\\^$*+.()|\[\]{}]/g, (function(e, t, o) {
                  return null == t ? "\\" + e : (r.push({
                      k: t,
                      r: "..." === o
                  }),
                  "..." === o ? "(.*)" : "." === o ? "([^/]+)\\." : "([^/]+)" + (o || ""))
              }
              )) + "$");
              return function(e) {
                  for (var n = 0; n < o.length; n++)
                      if (t.params[o[n]] !== e.params[o[n]])
                          return !1;
                  if (!r.length)
                      return i.test(e.path);
                  var a = i.exec(e.path);
                  if (null == a)
                      return !1;
                  for (n = 0; n < r.length; n++)
                      e.params[r[n].k] = r[n].r ? a[n + 1] : decodeURIComponent(a[n + 1]);
                  return !0
              }
          }
      }
      ,
      561: (e,t,o)=>{
          "use strict";
          var n = o(874);
          e.exports = function(e) {
              var t = e.indexOf("?")
                , o = e.indexOf("#")
                , r = o < 0 ? e.length : o
                , i = t < 0 ? r : t
                , a = e.slice(0, i).replace(/\/{2,}/g, "/");
              return a ? ("/" !== a[0] && (a = "/" + a),
              a.length > 1 && "/" === a[a.length - 1] && (a = a.slice(0, -1))) : a = "/",
              {
                  path: a,
                  params: t < 0 ? {} : n(e.slice(t + 1, r))
              }
          }
      }
      ,
      803: e=>{
          "use strict";
          var t = function(e) {
              if (!(this instanceof t))
                  throw new Error("Promise must be called with `new`");
              if ("function" != typeof e)
                  throw new TypeError("executor must be a function");
              var o = this
                , n = []
                , r = []
                , i = c(n, !0)
                , a = c(r, !1)
                , s = o._instance = {
                  resolvers: n,
                  rejectors: r
              }
                , l = "function" == typeof setImmediate ? setImmediate : setTimeout;
              function c(e, t) {
                  return function i(c) {
                      var h;
                      try {
                          if (!t || null == c || "object" != typeof c && "function" != typeof c || "function" != typeof (h = c.then))
                              l((function() {
                                  t || 0 !== e.length || console.error("Possible unhandled promise rejection:", c);
                                  for (var o = 0; o < e.length; o++)
                                      e[o](c);
                                  n.length = 0,
                                  r.length = 0,
                                  s.state = t,
                                  s.retry = function() {
                                      i(c)
                                  }
                              }
                              ));
                          else {
                              if (c === o)
                                  throw new TypeError("Promise can't be resolved w/ itself");
                              d(h.bind(c))
                          }
                      } catch (e) {
                          a(e)
                      }
                  }
              }
              function d(e) {
                  var t = 0;
                  function o(e) {
                      return function(o) {
                          t++ > 0 || e(o)
                      }
                  }
                  var n = o(a);
                  try {
                      e(o(i), n)
                  } catch (e) {
                      n(e)
                  }
              }
              d(e)
          };
          t.prototype.then = function(e, o) {
              var n, r, i = this._instance;
              function a(e, t, o, a) {
                  t.push((function(t) {
                      if ("function" != typeof e)
                          o(t);
                      else
                          try {
                              n(e(t))
                          } catch (e) {
                              r && r(e)
                          }
                  }
                  )),
                  "function" == typeof i.retry && a === i.state && i.retry()
              }
              var s = new t((function(e, t) {
                  n = e,
                  r = t
              }
              ));
              return a(e, i.resolvers, n, !0),
              a(o, i.rejectors, r, !1),
              s
          }
          ,
          t.prototype.catch = function(e) {
              return this.then(null, e)
          }
          ,
          t.prototype.finally = function(e) {
              return this.then((function(o) {
                  return t.resolve(e()).then((function() {
                      return o
                  }
                  ))
              }
              ), (function(o) {
                  return t.resolve(e()).then((function() {
                      return t.reject(o)
                  }
                  ))
              }
              ))
          }
          ,
          t.resolve = function(e) {
              return e instanceof t ? e : new t((function(t) {
                  t(e)
              }
              ))
          }
          ,
          t.reject = function(e) {
              return new t((function(t, o) {
                  o(e)
              }
              ))
          }
          ,
          t.all = function(e) {
              return new t((function(t, o) {
                  var n = e.length
                    , r = 0
                    , i = [];
                  if (0 === e.length)
                      t([]);
                  else
                      for (var a = 0; a < e.length; a++)
                          !function(a) {
                              function s(e) {
                                  r++,
                                  i[a] = e,
                                  r === n && t(i)
                              }
                              null == e[a] || "object" != typeof e[a] && "function" != typeof e[a] || "function" != typeof e[a].then ? s(e[a]) : e[a].then(s, o)
                          }(a)
              }
              ))
          }
          ,
          t.race = function(e) {
              return new t((function(t, o) {
                  for (var n = 0; n < e.length; n++)
                      e[n].then(t, o)
              }
              ))
          }
          ,
          e.exports = t
      }
      ,
      164: (e,t,o)=>{
          "use strict";
          var n = o(803);
          "undefined" != typeof window ? (void 0 === window.Promise ? window.Promise = n : window.Promise.prototype.finally || (window.Promise.prototype.finally = n.prototype.finally),
          e.exports = window.Promise) : void 0 !== o.g ? (void 0 === o.g.Promise ? o.g.Promise = n : o.g.Promise.prototype.finally || (o.g.Promise.prototype.finally = n.prototype.finally),
          e.exports = o.g.Promise) : e.exports = n
      }
      ,
      478: e=>{
          "use strict";
          e.exports = function(e) {
              if ("[object Object]" !== Object.prototype.toString.call(e))
                  return "";
              var t = [];
              for (var o in e)
                  n(o, e[o]);
              return t.join("&");
              function n(e, o) {
                  if (Array.isArray(o))
                      for (var r = 0; r < o.length; r++)
                          n(e + "[" + r + "]", o[r]);
                  else if ("[object Object]" === Object.prototype.toString.call(o))
                      for (var r in o)
                          n(e + "[" + r + "]", o[r]);
                  else
                      t.push(encodeURIComponent(e) + (null != o && "" !== o ? "=" + encodeURIComponent(o) : ""))
              }
          }
      }
      ,
      874: e=>{
          "use strict";
          e.exports = function(e) {
              if ("" === e || null == e)
                  return {};
              "?" === e.charAt(0) && (e = e.slice(1));
              for (var t = e.split("&"), o = {}, n = {}, r = 0; r < t.length; r++) {
                  var i = t[r].split("=")
                    , a = decodeURIComponent(i[0])
                    , s = 2 === i.length ? decodeURIComponent(i[1]) : "";
                  "true" === s ? s = !0 : "false" === s && (s = !1);
                  var l = a.split(/\]\[?|\[/)
                    , c = n;
                  a.indexOf("[") > -1 && l.pop();
                  for (var d = 0; d < l.length; d++) {
                      var h = l[d]
                        , p = l[d + 1]
                        , u = "" == p || !isNaN(parseInt(p, 10));
                      if ("" === h)
                          null == o[a = l.slice(0, d).join()] && (o[a] = Array.isArray(c) ? c.length : 0),
                          h = o[a]++;
                      else if ("__proto__" === h)
                          break;
                      if (d === l.length - 1)
                          c[h] = s;
                      else {
                          var m = Object.getOwnPropertyDescriptor(c, h);
                          null != m && (m = m.value),
                          null == m && (c[h] = m = u ? [] : {}),
                          c = m
                      }
                  }
              }
              return n
          }
      }
      ,
      358: (e,t,o)=>{
          "use strict";
          e.exports = o(452)(window)
      }
      ,
      621: (e,t,o)=>{
          "use strict";
          var n = o(178)
            , r = o(359);
          e.exports = function() {
              var e = r.apply(0, arguments);
              return e.tag = "[",
              e.children = n.normalizeChildren(e.children),
              e
          }
      }
      ,
      373: (e,t,o)=>{
          "use strict";
          var n = o(178)
            , r = o(359)
            , i = /(?:(^|#|\.)([^#\.\[\]]+))|(\[(.+?)(?:\s*=\s*("|'|)((?:\\["'\]]|.)*?)\5)?\])/g
            , a = {}
            , s = {}.hasOwnProperty;
          function l(e) {
              for (var t in e)
                  if (s.call(e, t))
                      return !1;
              return !0
          }
          e.exports = function(e) {
              if (null == e || "string" != typeof e && "function" != typeof e && "function" != typeof e.view)
                  throw Error("The selector must be either a string or a component.");
              var t = r.apply(1, arguments);
              return "string" == typeof e && (t.children = n.normalizeChildren(t.children),
              "[" !== e) ? function(e, t) {
                  var o = t.attrs
                    , r = n.normalizeChildren(t.children)
                    , i = s.call(o, "class")
                    , a = i ? o.class : o.className;
                  if (t.tag = e.tag,
                  t.attrs = null,
                  t.children = void 0,
                  !l(e.attrs) && !l(o)) {
                      var c = {};
                      for (var d in o)
                          s.call(o, d) && (c[d] = o[d]);
                      o = c
                  }
                  for (var d in e.attrs)
                      s.call(e.attrs, d) && "className" !== d && !s.call(o, d) && (o[d] = e.attrs[d]);
                  for (var d in null == a && null == e.attrs.className || (o.className = null != a ? null != e.attrs.className ? String(e.attrs.className) + " " + String(a) : a : null != e.attrs.className ? e.attrs.className : null),
                  i && (o.class = null),
                  o)
                      if (s.call(o, d) && "key" !== d) {
                          t.attrs = o;
                          break
                      }
                  return Array.isArray(r) && 1 === r.length && null != r[0] && "#" === r[0].tag ? t.text = r[0].children : t.children = r,
                  t
              }(a[e] || function(e) {
                  for (var t, o = "div", n = [], r = {}; t = i.exec(e); ) {
                      var s = t[1]
                        , l = t[2];
                      if ("" === s && "" !== l)
                          o = l;
                      else if ("#" === s)
                          r.id = l;
                      else if ("." === s)
                          n.push(l);
                      else if ("[" === t[3][0]) {
                          var c = t[6];
                          c && (c = c.replace(/\\(["'])/g, "$1").replace(/\\\\/g, "\\")),
                          "class" === t[4] ? n.push(c) : r[t[4]] = "" === c ? c : c || !0
                      }
                  }
                  return n.length > 0 && (r.className = n.join(" ")),
                  a[e] = {
                      tag: o,
                      attrs: r
                  }
              }(e), t) : (t.tag = e,
              t)
          }
      }
      ,
      359: (e,t,o)=>{
          "use strict";
          var n = o(178);
          e.exports = function() {
              var e, t = arguments[this], o = this + 1;
              if (null == t ? t = {} : ("object" != typeof t || null != t.tag || Array.isArray(t)) && (t = {},
              o = this),
              arguments.length === o + 1)
                  e = arguments[o],
                  Array.isArray(e) || (e = [e]);
              else
                  for (e = []; o < arguments.length; )
                      e.push(arguments[o++]);
              return n("", t.key, t, e)
          }
      }
      ,
      452: (e,t,o)=>{
          "use strict";
          var n = o(178);
          e.exports = function(e) {
              var t, o = e && e.document, r = {
                  svg: "http://www.w3.org/2000/svg",
                  math: "http://www.w3.org/1998/Math/MathML"
              };
              function i(e) {
                  return e.attrs && e.attrs.xmlns || r[e.tag]
              }
              function a(e, t) {
                  if (e.state !== t)
                      throw new Error("`vnode.state` must not be modified")
              }
              function s(e) {
                  var t = e.state;
                  try {
                      return this.apply(t, arguments)
                  } finally {
                      a(e, t)
                  }
              }
              function l() {
                  try {
                      return o.activeElement
                  } catch (e) {
                      return null
                  }
              }
              function c(e, t, o, n, r, i, a) {
                  for (var s = o; s < n; s++) {
                      var l = t[s];
                      null != l && d(e, l, r, a, i)
                  }
              }
              function d(e, t, r, a, l) {
                  var h = t.tag;
                  if ("string" == typeof h)
                      switch (t.state = {},
                      null != t.attrs && U(t.attrs, t, r),
                      h) {
                      case "#":
                          !function(e, t, n) {
                              t.dom = o.createTextNode(t.children),
                              w(e, t.dom, n)
                          }(e, t, l);
                          break;
                      case "<":
                          p(e, t, a, l);
                          break;
                      case "[":
                          !function(e, t, n, r, i) {
                              var a = o.createDocumentFragment();
                              if (null != t.children) {
                                  var s = t.children;
                                  c(a, s, 0, s.length, n, null, r)
                              }
                              t.dom = a.firstChild,
                              t.domSize = a.childNodes.length,
                              w(e, a, i)
                          }(e, t, r, a, l);
                          break;
                      default:
                          !function(e, t, r, a, s) {
                              var l = t.tag
                                , d = t.attrs
                                , h = d && d.is;
                              a = i(t) || a;
                              var p = a ? h ? o.createElementNS(a, l, {
                                  is: h
                              }) : o.createElementNS(a, l) : h ? o.createElement(l, {
                                  is: h
                              }) : o.createElement(l);
                              t.dom = p,
                              null != d && function(e, t, o) {
                                  for (var n in t)
                                      P(e, n, null, t[n], o)
                              }(t, d, a);
                              if (w(e, p, s),
                              !R(t) && (null != t.text && ("" !== t.text ? p.textContent = t.text : t.children = [n("#", void 0, void 0, t.text, void 0, void 0)]),
                              null != t.children)) {
                                  var u = t.children;
                                  c(p, u, 0, u.length, r, null, a),
                                  "select" === t.tag && null != d && function(e, t) {
                                      if ("value"in t)
                                          if (null === t.value)
                                              -1 !== e.dom.selectedIndex && (e.dom.value = null);
                                          else {
                                              var o = "" + t.value;
                                              e.dom.value === o && -1 !== e.dom.selectedIndex || (e.dom.value = o)
                                          }
                                      "selectedIndex"in t && P(e, "selectedIndex", null, t.selectedIndex, void 0)
                                  }(t, d)
                              }
                          }(e, t, r, a, l)
                      }
                  else
                      !function(e, t, o, r, i) {
                          (function(e, t) {
                              var o;
                              if ("function" == typeof e.tag.view) {
                                  if (e.state = Object.create(e.tag),
                                  null != (o = e.state.view).$$reentrantLock$$)
                                      return;
                                  o.$$reentrantLock$$ = !0
                              } else {
                                  if (e.state = void 0,
                                  null != (o = e.tag).$$reentrantLock$$)
                                      return;
                                  o.$$reentrantLock$$ = !0,
                                  e.state = null != e.tag.prototype && "function" == typeof e.tag.prototype.view ? new e.tag(e) : e.tag(e)
                              }
                              U(e.state, e, t),
                              null != e.attrs && U(e.attrs, e, t);
                              if (e.instance = n.normalize(s.call(e.state.view, e)),
                              e.instance === e)
                                  throw Error("A view cannot return the vnode it received as argument");
                              o.$$reentrantLock$$ = null
                          }
                          )(t, o),
                          null != t.instance ? (d(e, t.instance, o, r, i),
                          t.dom = t.instance.dom,
                          t.domSize = null != t.dom ? t.instance.domSize : 0) : t.domSize = 0
                      }(e, t, r, a, l)
              }
              var h = {
                  caption: "table",
                  thead: "table",
                  tbody: "table",
                  tfoot: "table",
                  tr: "tbody",
                  th: "tr",
                  td: "tr",
                  colgroup: "table",
                  col: "colgroup"
              };
              function p(e, t, n, r) {
                  var i = t.children.match(/^\s*?<(\w+)/im) || []
                    , a = o.createElement(h[i[1]] || "div");
                  "http://www.w3.org/2000/svg" === n ? (a.innerHTML = '<svg xmlns="http://www.w3.org/2000/svg">' + t.children + "</svg>",
                  a = a.firstChild) : a.innerHTML = t.children,
                  t.dom = a.firstChild,
                  t.domSize = a.childNodes.length,
                  t.instance = [];
                  for (var s, l = o.createDocumentFragment(); s = a.firstChild; )
                      t.instance.push(s),
                      l.appendChild(s);
                  w(e, l, r)
              }
              function u(e, t, o, n, r, i) {
                  if (t !== o && (null != t || null != o))
                      if (null == t || 0 === t.length)
                          c(e, o, 0, o.length, n, r, i);
                      else if (null == o || 0 === o.length)
                          k(e, t, 0, t.length);
                      else {
                          var a = null != t[0] && null != t[0].key
                            , s = null != o[0] && null != o[0].key
                            , l = 0
                            , h = 0;
                          if (!a)
                              for (; h < t.length && null == t[h]; )
                                  h++;
                          if (!s)
                              for (; l < o.length && null == o[l]; )
                                  l++;
                          if (null === s && null == a)
                              return;
                          if (a !== s)
                              k(e, t, h, t.length),
                              c(e, o, l, o.length, n, r, i);
                          else if (s) {
                              for (var p, u, b, w, R, V = t.length - 1, C = o.length - 1; V >= h && C >= l && (b = t[V],
                              w = o[C],
                              b.key === w.key); )
                                  b !== w && m(e, b, w, n, r, i),
                                  null != w.dom && (r = w.dom),
                                  V--,
                                  C--;
                              for (; V >= h && C >= l && (p = t[h],
                              u = o[l],
                              p.key === u.key); )
                                  h++,
                                  l++,
                                  p !== u && m(e, p, u, n, y(t, h, r), i);
                              for (; V >= h && C >= l && l !== C && p.key === w.key && b.key === u.key; )
                                  v(e, b, R = y(t, h, r)),
                                  b !== u && m(e, b, u, n, R, i),
                                  ++l <= --C && v(e, p, r),
                                  p !== w && m(e, p, w, n, r, i),
                                  null != w.dom && (r = w.dom),
                                  h++,
                                  b = t[--V],
                                  w = o[C],
                                  p = t[h],
                                  u = o[l];
                              for (; V >= h && C >= l && b.key === w.key; )
                                  b !== w && m(e, b, w, n, r, i),
                                  null != w.dom && (r = w.dom),
                                  C--,
                                  b = t[--V],
                                  w = o[C];
                              if (l > C)
                                  k(e, t, h, V + 1);
                              else if (h > V)
                                  c(e, o, l, C + 1, n, r, i);
                              else {
                                  var S, P, x = r, T = C - l + 1, A = new Array(T), E = 0, D = 0, L = 2147483647, I = 0;
                                  for (D = 0; D < T; D++)
                                      A[D] = -1;
                                  for (D = C; D >= l; D--) {
                                      null == S && (S = f(t, h, V + 1));
                                      var _ = S[(w = o[D]).key];
                                      null != _ && (L = _ < L ? _ : -1,
                                      A[D - l] = _,
                                      b = t[_],
                                      t[_] = null,
                                      b !== w && m(e, b, w, n, r, i),
                                      null != w.dom && (r = w.dom),
                                      I++)
                                  }
                                  if (r = x,
                                  I !== V - h + 1 && k(e, t, h, V + 1),
                                  0 === I)
                                      c(e, o, l, C + 1, n, r, i);
                                  else if (-1 === L)
                                      for (P = function(e) {
                                          var t = [0]
                                            , o = 0
                                            , n = 0
                                            , r = 0
                                            , i = g.length = e.length;
                                          for (r = 0; r < i; r++)
                                              g[r] = e[r];
                                          for (r = 0; r < i; ++r)
                                              if (-1 !== e[r]) {
                                                  var a = t[t.length - 1];
                                                  if (e[a] < e[r])
                                                      g[r] = a,
                                                      t.push(r);
                                                  else {
                                                      for (o = 0,
                                                      n = t.length - 1; o < n; ) {
                                                          var s = (o >>> 1) + (n >>> 1) + (o & n & 1);
                                                          e[t[s]] < e[r] ? o = s + 1 : n = s
                                                      }
                                                      e[r] < e[t[o]] && (o > 0 && (g[r] = t[o - 1]),
                                                      t[o] = r)
                                                  }
                                              }
                                          o = t.length,
                                          n = t[o - 1];
                                          for (; o-- > 0; )
                                              t[o] = n,
                                              n = g[n];
                                          return g.length = 0,
                                          t
                                      }(A),
                                      E = P.length - 1,
                                      D = C; D >= l; D--)
                                          u = o[D],
                                          -1 === A[D - l] ? d(e, u, n, i, r) : P[E] === D - l ? E-- : v(e, u, r),
                                          null != u.dom && (r = o[D].dom);
                                  else
                                      for (D = C; D >= l; D--)
                                          u = o[D],
                                          -1 === A[D - l] && d(e, u, n, i, r),
                                          null != u.dom && (r = o[D].dom)
                              }
                          } else {
                              var Y = t.length < o.length ? t.length : o.length;
                              for (l = l < h ? l : h; l < Y; l++)
                                  (p = t[l]) === (u = o[l]) || null == p && null == u || (null == p ? d(e, u, n, i, y(t, l + 1, r)) : null == u ? F(e, p) : m(e, p, u, n, y(t, l + 1, r), i));
                              t.length > Y && k(e, t, l, t.length),
                              o.length > Y && c(e, o, l, o.length, n, r, i)
                          }
                      }
              }
              function m(e, t, o, r, a, l) {
                  var c = t.tag;
                  if (c === o.tag) {
                      if (o.state = t.state,
                      o.events = t.events,
                      function(e, t) {
                          do {
                              var o;
                              if (null != e.attrs && "function" == typeof e.attrs.onbeforeupdate)
                                  if (void 0 !== (o = s.call(e.attrs.onbeforeupdate, e, t)) && !o)
                                      break;
                              if ("string" != typeof e.tag && "function" == typeof e.state.onbeforeupdate)
                                  if (void 0 !== (o = s.call(e.state.onbeforeupdate, e, t)) && !o)
                                      break;
                              return !1
                          } while (0);
                          return e.dom = t.dom,
                          e.domSize = t.domSize,
                          e.instance = t.instance,
                          e.attrs = t.attrs,
                          e.children = t.children,
                          e.text = t.text,
                          !0
                      }(o, t))
                          return;
                      if ("string" == typeof c)
                          switch (null != o.attrs && G(o.attrs, o, r),
                          c) {
                          case "#":
                              !function(e, t) {
                                  e.children.toString() !== t.children.toString() && (e.dom.nodeValue = t.children);
                                  t.dom = e.dom
                              }(t, o);
                              break;
                          case "<":
                              !function(e, t, o, n, r) {
                                  t.children !== o.children ? (V(e, t),
                                  p(e, o, n, r)) : (o.dom = t.dom,
                                  o.domSize = t.domSize,
                                  o.instance = t.instance)
                              }(e, t, o, l, a);
                              break;
                          case "[":
                              !function(e, t, o, n, r, i) {
                                  u(e, t.children, o.children, n, r, i);
                                  var a = 0
                                    , s = o.children;
                                  if (o.dom = null,
                                  null != s) {
                                      for (var l = 0; l < s.length; l++) {
                                          var c = s[l];
                                          null != c && null != c.dom && (null == o.dom && (o.dom = c.dom),
                                          a += c.domSize || 1)
                                      }
                                      1 !== a && (o.domSize = a)
                                  }
                              }(e, t, o, r, a, l);
                              break;
                          default:
                              !function(e, t, o, r) {
                                  var a = t.dom = e.dom;
                                  r = i(t) || r,
                                  "textarea" === t.tag && (null == t.attrs && (t.attrs = {}),
                                  null != t.text && (t.attrs.value = t.text,
                                  t.text = void 0));
                                  (function(e, t, o, n) {
                                      if (null != o)
                                          for (var r in o)
                                              P(e, r, t && t[r], o[r], n);
                                      var i;
                                      if (null != t)
                                          for (var r in t)
                                              null == (i = t[r]) || null != o && null != o[r] || x(e, r, i, n)
                                  }
                                  )(t, e.attrs, t.attrs, r),
                                  R(t) || (null != e.text && null != t.text && "" !== t.text ? e.text.toString() !== t.text.toString() && (e.dom.firstChild.nodeValue = t.text) : (null != e.text && (e.children = [n("#", void 0, void 0, e.text, void 0, e.dom.firstChild)]),
                                  null != t.text && (t.children = [n("#", void 0, void 0, t.text, void 0, void 0)]),
                                  u(a, e.children, t.children, o, null, r)))
                              }(t, o, r, l)
                          }
                      else
                          !function(e, t, o, r, i, a) {
                              if (o.instance = n.normalize(s.call(o.state.view, o)),
                              o.instance === o)
                                  throw Error("A view cannot return the vnode it received as argument");
                              G(o.state, o, r),
                              null != o.attrs && G(o.attrs, o, r);
                              null != o.instance ? (null == t.instance ? d(e, o.instance, r, a, i) : m(e, t.instance, o.instance, r, i, a),
                              o.dom = o.instance.dom,
                              o.domSize = o.instance.domSize) : null != t.instance ? (F(e, t.instance),
                              o.dom = void 0,
                              o.domSize = 0) : (o.dom = t.dom,
                              o.domSize = t.domSize)
                          }(e, t, o, r, a, l)
                  } else
                      F(e, t),
                      d(e, o, r, l, a)
              }
              function f(e, t, o) {
                  for (var n = Object.create(null); t < o; t++) {
                      var r = e[t];
                      if (null != r) {
                          var i = r.key;
                          null != i && (n[i] = t)
                      }
                  }
                  return n
              }
              var g = [];
              function y(e, t, o) {
                  for (; t < e.length; t++)
                      if (null != e[t] && null != e[t].dom)
                          return e[t].dom;
                  return o
              }
              function v(e, t, n) {
                  var r = o.createDocumentFragment();
                  b(e, r, t),
                  w(e, r, n)
              }
              function b(e, t, o) {
                  for (; null != o.dom && o.dom.parentNode === e; ) {
                      if ("string" != typeof o.tag) {
                          if (null != (o = o.instance))
                              continue
                      } else if ("<" === o.tag)
                          for (var n = 0; n < o.instance.length; n++)
                              t.appendChild(o.instance[n]);
                      else if ("[" !== o.tag)
                          t.appendChild(o.dom);
                      else if (1 === o.children.length) {
                          if (null != (o = o.children[0]))
                              continue
                      } else
                          for (n = 0; n < o.children.length; n++) {
                              var r = o.children[n];
                              null != r && b(e, t, r)
                          }
                      break
                  }
              }
              function w(e, t, o) {
                  null != o ? e.insertBefore(t, o) : e.appendChild(t)
              }
              function R(e) {
                  if (null == e.attrs || null == e.attrs.contenteditable && null == e.attrs.contentEditable)
                      return !1;
                  var t = e.children;
                  if (null != t && 1 === t.length && "<" === t[0].tag) {
                      var o = t[0].children;
                      e.dom.innerHTML !== o && (e.dom.innerHTML = o)
                  } else if (null != e.text || null != t && 0 !== t.length)
                      throw new Error("Child node of a contenteditable must be trusted");
                  return !0
              }
              function k(e, t, o, n) {
                  for (var r = o; r < n; r++) {
                      var i = t[r];
                      null != i && F(e, i)
                  }
              }
              function F(e, t) {
                  var o, n, r, i = 0, l = t.state;
                  "string" != typeof t.tag && "function" == typeof t.state.onbeforeremove && (null != (r = s.call(t.state.onbeforeremove, t)) && "function" == typeof r.then && (i = 1,
                  o = r));
                  t.attrs && "function" == typeof t.attrs.onbeforeremove && (null != (r = s.call(t.attrs.onbeforeremove, t)) && "function" == typeof r.then && (i |= 2,
                  n = r));
                  if (a(t, l),
                  i) {
                      if (null != o) {
                          var c = function() {
                              1 & i && ((i &= 2) || d())
                          };
                          o.then(c, c)
                      }
                      if (null != n) {
                          c = function() {
                              2 & i && ((i &= 1) || d())
                          }
                          ;
                          n.then(c, c)
                      }
                  } else
                      S(t),
                      C(e, t);
                  function d() {
                      a(t, l),
                      S(t),
                      C(e, t)
                  }
              }
              function V(e, t) {
                  for (var o = 0; o < t.instance.length; o++)
                      e.removeChild(t.instance[o])
              }
              function C(e, t) {
                  for (; null != t.dom && t.dom.parentNode === e; ) {
                      if ("string" != typeof t.tag) {
                          if (null != (t = t.instance))
                              continue
                      } else if ("<" === t.tag)
                          V(e, t);
                      else {
                          if ("[" !== t.tag && (e.removeChild(t.dom),
                          !Array.isArray(t.children)))
                              break;
                          if (1 === t.children.length) {
                              if (null != (t = t.children[0]))
                                  continue
                          } else
                              for (var o = 0; o < t.children.length; o++) {
                                  var n = t.children[o];
                                  null != n && C(e, n)
                              }
                      }
                      break
                  }
              }
              function S(e) {
                  if ("string" != typeof e.tag && "function" == typeof e.state.onremove && s.call(e.state.onremove, e),
                  e.attrs && "function" == typeof e.attrs.onremove && s.call(e.attrs.onremove, e),
                  "string" != typeof e.tag)
                      null != e.instance && S(e.instance);
                  else {
                      var t = e.children;
                      if (Array.isArray(t))
                          for (var o = 0; o < t.length; o++) {
                              var n = t[o];
                              null != n && S(n)
                          }
                  }
              }
              function P(e, t, n, r, i) {
                  if ("key" !== t && "is" !== t && null != r && !T(t) && (n !== r || function(e, t) {
                      return "value" === t || "checked" === t || "selectedIndex" === t || "selected" === t && e.dom === l() || "option" === e.tag && e.dom.parentNode === o.activeElement
                  }(e, t) || "object" == typeof r)) {
                      if ("o" === t[0] && "n" === t[1])
                          return Y(e, t, r);
                      if ("xlink:" === t.slice(0, 6))
                          e.dom.setAttributeNS("http://www.w3.org/1999/xlink", t.slice(6), r);
                      else if ("style" === t)
                          I(e.dom, n, r);
                      else if (A(e, t, i)) {
                          if ("value" === t) {
                              if (("input" === e.tag || "textarea" === e.tag) && e.dom.value === "" + r && e.dom === l())
                                  return;
                              if ("select" === e.tag && null !== n && e.dom.value === "" + r)
                                  return;
                              if ("option" === e.tag && null !== n && e.dom.value === "" + r)
                                  return
                          }
                          "input" === e.tag && "type" === t ? e.dom.setAttribute(t, r) : e.dom[t] = r
                      } else
                          "boolean" == typeof r ? r ? e.dom.setAttribute(t, "") : e.dom.removeAttribute(t) : e.dom.setAttribute("className" === t ? "class" : t, r)
                  }
              }
              function x(e, t, o, n) {
                  if ("key" !== t && "is" !== t && null != o && !T(t))
                      if ("o" !== t[0] || "n" !== t[1] || T(t))
                          if ("style" === t)
                              I(e.dom, o, null);
                          else if (!A(e, t, n) || "className" === t || "value" === t && ("option" === e.tag || "select" === e.tag && -1 === e.dom.selectedIndex && e.dom === l()) || "input" === e.tag && "type" === t) {
                              var r = t.indexOf(":");
                              -1 !== r && (t = t.slice(r + 1)),
                              !1 !== o && e.dom.removeAttribute("className" === t ? "class" : t)
                          } else
                              e.dom[t] = null;
                      else
                          Y(e, t, void 0)
              }
              function T(e) {
                  return "oninit" === e || "oncreate" === e || "onupdate" === e || "onremove" === e || "onbeforeremove" === e || "onbeforeupdate" === e
              }
              function A(e, t, o) {
                  return void 0 === o && (e.tag.indexOf("-") > -1 || null != e.attrs && e.attrs.is || "href" !== t && "list" !== t && "form" !== t && "width" !== t && "height" !== t) && t in e.dom
              }
              var E = /[A-Z]/g;
              function D(e) {
                  return "-" + e.toLowerCase()
              }
              function L(e) {
                  return "-" === e[0] && "-" === e[1] ? e : "cssFloat" === e ? "float" : e.replace(E, D)
              }
              function I(e, t, o) {
                  if (t === o)
                      ;
                  else if (null == o)
                      e.style.cssText = "";
                  else if ("object" != typeof o)
                      e.style.cssText = o;
                  else if (null == t || "object" != typeof t)
                      for (var n in e.style.cssText = "",
                      o) {
                          null != (r = o[n]) && e.style.setProperty(L(n), String(r))
                      }
                  else {
                      for (var n in o) {
                          var r;
                          null != (r = o[n]) && (r = String(r)) !== String(t[n]) && e.style.setProperty(L(n), r)
                      }
                      for (var n in t)
                          null != t[n] && null == o[n] && e.style.removeProperty(L(n))
                  }
              }
              function _() {
                  this._ = t
              }
              function Y(e, t, o) {
                  if (null != e.events) {
                      if (e.events[t] === o)
                          return;
                      null == o || "function" != typeof o && "object" != typeof o ? (null != e.events[t] && e.dom.removeEventListener(t.slice(2), e.events, !1),
                      e.events[t] = void 0) : (null == e.events[t] && e.dom.addEventListener(t.slice(2), e.events, !1),
                      e.events[t] = o)
                  } else
                      null == o || "function" != typeof o && "object" != typeof o || (e.events = new _,
                      e.dom.addEventListener(t.slice(2), e.events, !1),
                      e.events[t] = o)
              }
              function U(e, t, o) {
                  "function" == typeof e.oninit && s.call(e.oninit, t),
                  "function" == typeof e.oncreate && o.push(s.bind(e.oncreate, t))
              }
              function G(e, t, o) {
                  "function" == typeof e.onupdate && o.push(s.bind(e.onupdate, t))
              }
              return _.prototype = Object.create(null),
              _.prototype.handleEvent = function(e) {
                  var t, o = this["on" + e.type];
                  "function" == typeof o ? t = o.call(e.currentTarget, e) : "function" == typeof o.handleEvent && o.handleEvent(e),
                  this._ && !1 !== e.redraw && (0,
                  this._)(),
                  !1 === t && (e.preventDefault(),
                  e.stopPropagation())
              }
              ,
              function(e, o, r) {
                  if (!e)
                      throw new TypeError("Ensure the DOM element being passed to m.route/m.mount/m.render is not undefined.");
                  var i = []
                    , a = l()
                    , s = e.namespaceURI;
                  null == e.vnodes && (e.textContent = ""),
                  o = n.normalizeChildren(Array.isArray(o) ? o : [o]);
                  var c = t;
                  try {
                      t = "function" == typeof r ? r : void 0,
                      u(e, e.vnodes, o, i, null, "http://www.w3.org/1999/xhtml" === s ? void 0 : s)
                  } finally {
                      t = c
                  }
                  e.vnodes = o,
                  null != a && l() !== a && "function" == typeof a.focus && a.focus();
                  for (var d = 0; d < i.length; d++)
                      i[d]()
              }
          }
      }
      ,
      742: (e,t,o)=>{
          "use strict";
          var n = o(178);
          e.exports = function(e) {
              return null == e && (e = ""),
              n("<", void 0, void 0, e, void 0, void 0)
          }
      }
      ,
      178: e=>{
          "use strict";
          function t(e, t, o, n, r, i) {
              return {
                  tag: e,
                  key: t,
                  attrs: o,
                  children: n,
                  text: r,
                  dom: i,
                  domSize: void 0,
                  state: void 0,
                  events: void 0,
                  instance: void 0
              }
          }
          t.normalize = function(e) {
              return Array.isArray(e) ? t("[", void 0, void 0, t.normalizeChildren(e), void 0, void 0) : null == e || "boolean" == typeof e ? null : "object" == typeof e ? e : t("#", void 0, void 0, String(e), void 0, void 0)
          }
          ,
          t.normalizeChildren = function(e) {
              var o = [];
              if (e.length) {
                  for (var n = null != e[0] && null != e[0].key, r = 1; r < e.length; r++)
                      if ((null != e[r] && null != e[r].key) !== n)
                          throw new TypeError("Vnodes must either always have keys or never have keys!");
                  for (r = 0; r < e.length; r++)
                      o[r] = t.normalize(e[r])
              }
              return o
          }
          ,
          e.exports = t
      }
      ,
      74: (e,t,o)=>{
          "use strict";
          var n = o(164)
            , r = o(165);
          e.exports = o(775)(window, n, r.redraw)
      }
      ,
      775: (e,t,o)=>{
          "use strict";
          var n = o(249);
          e.exports = function(e, t, o) {
              var r = 0;
              function i(e) {
                  return new t(e)
              }
              function a(e) {
                  return function(r, a) {
                      "string" != typeof r ? (a = r,
                      r = r.url) : null == a && (a = {});
                      var s = new t((function(t, o) {
                          e(n(r, a.params), a, (function(e) {
                              if ("function" == typeof a.type)
                                  if (Array.isArray(e))
                                      for (var o = 0; o < e.length; o++)
                                          e[o] = new a.type(e[o]);
                                  else
                                      e = new a.type(e);
                              t(e)
                          }
                          ), o)
                      }
                      ));
                      if (!0 === a.background)
                          return s;
                      var l = 0;
                      function c() {
                          0 == --l && "function" == typeof o && o()
                      }
                      return function e(t) {
                          var o = t.then;
                          return t.constructor = i,
                          t.then = function() {
                              l++;
                              var n = o.apply(t, arguments);
                              return n.then(c, (function(e) {
                                  if (c(),
                                  0 === l)
                                      throw e
                              }
                              )),
                              e(n)
                          }
                          ,
                          t
                      }(s)
                  }
              }
              function s(e, t) {
                  for (var o in e.headers)
                      if ({}.hasOwnProperty.call(e.headers, o) && t.test(o))
                          return !0;
                  return !1
              }
              return i.prototype = t.prototype,
              i.__proto__ = t,
              {
                  request: a((function(t, o, n, r) {
                      var i, a = null != o.method ? o.method.toUpperCase() : "GET", l = o.body, c = !(null != o.serialize && o.serialize !== JSON.serialize || l instanceof e.FormData), d = o.responseType || ("function" == typeof o.extract ? "" : "json"), h = new e.XMLHttpRequest, p = !1, u = h, m = h.abort;
                      for (var f in h.abort = function() {
                          p = !0,
                          m.call(this)
                      }
                      ,
                      h.open(a, t, !1 !== o.async, "string" == typeof o.user ? o.user : void 0, "string" == typeof o.password ? o.password : void 0),
                      c && null != l && !s(o, /^content-type$/i) && h.setRequestHeader("Content-Type", "application/json; charset=utf-8"),
                      "function" == typeof o.deserialize || s(o, /^accept$/i) || h.setRequestHeader("Accept", "application/json, text/*"),
                      o.withCredentials && (h.withCredentials = o.withCredentials),
                      o.timeout && (h.timeout = o.timeout),
                      h.responseType = d,
                      o.headers)
                          ({}).hasOwnProperty.call(o.headers, f) && h.setRequestHeader(f, o.headers[f]);
                      h.onreadystatechange = function(e) {
                          if (!p && 4 === e.target.readyState)
                              try {
                                  var i, a = e.target.status >= 200 && e.target.status < 300 || 304 === e.target.status || /^file:\/\//i.test(t), s = e.target.response;
                                  if ("json" === d ? e.target.responseType || "function" == typeof o.extract || (s = JSON.parse(e.target.responseText)) : d && "text" !== d || null == s && (s = e.target.responseText),
                                  "function" == typeof o.extract ? (s = o.extract(e.target, o),
                                  a = !0) : "function" == typeof o.deserialize && (s = o.deserialize(s)),
                                  a)
                                      n(s);
                                  else {
                                      try {
                                          i = e.target.responseText
                                      } catch (e) {
                                          i = s
                                      }
                                      var l = new Error(i);
                                      l.code = e.target.status,
                                      l.response = s,
                                      r(l)
                                  }
                              } catch (e) {
                                  r(e)
                              }
                      }
                      ,
                      "function" == typeof o.config && (h = o.config(h, o, t) || h) !== u && (i = h.abort,
                      h.abort = function() {
                          p = !0,
                          i.call(this)
                      }
                      ),
                      null == l ? h.send() : "function" == typeof o.serialize ? h.send(o.serialize(l)) : l instanceof e.FormData ? h.send(l) : h.send(JSON.stringify(l))
                  }
                  )),
                  jsonp: a((function(t, o, n, i) {
                      var a = o.callbackName || "_mithril_" + Math.round(1e16 * Math.random()) + "_" + r++
                        , s = e.document.createElement("script");
                      e[a] = function(t) {
                          delete e[a],
                          s.parentNode.removeChild(s),
                          n(t)
                      }
                      ,
                      s.onerror = function() {
                          delete e[a],
                          s.parentNode.removeChild(s),
                          i(new Error("JSONP request failed"))
                      }
                      ,
                      s.src = t + (t.indexOf("?") < 0 ? "?" : "&") + encodeURIComponent(o.callbackKey || "callback") + "=" + encodeURIComponent(a),
                      e.document.documentElement.appendChild(s)
                  }
                  ))
              }
          }
      }
      ,
      843: (e,t,o)=>{
          "use strict";
          var n = o(165);
          e.exports = o(223)(window, n)
      }
      ,
      946: function(e) {
          "undefined" != typeof self && self,
          e.exports = function(e) {
              function t(n) {
                  if (o[n])
                      return o[n].exports;
                  var r = o[n] = {
                      i: n,
                      l: !1,
                      exports: {}
                  };
                  return e[n].call(r.exports, r, r.exports, t),
                  r.l = !0,
                  r.exports
              }
              var o = {};
              return t.m = e,
              t.c = o,
              t.d = function(e, o, n) {
                  t.o(e, o) || Object.defineProperty(e, o, {
                      configurable: !1,
                      enumerable: !0,
                      get: n
                  })
              }
              ,
              t.n = function(e) {
                  var o = e && e.__esModule ? function() {
                      return e.default
                  }
                  : function() {
                      return e
                  }
                  ;
                  return t.d(o, "a", o),
                  o
              }
              ,
              t.o = function(e, t) {
                  return Object.prototype.hasOwnProperty.call(e, t)
              }
              ,
              t.p = "",
              t(t.s = 0)
          }([function(e, t, o) {
              "use strict";
              function n(e, t) {
                  if (!(e instanceof t))
                      throw new TypeError("Cannot call a class as a function")
              }
              Object.defineProperty(t, "__esModule", {
                  value: !0
              });
              var r = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(e) {
                  return typeof e
              }
              : function(e) {
                  return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e
              }
                , i = function() {
                  function e(e, t) {
                      for (var o = 0; o < t.length; o++) {
                          var n = t[o];
                          n.enumerable = n.enumerable || !1,
                          n.configurable = !0,
                          "value"in n && (n.writable = !0),
                          Object.defineProperty(e, n.key, n)
                      }
                  }
                  return function(t, o, n) {
                      return o && e(t.prototype, o),
                      n && e(t, n),
                      t
                  }
              }()
                , a = function() {
                  function e(t) {
                      var o = this;
                      if (n(this, e),
                      this.config = e.mergeSettings(t),
                      this.selector = "string" == typeof this.config.selector ? document.querySelector(this.config.selector) : this.config.selector,
                      null === this.selector)
                          throw new Error("Something wrong with your selector 😭");
                      this.resolveSlidesNumber(),
                      this.selectorWidth = this.selector.offsetWidth,
                      this.innerElements = [].slice.call(this.selector.children),
                      this.currentSlide = this.config.loop ? this.config.startIndex % this.innerElements.length : Math.max(0, Math.min(this.config.startIndex, this.innerElements.length - this.perPage)),
                      this.transformProperty = e.webkitOrNot(),
                      ["resizeHandler", "touchstartHandler", "touchendHandler", "touchmoveHandler", "mousedownHandler", "mouseupHandler", "mouseleaveHandler", "mousemoveHandler", "clickHandler"].forEach((function(e) {
                          o[e] = o[e].bind(o)
                      }
                      )),
                      this.init()
                  }
                  return i(e, [{
                      key: "attachEvents",
                      value: function() {
                          window.addEventListener("resize", this.resizeHandler),
                          this.config.draggable && (this.pointerDown = !1,
                          this.drag = {
                              startX: 0,
                              endX: 0,
                              startY: 0,
                              letItGo: null,
                              preventClick: !1
                          },
                          this.selector.addEventListener("touchstart", this.touchstartHandler),
                          this.selector.addEventListener("touchend", this.touchendHandler),
                          this.selector.addEventListener("touchmove", this.touchmoveHandler),
                          this.selector.addEventListener("mousedown", this.mousedownHandler),
                          this.selector.addEventListener("mouseup", this.mouseupHandler),
                          this.selector.addEventListener("mouseleave", this.mouseleaveHandler),
                          this.selector.addEventListener("mousemove", this.mousemoveHandler),
                          this.selector.addEventListener("click", this.clickHandler))
                      }
                  }, {
                      key: "detachEvents",
                      value: function() {
                          window.removeEventListener("resize", this.resizeHandler),
                          this.selector.removeEventListener("touchstart", this.touchstartHandler),
                          this.selector.removeEventListener("touchend", this.touchendHandler),
                          this.selector.removeEventListener("touchmove", this.touchmoveHandler),
                          this.selector.removeEventListener("mousedown", this.mousedownHandler),
                          this.selector.removeEventListener("mouseup", this.mouseupHandler),
                          this.selector.removeEventListener("mouseleave", this.mouseleaveHandler),
                          this.selector.removeEventListener("mousemove", this.mousemoveHandler),
                          this.selector.removeEventListener("click", this.clickHandler)
                      }
                  }, {
                      key: "init",
                      value: function() {
                          this.attachEvents(),
                          this.selector.style.overflow = "hidden",
                          this.selector.style.direction = this.config.rtl ? "rtl" : "ltr",
                          this.buildSliderFrame(),
                          this.config.onInit.call(this)
                      }
                  }, {
                      key: "buildSliderFrame",
                      value: function() {
                          var e = this.selectorWidth / this.perPage
                            , t = this.config.loop ? this.innerElements.length + 2 * this.perPage : this.innerElements.length;
                          this.sliderFrame = document.createElement("div"),
                          this.sliderFrame.style.width = e * t + "px",
                          this.enableTransition(),
                          this.config.draggable && (this.selector.style.cursor = "-webkit-grab");
                          var o = document.createDocumentFragment();
                          if (this.config.loop)
                              for (var n = this.innerElements.length - this.perPage; n < this.innerElements.length; n++) {
                                  var r = this.buildSliderFrameItem(this.innerElements[n].cloneNode(!0));
                                  o.appendChild(r)
                              }
                          for (var i = 0; i < this.innerElements.length; i++) {
                              var a = this.buildSliderFrameItem(this.innerElements[i]);
                              o.appendChild(a)
                          }
                          if (this.config.loop)
                              for (var s = 0; s < this.perPage; s++) {
                                  var l = this.buildSliderFrameItem(this.innerElements[s].cloneNode(!0));
                                  o.appendChild(l)
                              }
                          this.sliderFrame.appendChild(o),
                          this.selector.innerHTML = "",
                          this.selector.appendChild(this.sliderFrame),
                          this.slideToCurrent()
                      }
                  }, {
                      key: "buildSliderFrameItem",
                      value: function(e) {
                          var t = document.createElement("div");
                          return t.style.cssFloat = this.config.rtl ? "right" : "left",
                          t.style.float = this.config.rtl ? "right" : "left",
                          t.style.width = (this.config.loop ? 100 / (this.innerElements.length + 2 * this.perPage) : 100 / this.innerElements.length) + "%",
                          t.appendChild(e),
                          t
                      }
                  }, {
                      key: "resolveSlidesNumber",
                      value: function() {
                          if ("number" == typeof this.config.perPage)
                              this.perPage = this.config.perPage;
                          else if ("object" === r(this.config.perPage))
                              for (var e in this.perPage = 1,
                              this.config.perPage)
                                  window.innerWidth >= e && (this.perPage = this.config.perPage[e])
                      }
                  }, {
                      key: "prev",
                      value: function() {
                          var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : 1
                            , t = arguments[1];
                          if (!(this.innerElements.length <= this.perPage)) {
                              var o = this.currentSlide;
                              if (this.config.loop)
                                  if (this.currentSlide - e < 0) {
                                      this.disableTransition();
                                      var n = this.currentSlide + this.innerElements.length
                                        , r = n + this.perPage
                                        , i = (this.config.rtl ? 1 : -1) * r * (this.selectorWidth / this.perPage)
                                        , a = this.config.draggable ? this.drag.endX - this.drag.startX : 0;
                                      this.sliderFrame.style[this.transformProperty] = "translate3d(" + (i + a) + "px, 0, 0)",
                                      this.currentSlide = n - e
                                  } else
                                      this.currentSlide = this.currentSlide - e;
                              else
                                  this.currentSlide = Math.max(this.currentSlide - e, 0);
                              o !== this.currentSlide && (this.slideToCurrent(this.config.loop),
                              this.config.onChange.call(this),
                              t && t.call(this))
                          }
                      }
                  }, {
                      key: "next",
                      value: function() {
                          var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : 1
                            , t = arguments[1];
                          if (!(this.innerElements.length <= this.perPage)) {
                              var o = this.currentSlide;
                              if (this.config.loop)
                                  if (this.currentSlide + e > this.innerElements.length - this.perPage) {
                                      this.disableTransition();
                                      var n = this.currentSlide - this.innerElements.length
                                        , r = n + this.perPage
                                        , i = (this.config.rtl ? 1 : -1) * r * (this.selectorWidth / this.perPage)
                                        , a = this.config.draggable ? this.drag.endX - this.drag.startX : 0;
                                      this.sliderFrame.style[this.transformProperty] = "translate3d(" + (i + a) + "px, 0, 0)",
                                      this.currentSlide = n + e
                                  } else
                                      this.currentSlide = this.currentSlide + e;
                              else
                                  this.currentSlide = Math.min(this.currentSlide + e, this.innerElements.length - this.perPage);
                              o !== this.currentSlide && (this.slideToCurrent(this.config.loop),
                              this.config.onChange.call(this),
                              t && t.call(this))
                          }
                      }
                  }, {
                      key: "disableTransition",
                      value: function() {
                          this.sliderFrame.style.webkitTransition = "all 0ms " + this.config.easing,
                          this.sliderFrame.style.transition = "all 0ms " + this.config.easing
                      }
                  }, {
                      key: "enableTransition",
                      value: function() {
                          this.sliderFrame.style.webkitTransition = "all " + this.config.duration + "ms " + this.config.easing,
                          this.sliderFrame.style.transition = "all " + this.config.duration + "ms " + this.config.easing
                      }
                  }, {
                      key: "goTo",
                      value: function(e, t) {
                          if (!(this.innerElements.length <= this.perPage)) {
                              var o = this.currentSlide;
                              this.currentSlide = this.config.loop ? e % this.innerElements.length : Math.min(Math.max(e, 0), this.innerElements.length - this.perPage),
                              o !== this.currentSlide && (this.slideToCurrent(),
                              this.config.onChange.call(this),
                              t && t.call(this))
                          }
                      }
                  }, {
                      key: "slideToCurrent",
                      value: function(e) {
                          var t = this
                            , o = this.config.loop ? this.currentSlide + this.perPage : this.currentSlide
                            , n = (this.config.rtl ? 1 : -1) * o * (this.selectorWidth / this.perPage);
                          e ? requestAnimationFrame((function() {
                              requestAnimationFrame((function() {
                                  t.enableTransition(),
                                  t.sliderFrame.style[t.transformProperty] = "translate3d(" + n + "px, 0, 0)"
                              }
                              ))
                          }
                          )) : this.sliderFrame.style[this.transformProperty] = "translate3d(" + n + "px, 0, 0)"
                      }
                  }, {
                      key: "updateAfterDrag",
                      value: function() {
                          var e = (this.config.rtl ? -1 : 1) * (this.drag.endX - this.drag.startX)
                            , t = Math.abs(e)
                            , o = this.config.multipleDrag ? Math.ceil(t / (this.selectorWidth / this.perPage)) : 1
                            , n = e > 0 && this.currentSlide - o < 0
                            , r = e < 0 && this.currentSlide + o > this.innerElements.length - this.perPage;
                          e > 0 && t > this.config.threshold && this.innerElements.length > this.perPage ? this.prev(o) : e < 0 && t > this.config.threshold && this.innerElements.length > this.perPage && this.next(o),
                          this.slideToCurrent(n || r)
                      }
                  }, {
                      key: "resizeHandler",
                      value: function() {
                          this.resolveSlidesNumber(),
                          this.currentSlide + this.perPage > this.innerElements.length && (this.currentSlide = this.innerElements.length <= this.perPage ? 0 : this.innerElements.length - this.perPage),
                          this.selectorWidth = this.selector.offsetWidth,
                          this.buildSliderFrame()
                      }
                  }, {
                      key: "clearDrag",
                      value: function() {
                          this.drag = {
                              startX: 0,
                              endX: 0,
                              startY: 0,
                              letItGo: null,
                              preventClick: this.drag.preventClick
                          }
                      }
                  }, {
                      key: "touchstartHandler",
                      value: function(e) {
                          -1 !== ["TEXTAREA", "OPTION", "INPUT", "SELECT"].indexOf(e.target.nodeName) || (e.stopPropagation(),
                          this.pointerDown = !0,
                          this.drag.startX = e.touches[0].pageX,
                          this.drag.startY = e.touches[0].pageY)
                      }
                  }, {
                      key: "touchendHandler",
                      value: function(e) {
                          e.stopPropagation(),
                          this.pointerDown = !1,
                          this.enableTransition(),
                          this.drag.endX && this.updateAfterDrag(),
                          this.clearDrag()
                      }
                  }, {
                      key: "touchmoveHandler",
                      value: function(e) {
                          if (e.stopPropagation(),
                          null === this.drag.letItGo && (this.drag.letItGo = Math.abs(this.drag.startY - e.touches[0].pageY) < Math.abs(this.drag.startX - e.touches[0].pageX)),
                          this.pointerDown && this.drag.letItGo) {
                              e.preventDefault(),
                              this.drag.endX = e.touches[0].pageX,
                              this.sliderFrame.style.webkitTransition = "all 0ms " + this.config.easing,
                              this.sliderFrame.style.transition = "all 0ms " + this.config.easing;
                              var t = (this.config.loop ? this.currentSlide + this.perPage : this.currentSlide) * (this.selectorWidth / this.perPage)
                                , o = this.drag.endX - this.drag.startX
                                , n = this.config.rtl ? t + o : t - o;
                              this.sliderFrame.style[this.transformProperty] = "translate3d(" + (this.config.rtl ? 1 : -1) * n + "px, 0, 0)"
                          }
                      }
                  }, {
                      key: "mousedownHandler",
                      value: function(e) {
                          -1 !== ["TEXTAREA", "OPTION", "INPUT", "SELECT"].indexOf(e.target.nodeName) || (e.preventDefault(),
                          e.stopPropagation(),
                          this.pointerDown = !0,
                          this.drag.startX = e.pageX)
                      }
                  }, {
                      key: "mouseupHandler",
                      value: function(e) {
                          e.stopPropagation(),
                          this.pointerDown = !1,
                          this.selector.style.cursor = "-webkit-grab",
                          this.enableTransition(),
                          this.drag.endX && this.updateAfterDrag(),
                          this.clearDrag()
                      }
                  }, {
                      key: "mousemoveHandler",
                      value: function(e) {
                          if (e.preventDefault(),
                          this.pointerDown) {
                              "A" === e.target.nodeName && (this.drag.preventClick = !0),
                              this.drag.endX = e.pageX,
                              this.selector.style.cursor = "-webkit-grabbing",
                              this.sliderFrame.style.webkitTransition = "all 0ms " + this.config.easing,
                              this.sliderFrame.style.transition = "all 0ms " + this.config.easing;
                              var t = (this.config.loop ? this.currentSlide + this.perPage : this.currentSlide) * (this.selectorWidth / this.perPage)
                                , o = this.drag.endX - this.drag.startX
                                , n = this.config.rtl ? t + o : t - o;
                              this.sliderFrame.style[this.transformProperty] = "translate3d(" + (this.config.rtl ? 1 : -1) * n + "px, 0, 0)"
                          }
                      }
                  }, {
                      key: "mouseleaveHandler",
                      value: function(e) {
                          this.pointerDown && (this.pointerDown = !1,
                          this.selector.style.cursor = "-webkit-grab",
                          this.drag.endX = e.pageX,
                          this.drag.preventClick = !1,
                          this.enableTransition(),
                          this.updateAfterDrag(),
                          this.clearDrag())
                      }
                  }, {
                      key: "clickHandler",
                      value: function(e) {
                          this.drag.preventClick && e.preventDefault(),
                          this.drag.preventClick = !1
                      }
                  }, {
                      key: "remove",
                      value: function(e, t) {
                          if (e < 0 || e >= this.innerElements.length)
                              throw new Error("Item to remove doesn't exist 😭");
                          var o = e < this.currentSlide
                            , n = this.currentSlide + this.perPage - 1 === e;
                          (o || n) && this.currentSlide--,
                          this.innerElements.splice(e, 1),
                          this.buildSliderFrame(),
                          t && t.call(this)
                      }
                  }, {
                      key: "insert",
                      value: function(e, t, o) {
                          if (t < 0 || t > this.innerElements.length + 1)
                              throw new Error("Unable to inset it at this index 😭");
                          if (-1 !== this.innerElements.indexOf(e))
                              throw new Error("The same item in a carousel? Really? Nope 😭");
                          var n = t <= this.currentSlide > 0 && this.innerElements.length;
                          this.currentSlide = n ? this.currentSlide + 1 : this.currentSlide,
                          this.innerElements.splice(t, 0, e),
                          this.buildSliderFrame(),
                          o && o.call(this)
                      }
                  }, {
                      key: "prepend",
                      value: function(e, t) {
                          this.insert(e, 0),
                          t && t.call(this)
                      }
                  }, {
                      key: "append",
                      value: function(e, t) {
                          this.insert(e, this.innerElements.length + 1),
                          t && t.call(this)
                      }
                  }, {
                      key: "destroy",
                      value: function() {
                          var e = arguments.length > 0 && void 0 !== arguments[0] && arguments[0]
                            , t = arguments[1];
                          if (this.detachEvents(),
                          this.selector.style.cursor = "auto",
                          e) {
                              for (var o = document.createDocumentFragment(), n = 0; n < this.innerElements.length; n++)
                                  o.appendChild(this.innerElements[n]);
                              this.selector.innerHTML = "",
                              this.selector.appendChild(o),
                              this.selector.removeAttribute("style")
                          }
                          t && t.call(this)
                      }
                  }], [{
                      key: "mergeSettings",
                      value: function(e) {
                          var t = {
                              selector: ".siema",
                              duration: 200,
                              easing: "ease-out",
                              perPage: 1,
                              startIndex: 0,
                              draggable: !0,
                              multipleDrag: !0,
                              threshold: 20,
                              loop: !1,
                              rtl: !1,
                              onInit: function() {},
                              onChange: function() {}
                          }
                            , o = e;
                          for (var n in o)
                              t[n] = o[n];
                          return t
                      }
                  }, {
                      key: "webkitOrNot",
                      value: function() {
                          return "string" == typeof document.documentElement.style.transform ? "transform" : "WebkitTransform"
                      }
                  }]),
                  e
              }();
              t.default = a,
              e.exports = t.default
          }
          ])
      }
  }
    , t = {};
  function o(n) {
      var r = t[n];
      if (void 0 !== r)
          return r.exports;
      var i = t[n] = {
          exports: {}
      };
      return e[n].call(i.exports, i, i.exports, o),
      i.exports
  }
  o.n = e=>{
      var t = e && e.__esModule ? ()=>e.default : ()=>e;
      return o.d(t, {
          a: t
      }),
      t
  }
  ,
  o.d = (e,t)=>{
      for (var n in t)
          o.o(t, n) && !o.o(e, n) && Object.defineProperty(e, n, {
              enumerable: !0,
              get: t[n]
          })
  }
  ,
  o.g = function() {
      if ("object" == typeof globalThis)
          return globalThis;
      try {
          return this || new Function("return this")()
      } catch (e) {
          if ("object" == typeof window)
              return window
      }
  }(),
  o.o = (e,t)=>Object.prototype.hasOwnProperty.call(e, t),
  (()=>{
      "use strict";
      var e = o(865)
        , t = o.n(e);
      const n = JSON.parse('{"games":[{"_id":40,"title":"Planet Miner FRVR","subtitle":"Manage your own Alien Mine!","path":"https://planetminer.frvr.com/alc/?web","category_id":4},{"_id":33,"title":"Kitten Force FRVR","subtitle":"Shoot the Blocks with Cat Lasers!","path":"https://kittenforce.frvr.com/alc/?web","category_id":6},{"_id":1,"title":"Basketball FRVR","subtitle":"Basketball Hoop Shooter","path":"https://basketball.frvr.com/alc/?web","category_id":1},{"_id":2,"title":"Hex FRVR","subtitle":"Hexagon Puzzle Game","path":"https://hex.frvr.com/alc/?web","category_id":2},{"_id":7,"title":"Gold Digger FRVR","subtitle":"Time to explore the mine!","path":"https://golddigger.frvr.com/alc/?web","category_id":4},{"_id":3,"title":"Mahjong FRVR","subtitle":"Amazing Mahjong Solitaire","path":"https://mahjong.frvr.com/alc/?web","category_id":2},{"_id":4,"title":"Darts FRVR","subtitle":"Throw a bullseye and get the high score!","path":"https://darts.frvr.com/alc/?web","category_id":1},{"_id":6,"title":"Drag Race FRVR","subtitle":"Highway Racing Action","path":"https://dragrace.frvr.com/alc/?web","category_id":1},{"_id":5,"title":"Cricket FRVR","subtitle":"Win this World Championship!","path":"https://cricket.frvr.com/alc/?web","category_id":1},{"_id":8,"title":"Road Trip FRVR","subtitle":"Find a road to solve this relaxing puzzle","path":"https://roadtrip.frvr.com/alc/?web","category_id":4},{"_id":9,"title":"Gold Train FRVR","subtitle":"Connect Railroads, Save Trains","path":"https://goldtrain.frvr.com/alc/?web","category_id":5},{"_id":10,"title":"Balloon FRVR","subtitle":"Navigate the balloon circle","path":"https://balloon.frvr.com/alc/?web","category_id":4},{"_id":11,"title":"Harpoon FRVR","subtitle":"Aim, shoot and hunt fishes!","path":"https://harpoon.frvr.com/alc/?web","category_id":6},{"_id":12,"title":"Trigon FRVR","subtitle":"Tri Color Matching Puzzle Game","path":"https://trigon.frvr.com/alc/?web","category_id":6},{"_id":13,"title":"Kickup FRVR","subtitle":"Kick your way to soccer glory!","path":"https://kickup.frvr.com/alc/?web","category_id":1},{"_id":14,"title":"Klondike FRVR","subtitle":"Original Big Cards Solitaire","path":"https://klondike.frvr.com/alc/?web","category_id":3},{"_id":15,"title":"Football FRVR","subtitle":"Flick, Kick, Hit the Goal!","path":"https://football.frvr.com/alc/?web","category_id":1},{"_id":16,"title":"Jewels FRVR","subtitle":"Match and Swap Gem Puzzle","path":"https://jewels.frvr.com/alc/?web","category_id":5},{"_id":17,"title":"Spider FRVR","subtitle":"Classic 2-Deck Solitaire","path":"https://spider.frvr.com/alc/?web","category_id":2},{"_id":18,"title":"Nonogram FRVR","subtitle":"Relaxing puzzle cross game","path":"https://nonogram.frvr.com/alc/?web","category_id":7},{"_id":19,"title":"Bubble Shooter FRVR","subtitle":"Aim and Pop Blaster","path":"https://bubbleshooter.frvr.com/alc/?web","category_id":6},{"_id":20,"title":"Trim FRVR","subtitle":"The best block blasting game!","path":"https://trim.frvr.com/alc/?web","category_id":5},{"_id":21,"title":"Space Breaker FRVR","subtitle":"The best block blasting game!","path":"https://spacebreaker.frvr.com/alc/?web","category_id":6},{"_id":22,"title":"Remove FRVR","subtitle":"Click and pop the blocks!","path":"https://remove.frvr.com/alc/?web","category_id":5},{"_id":23,"title":"Cave FRVR","subtitle":"Pilot and land your spacecraft","path":"https://cave.frvr.com/alc/?web","category_id":4},{"_id":24,"title":"Lines FRVR","subtitle":"Dots and Lines Puzzle Game","path":"https://lines.frvr.com/alc/?web","category_id":3},{"_id":25,"title":"Gold Mahjong FRVR","subtitle":"Solitaire Mahjong with a golden twist","path":"https://goldmahjong.frvr.com/alc/?web","category_id":2},{"_id":26,"title":"Stack Three FRVR","subtitle":"Match Three Puzzle Fun","path":"https://stackthree.frvr.com/alc/?web","category_id":5},{"_id":27,"title":"Connect FRVR","subtitle":"Fun and Challenging Puzzle Game","path":"https://connect.frvr.com/alc/?web","category_id":3},{"_id":28,"title":"Curling FRVR","subtitle":"Slide stones and rule the ice!","path":"https://curling.frvr.com/alc/?web","category_id":1},{"_id":29,"title":"Streak FRVR","subtitle":"Connect The Colored Dots","path":"https://streak.frvr.com/alc/?web","category_id":7},{"_id":30,"title":"Slash FRVR","subtitle":"Slash everything except for the bombs!","path":"https://slash.frvr.com/alc/?web","category_id":6},{"_id":32,"title":"Bowmania FRVR","subtitle":"Hit the bullseye like a real archer!","path":"https://bowmania.frvr.com/alc/?web","category_id":1},{"_id":34,"title":"Field Goal FRVR","subtitle":"Aim, Kick and Score in this exciting Field Goal game.","path":"https://fieldgoal.frvr.com/alc/?web","category_id":1},{"_id":35,"title":"Pinball FRVR","subtitle":"Classic flipper game with a modern twist","path":"https://pinball.frvr.com/alc/?web","category_id":6},{"_id":36,"title":"Golf Gardens FRVR","subtitle":"Hit the ball and hole-in-one!","path":"https://golfgardens.frvr.com/alc/?web","category_id":4}],"featured":{"_id":31,"title":"Unblock FRVR","subtitle":"Slide and free the color brick","path":"https://unblock.frvr.com/alc/?web","category_id":7},"categories":[{"id":0,"name":"Sandbox"},{"id":1,"name":"Sports"},{"id":2,"name":"Board"},{"id":3,"name":"Puzzle"},{"id":4,"name":"Adventure"},{"id":5,"name":"Match 3"},{"id":6,"name":"Arcade"},{"id":7,"name":"Brain"}]}');
      function r(e) {
          return e && e.games && e.games.length && e.categories && e.categories.length
      }
      var i = {
          get: function() {
              try {
                  var e = JSON.parse(localStorage.getItem("last-API-result") || "{}");
                  if (r(e))
                      return e
              } catch (e) {}
              return n
          },
          load: function() {
              t().request({
                  method: "GET",
                  url: "https://web.api.frvr.com/v4/web/games?rdid=test&idtype=123&is_lat=true"
              }).then((function(e) {
                  if (r(e))
                      try {
                          localStorage.setItem("last-API-result", JSON.stringify(e))
                      } catch (e) {}
              }
              )).catch((function(e) {}
              ))
          }
      };
      setTimeout(i.load, 5e3);
      const a = i;
      const s = {
          get: function() {
              return {
                  games: [{
                      _id: 10027,
                      title: "Ball Crash FRVR",
                      subtitle: "Classic block breaker",
                      path: "https://ballcrash.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10023,
                      title: "Bowlin'go FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://bowlingo.frvr.com/alc/?web",
                      category_id: 1
                  }, {
                      _id: 10025,
                      title: "Bumper Car FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://bumpercar.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10001,
                      title: "Combine FRVR",
                      subtitle: "Connect and Merge Cute Creatures!",
                      path: "https://combine.frvr.com/alc/?web",
                      category_id: 2
                  }, {
                      _id: 10003,
                      title: "Donut FRVR",
                      subtitle: "Become the best chef in the world!",
                      path: "https://donut.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10022,
                      title: "Pool Rush FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://endlesspool.frvr.com/alc/?web",
                      category_id: 1
                  }, {
                      _id: 10004,
                      title: "Fish Merge FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://fishmerge.frvr.com/alc/?web",
                      category_id: 2
                  }, {
                      _id: 10006,
                      title: "Food Tycoon FRVR",
                      subtitle: "Become the best chef in the world!",
                      path: "https://foodtycoon.frvr.com/alc/?web",
                      category_id: 4
                  }, {
                      _id: 10005,
                      title: "Fruit Masher FRVR",
                      subtitle: "Smash the fruit and make delicious juices!",
                      path: "https://fruitmasher.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10012,
                      title: "Greed FRVR",
                      subtitle: "Addictive money grabbing arcade style fun",
                      path: "https://greed.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10007,
                      title: "Driver FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://guberdriver.frvr.com/alc/?web",
                      category_id: 1
                  }, {
                      _id: 10026,
                      title: "Disk² Merge FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://mergeballs.frvr.com/alc/?web",
                      category_id: 7
                  }, {
                      _id: 10009,
                      title: "Monster Bash FRVR",
                      subtitle: "Bat that baseball as far as you can!",
                      path: "https://monster.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10010,
                      title: "Octa FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://octa.frvr.com/alc/?web",
                      category_id: 7
                  }, {
                      _id: 10002,
                      title: "Putt Rush FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://puttrush.frvr.com/alc/?web",
                      category_id: 1
                  }, {
                      _id: 10016,
                      title: "Animal Hop FRVR",
                      subtitle: "Help this little puppy in its way home!",
                      path: "https://rockhop.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10018,
                      title: "Ski FRVR",
                      subtitle: "Dodge the obstacles and don't stop skiing!",
                      path: "https://ski.frvr.com/alc/?web",
                      category_id: 1
                  }, {
                      _id: 10028,
                      title: "Soccer FRVR",
                      subtitle: "Kick the Ball and Score Goals!",
                      path: "https://soccer.frvr.com/alc/?web",
                      category_id: 1
                  }, {
                      _id: 10020,
                      title: "Solitaire FRVR",
                      subtitle: "Classic Solitaire Card Game",
                      path: "https://solitaire.frvr.com/alc/?web",
                      category_id: 2
                  }, {
                      _id: 10011,
                      title: "Splat FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://splat.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10013,
                      title: "Sort 64 FRVR",
                      subtitle: "Match the numbers in the drop",
                      path: "https://stack.frvr.com/alc/?web",
                      category_id: 7
                  }, , {
                      _id: 10029,
                      title: "Wally Jump FRVR",
                      subtitle: "Enjoy a true classic platformer!",
                      path: "https://wallyjump.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10008,
                      title: "Word Tower FRVR",
                      subtitle: "Connect letters to get a word!",
                      path: "https://wordtower.frvr.com/alc/?web",
                      category_id: 7
                  }, {
                      _id: 10015,
                      title: "Frosty FRVR",
                      subtitle: "Add new snow balls and try to reach the end of the race!",
                      path: "https://frosty.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10014,
                      title: "Sea Trader FRVR",
                      subtitle: "Best marine trader simulator!",
                      path: "https://seatrader.frvr.com/alc/?web",
                      category_id: 4
                  }, {
                      _id: 10017,
                      title: "Number Guess FRVR",
                      subtitle: "Time to react and guess the correct number!",
                      path: "https://overunder.frvr.com/alc/?web",
                      category_id: 7
                  }, {
                      _id: 10021,
                      title: "Boing FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://boing.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10024,
                      title: "Diamond Run FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://diamondrush.frvr.com/alc/?web",
                      category_id: 6
                  }, {
                      _id: 10030,
                      title: "Worlds FRVR",
                      subtitle: "Become the best player in the world!",
                      path: "https://worlds.frvr.com/?web",
                      category_id: 0
                  }, {
                      _id: 10031,
                      title: "Pegball FRVR",
                      subtitle: "Become a sports super star!",
                      path: "https://pegball.frvr.com/?web",
                      category_id: 1
                  }, {
                      _id: 10032,
                      id: "krunker",
                      title: "Krunker FRVR",
                      subtitle: "Fast paced first-person shooter.",
                      path: "https://krunker.frvr.com/?utm_source=frvr.com",
                      category_id: 0
                  }, {
                      _id: 10033,
                      id: "herospacerun",
                      title: "Hero Space Run FRVR",
                      subtitle: "Explore this endless galaxy!.",
                      path: "https://herospacerun.frvr.com/?utm_source=frvr.com",
                      category_id: 6
                  }, {
                      _id: 10034,
                      id: "moomoo",
                      title: "MooMoo FRVR",
                      subtitle: "Build and Survive with your friends.",
                      path: "https://moomoo.io/?utm_source=frvr.com",
                      category_id: 0
                  }, {
                      _id: 10035,
                      id: "dominoes",
                      title: "Dominoes FRVR",
                      subtitle: "The classic tile-based game re-imagined by FRVR.",
                      path: "https://dominoes.frvr.com/alc/?web",
                      category_id: 3
                  }, {
                      _id: 10036,
                      id: "jigsawpuzzle",
                      title: "Jigsaw Puzzle FRVR",
                      subtitle: "A fun picture puzzle game.",
                      path: "https://jigsawpuzzle.frvr.com/alc/?web",
                      category_id: 3
                  }]
              }
          }
      };
      var l = {
          get: function() {
              try {
                  return (localStorage.getItem("recentlyPlayed") || "").split(",")
              } catch (e) {}
              return []
          },
          registerPlay: function(e) {
              var t = l.get()
                , o = t.indexOf(e);
              -1 != o && t.splice(o, 1),
              t.unshift(e);
              try {
                  localStorage.setItem("recentlyPlayed", t.join(","))
              } catch (e) {}
          }
      };
      const c = l;
      var d = !1;
      try {
          d = function(e) {
              if (-1 != (window.navigator.userAgent.indexOf("MSIE ") || window.navigator.userAgent.indexOf("Trident/")))
                  return !1;
              var t = "object" == typeof document ? document.createElement("canvas") : {};
              return t.width = t.height = 1,
              !!t.toDataURL && 5 === t.toDataURL("image/webp").indexOf("image/webp")
          }()
      } catch (e) {}
      const h = function(e, t) {
          return d ? e : t
      }
        , p = JSON.parse('{"slash":"https://apps.apple.com/app/apple-store/id1202853799","goldtrain":"https://apps.apple.com/app/apple-store/id1414843409","kickup":"https://apps.apple.com/app/apple-store/id1282939783","golddigger":"https://apps.apple.com/app/apple-store/id1537809296","basketball":"https://apps.apple.com/app/apple-store/id1185836177","solitaire":"https://apps.apple.com/app/apple-store/id911820971","goldmahjong":"https://apps.apple.com/app/apple-store/id1260479815","remove":"https://apps.apple.com/app/apple-store/id1220376539","bowmania":"https://apps.apple.com/app/apple-store/id1537809374","pinball":"https://apps.apple.com/app/apple-store/id1220369527","fieldgoal":"https://apps.apple.com/app/apple-store/id1537809341","cricket":"https://apps.apple.com/app/apple-store/id1537809480","monster":"https://apps.apple.com/app/apple-store/id1537809408","football":"https://apps.apple.com/app/apple-store/id1343917030","mahjong":"https://apps.apple.com/app/apple-store/id1100087485","hex":"https://apps.apple.com/app/apple-store/id1036010745","trigon":"https://apps.apple.com/app/apple-store/id1225933016","balloon":"https://apps.apple.com/app/apple-store/id1219045712","nonogram":"https://apps.apple.com/app/apple-store/id1227752922","stackthree":"https://apps.apple.com/app/apple-store/id1355649105","bubbleshooter":"https://apps.apple.com/app/apple-store/id1381328040","trim":"https://apps.apple.com/app/apple-store/id1343915488","unblock":"https://apps.apple.com/app/apple-store/id1220367287","connect":"https://apps.apple.com/app/apple-store/id1421799479","roadtrip":"https://apps.apple.com/app/apple-store/id1374834678","cave":"https://apps.apple.com/app/apple-store/id1220374883","ballcrash":"https://apps.apple.com/app/apple-store/id1537809529","darts":"https://apps.apple.com/app/apple-store/id1350676428","dragrace":"https://apps.apple.com/app/apple-store/id1403128823","harpoon":"https://apps.apple.com/app/apple-store/id1359699260"}')
        , u = JSON.parse('{"ballcrash":"https://play.google.com/store/apps/details?id=com.frvr.ballcrash","balloon":"https://play.google.com/store/apps/details?id=com.frvr.balloon","basketball":"https://play.google.com/store/apps/details?id=com.frvr.basketball","bowmania":"https://play.google.com/store/apps/details?id=com.frvr.bowmania","bubbleshooter":"https://play.google.com/store/apps/details?id=com.frvr.bubbleshooter","cave":"https://play.google.com/store/apps/details?id=com.frvr.cave","connect":"https://play.google.com/store/apps/details?id=com.frvr.connect","cricket":"https://play.google.com/store/apps/details?id=com.frvr.cricket2","darts":"https://play.google.com/store/apps/details?id=com.frvr.darts","dragrace":"https://play.google.com/store/apps/details?id=com.frvr.dragrace","fieldgoal":"https://play.google.com/store/apps/details?id=com.frvr.fieldgoal","foodtycoon":"https://play.google.com/store/apps/details?id=com.frvr.coffee","football":"https://play.google.com/store/apps/details?id=com.frvr.football2","goldmahjong":"https://play.google.com/store/apps/details?id=com.frvr.goldmahjong","goldtrain":"https://play.google.com/store/apps/details?id=com.frvr.goldtrain","harpoon":"https://play.google.com/store/apps/details?id=com.frvr.harpoon","hex":"https://play.google.com/store/apps/details?id=com.frvr.hex","jewels":"https://play.google.com/store/apps/details?id=com.frvr.jewels","kickup":"https://play.google.com/store/apps/details?id=com.frvr.kickup","lines":"https://play.google.com/store/apps/details?id=com.frvr.lines","mahjong":"https://play.google.com/store/apps/details?id=com.frvr.mahjong","nonogram":"https://play.google.com/store/apps/details?id=com.frvr.nonogram","pinball":"https://play.google.com/store/apps/details?id=com.frvr.pinball","remove":"https://play.google.com/store/apps/details?id=com.frvr.remove2","roadtrip":"https://play.google.com/store/apps/details?id=com.frvr.roadtrip","slash":"https://play.google.com/store/apps/details?id=com.frvr.slash","solitaire":"https://play.google.com/store/apps/details?id=com.frvr.solitaire","stackthree":"https://play.google.com/store/apps/details?id=com.frvr.stackthree","trigon":"https://play.google.com/store/apps/details?id=com.frvr.trigon","trim":"https://play.google.com/store/apps/details?id=com.frvr.trim2","unblock":"https://play.google.com/store/apps/details?id=com.frvr.unblock","golddigger":"https://play.google.com/store/apps/details?id=com.frvr.golddigger"}');
      var m = {
          darkMode: !1,
          shrinkTitle: !1,
          browseFilterOpen: !1,
          selectedCategories: {},
          search: "",
          sortMode: "recent",
          games: [],
          categories: [],
          blacklistGames: [],
          hasRecentlyPlayed: !1,
          language: "ko" === navigator.language ? "ko" : "en"
      }
        , f = {
          basketball: 4.7,
          goldtrain: 4.1,
          hex: 4.7,
          cave: 4.5,
          dragrace: 4,
          solitaire: 4.6,
          darts: 4,
          mahjong: 4.5,
          harpoon: 3.9,
          lines: 4.4,
          football: 3.6,
          slash: 4.5,
          trigon: 4.5,
          goldmahjong: 4,
          roadtrip: 4,
          balloon: 4.6,
          remove: 4.5,
          nonogram: 4,
          bubbleshooter: 4,
          kickup: 4.5,
          cricket: 4,
          foodtycoon: 4,
          jewels: 4,
          unblock: 4.5,
          connect: 4,
          trim: 4.5,
          stackthree: 4,
          bowmania: 4,
          worlds: 5,
          krunker: 5,
          golddigger: 4.5,
          herospacerun: 4.4,
          jigsawpuzzle: 4
      }
        , g = a.get()
        , y = s.get()
        , v = c.get()
        , b = g.games.concat([g.featured]).concat(y.games);
      function w(e, t) {
          return e.map((e=>({
              item: e,
              sort: Math.random()
          }))).sort(((e,t)=>e.sort - t.sort)).map((e=>e.item)).slice(0, t)
      }
      m.games = b.map(((e,t)=>{
          var o, n = e.id || e.path.split(".frvr.com")[0].split("https://")[1], r = e._id, i = v.indexOf("" + e._id);
          return -1 !== i && (r = -v.length + i,
          m.hasRecentlyPlayed = !0),
          {
              _id: e._id,
              id: n,
              sort: r,
              name: e.title,
              description: e.subtitle,
              icon: function(e) {
                  return h("https://cdn.frvr.com/2021/icons/" + (e = e || 256) + "/" + n + ".webp?9", "https://cdn.frvr.com/2021/icons/" + e + "/" + n + ".png?9")
              },
              banner: function() {
                  return h("https://cdn.frvr.com/2021/banners/" + n + ".webp?9", "https://cdn.frvr.com/2021/banners/" + n + ".jpg?9")
              },
              path: e.path,
              ios_path: p[n],
              android_path: u[n],
              stars: f[n] || Math.floor(n.length % 4 + 6) / 2,
              category: (o = g.categories[e.category_id].name,
              "Other" === o ? "Sandbox" : o)
          }
      }
      )).filter((e=>-1 === m.blacklistGames.indexOf(e.id))),
      m.categories = g.categories,
      m.featuredGames = m.games.filter((e=>7 === e._id || 10032 === e._id)).sort((e=>10032 === e._id ? -1 : 1)),
      m.featuredGameCards = m.featuredGames,
      m.trendingGames = w(m.games, 8),
      m.mostPopularGames = w(m.games, 8);
      const R = m;
      function k() {
          document.body.classList.add("dark-mode"),
          localStorage.setItem("theme", "dark"),
          R.darkMode = !0
      }
      function F() {
          document.body.classList.remove("dark-mode"),
          localStorage.setItem("theme", "light"),
          R.darkMode = !1
      }
      if (window.toggleDarkMode = function() {
          switch (localStorage.getItem("theme")) {
          case "dark":
              F();
              break;
          case "light":
              k()
          }
      }
      ,
      null == localStorage.getItem("theme")) {
          window.matchMedia("(prefers-color-scheme: dark)").matches ? k() : F()
      } else
          "dark" == localStorage.getItem("theme") && k();
      function V(e) {
          let t = function(e) {
              return null != e
          }
            , o = t(e) ? document.querySelector("a[name=" + e + "]") : document.body
            , n = window.pageYOffset || document.documentElement.scrollTop
            , r = t(o) ? o.getBoundingClientRect().top : 0;
          window.scrollTo(0, r + n - 140)
      }
      window.addEventListener("scroll", (e=>{
          window.pageYOffset > window.innerHeight / 2 ? R.shrinkTitle || (R.shrinkTitle = !0,
          t().redraw()) : R.shrinkTitle && (R.shrinkTitle = !1,
          t().redraw())
      }
      ), !1);
      var C = t().route.set;
      t().route.set = function(e, t, o) {
          C(e, t, o);
          var n = window.location.hash.substr(1);
          n ? V(n) : window.scrollTo(0, 0)
      }
      ;
      var S = t().route.link;
      t().route.link = function(e) {
          S(e);
          var t = window.location.hash.substr(1);
          t ? V(t) : window.scrollTo(0, 0)
      }
      ;
      var P = t().route.set;
      t().route.set = function(e, t, o) {
          P(e, t, o),
          R.search = ""
      }
      ;
      var x = t().route.link;
      t().route.link = function(e) {
          x(e),
          R.search = ""
      }
      ;
      const T = function(e) {
          return {
              onmatch: function(t, o, n) {
                  return window.ga && window.ga("send", "pageview", o),
                  e
              }
          }
      };
      var A = o(946)
        , E = o.n(A);
      const D = function() {
          var e, o, n = 1;
          function r() {
              window.innerWidth < 768 && n > 1 ? o || (o = new (E())({
                  selector: e.dom,
                  duration: 5e3,
                  perPage: Math.min(n, e.attrs.slidesToShow || 1),
                  loop: !0
              })) : o && (o.destroy(!0),
              o = null)
          }
          return {
              oncreate: function(t) {
                  e = t,
                  r()
              },
              onupdate() {
                  r()
              },
              view: e=>(n = e.children.length,
              window.innerWidth < 768 ? t()(".siema", e.children) : (r(),
              t()("div", e.attrs, e.children)))
          }
      };
      var L = {
          view: function(e) {
              for (var o = parseFloat(e.attrs.stars), n = [t()("span.star-number", o)], r = 0; r < 5; r++) {
                  var i, a = o - r >= 1;
                  i = a ? "" : !a && o - r > 0 ? "half-full" : "empty",
                  n.push(t()(".star", {
                      class: i
                  }))
              }
              return t()(".d-flex.ml-5.ml-md-0.star-group", n)
          }
      };
      const I = L;
      var _;
      function Y(e) {
          return window.innerWidth >= 768 ? null : e
      }
      function U(e) {
          return window.innerWidth < 768 ? null : e
      }
      window.addEventListener("resize", (function() {
          var e = window.innerWidth < 768;
          e != _ && t().redraw(),
          _ = e
      }
      ));
      const G = function(e, t) {
          var o = R.darkMode ? "dark" : "light"
            , n = e.indexOf("?") >= 0;
          return e + (n ? "&" : "?") + "source=frvr.com&action=" + t + "&theme=" + o
      };
      const M = function(e, t, o) {
          R.nativeMobilePopupData = {
              game: e,
              webPath: t,
              nativePath: o
          }
      };
      const j = function(e, t) {
          return function(o) {
              var n, r, i, a;
              if (/(ipod|iphone|ipad)/i.test(navigator.userAgent) && e.ios_path && (n = e.ios_path,
              r = "ios"),
              i = /(android)/i.test(navigator.userAgent) && !/(Windows)/i.test(navigator.userAgent),
              a = /(silk)/i.test(navigator.userAgent),
              (i || a) && e.android_path && (n = e.android_path,
              r = "android"),
              window.ga && window.ga("send", {
                  hitType: "event",
                  eventCategory: "Game",
                  eventAction: "play",
                  eventLabel: e.name,
                  referrerArea: t
              }),
              n) {
                  var s = t + "&action_secondary=" + r + "_mobile_popup";
                  return M(e, G(e.path, s), G(n, s)),
                  o.preventDefault(),
                  !1
              }
              return c.registerPlay(e._id),
              !0
          }
      };
      var O = {
          view: function(e) {
              return t()("div.col.p-0", t()("a.text-decoration-none", {
                  href: G(e.attrs.path, "featured_games"),
                  onclick: j(e.attrs, "featured_games")
              }, [Y(t()("div.row.mx-0.align-items-center.pb-12.d-md-none", t()("div.col-12", t()("img.img-fluid.w-100.rounded-corners-6", {
                  width: 600,
                  height: 314,
                  src: e.attrs.banner()
              })))), t()("div.row.mx-0.align-items-center", [t()("div.col-2.col-md-4", t()("div.img-mb-xs.img-dt-md", t()("span", t()("img.img-fluid.game-icon", {
                  width: 192,
                  height: 192,
                  src: e.attrs.icon(192)
              })))), t()("div.col-10.col-md-8", [t()("h2.text-white", e.attrs.name), U(t()("span.text-white.d-none.d-md-block", e.attrs.description)), t()("div.d-flex.pt-md-8", [Y(t()("span.small.d-md-none.text-white", e.attrs.category)), t()(I, {
                  stars: e.attrs.stars
              })]), U(t()("button.d-none.d-md-block.btn.btn-sm.btn-primary.mt-16", "Play Now"))])])]))
          }
      };
      const z = O;
      const H = {
          view: function() {
              return t()("div", t()("div.input-group", [t()("span.input-group-prepend", t()("div.input-group-text.border-right-0", t()("img.img-fluid[src='/images/content/magnify-glass.svg']"))), t()("input.form-control", {
                  type: "text",
                  placeholder: "Search Games",
                  value: R.search,
                  oninput: e=>{
                      R.search = e.target.value
                  }
              })]))
          }
      };
      const q = {
          view: function() {
              var e = R.search;
              return t()("div.container-fluid.px-0.px-md-12.py-16.pt-md-32", {
                  class: e ? "bg-cyan py-md-32" : "bg-violet pb-md-56"
              }, [t()("div.container.d-none.d-md-block", {
                  class: e ? "" : "pb-32"
              }, t()("div.row.align-items-center", [t()("div.col-4", [t()(t().route.Link, {
                  class: "text-white font-secondary",
                  href: "/"
              }, "Discover"), t()(t().route.Link, {
                  class: "text-white font-secondary ml-24",
                  href: "/browse"
              }, "Browse")]), t()("div.offset-4.col-4", t()(H))])), e ? null : t()("div.container.px-0.mx-0.w-sm-100.mx-md-auto.px-md-12", [t()("div.row.mx-0.align-items-center.mx-md-n12", t()("div.col", [U(t()("h1.d-none.d-md-block.pb-32.text-white", "Featured Games")), Y(t()("h6.d-md-none.pb-10.text-white", "Featured Games"))])), t()(D, {
                  class: "row mx-0 align-items-center mx-md-n12 row-cols-1 row-cols-md-2"
              }, R.featuredGames.map((e=>t()(z, e))))])])
          }
      };
      var N = {
          view: function(e) {
              var o = e.attrs.game;
              return t()("div.col.p-0.my-16.s-g-icon", t()("a.text-decoration-none", {
                  href: e.attrs.path,
                  onclick: e.attrs.onclick
              }, t()("div.row.mx-0.align-items-center", [t()("div.col-12.col-md-2.pb-4.pb-md-0", t()("div.img-mb-md.img-dt-sm", t()("span", t()("img.img-fluid.game-icon", {
                  width: 192,
                  height: 192,
                  src: o.icon(192)
              })))), t()("div.col-12.col-md-6", [t()("h4.mb-4", o.name), U(t()("span.text-lighter-grey.exclude-theme.d-none.d-md-block", o.description)), t()("div.d-flex.pt-md-8", [Y(t()("span.small.text-lighter-grey.exclude-theme.d-md-none", o.category)), t()(I, {
                  stars: o.stars
              })])]), U(t()("div.col-4.text-md-left.text-lg-right.d-none.d-md-block", t()("button.btn.btn-sm.btn-secondary", "Play")))])))
          }
      };
      const W = N;
      const B = {
          view: function() {
              var e = t()(D, {
                  class: "row mx-0 align-items-center mx-md-n12 row-cols-1 row-cols-md-2 carousel-mobile-only",
                  slidesToShow: 3
              }, R.trendingGames.map((e=>t()(W, {
                  game: e,
                  path: G(e.path, "trending_games"),
                  onclick: j(e, "trending_games")
              }))));
              return t()("div", {
                  class: "container py-16 pt-md-56 pb-md-0 px-0 mx-0 w-sm-100 mx-md-auto px-md-12 order-2"
              }, [t()("div.row.border-bottom-light-grey-row.align-items-center.mx-0.mx-md-n12.mb-md-12.pb-8.pb-md-16", [t()("div.col-9", t()("h3.mb-0", "Trending Right now")), t()("div.col-3.text-right", t()(t().route.Link, {
                  class: "text-primary font-secondary text-decoration-none",
                  href: "/browse"
              }, "See All"))]), e])
          }
      };
      var K = {
          view: function(e) {
              return t()("div.col-6", t()("div.h-100", t()("a.text-decoration-none", {
                  href: G(e.attrs.path, "featured_game_cards"),
                  onclick: j(e.attrs, "featured_game_cards")
              }, t()("div.p-8.h-100.bg-light.rounded-corners-40.d-flex.align-items-center.flex-children-same-width", [t()("div.pl-24.py-24.pr-32", [t()("h6", "Featured Game"), t()("h2.mt-8", e.attrs.name), t()("p.d-none.d-xl-block.mt-8", e.attrs.description), t()(I, {
                  stars: e.attrs.stars
              })]), t()("div.w-100", t()("div.img-mb-xs.img-dt-lg", t()("span", t()("img.img-fluid.game-icon", {
                  width: 256,
                  height: 256,
                  src: e.attrs.icon(256)
              }))))]))))
          }
      };
      const X = K;
      const $ = {
          view: function() {
              return U(t()("div", {
                  class: "container py-96 d-none d-md-block order-4"
              }, t()("div.row.align-items-stretch", R.featuredGameCards.map((e=>t()(X, e))))))
          }
      };
      var Z = {
          view: function(e) {
              return t()("div.col-12.col-md-4.col-lg-3.col-xl-2.my-8.my-md-24", t()("a.text-decoration-none", {
                  href: G(e.attrs.path, "popular_games"),
                  onclick: j(e.attrs, "popular_games")
              }, t()("div.row.align-items-center", [t()("div.col-3.col-md-12", t()("div.img-mb-sm.img-dt-md", t()("span", t()("img.img-fluid.game-icon", {
                  width: 192,
                  height: 192,
                  src: e.attrs.icon(192)
              })))), t()("div.col-6.col-md-12", [t()("h4.mt-md-16.mb-4.single-line", e.attrs.name), U(t()("p.small.text-lighter-grey.mb-0.d-none.d-md-block.double-line-height", e.attrs.description)), t()("div.d-flex.pt-md-8", [Y(t()("span.small.text-lighter-grey.exclude-theme.d-md-none", e.attrs.category)), t()(I, {
                  stars: e.attrs.stars
              })])]), t()("div.col-3.col-md-12.text-right.text-md-left", t()("button.btn.btn-sm.btn-secondary.mt-md-16", "Play"))])))
          }
      };
      const J = Z;
      const Q = {
          view: function() {
              return t()("div", {
                  class: "container pt-16 pb-32 pt-md-96 pb-md-48 order-5 order-md-6"
              }, [t()("div.row.border-bottom-light-grey-row.align-items-center.pb-8.pb-md-16", [t()("div.col-9", t()("h3.mb-0", "Most Popular")), t()("div.col-3.text-right", t()(t().route.Link, {
                  class: "text-primary font-secondary text-decoration-none",
                  href: "/browse"
              }, "See All"))]), t()("div.row", R.mostPopularGames.map((e=>t()(J, e))))])
          }
      };
      var ee, te = "";
      const oe = {
          view: function() {
              return t()("div.container-fluid.bg-cyan.px-0.py-32.py-md-106.bg-8-right-desktop.order-6.order-md-5", t()("div.container", [t()("div.row", t()("div.col-12.col-md-6.col-lg-4", t()("div", [t()("h6.text-white.d-none.d-md-block.mb-md-16", "Featured Game"), t()("h1.text-white.mb-md-16", "New Game Alerts"), t()("p.text-white.lead.m-md-0", "Get notified when we release a new game or a major update.")]))), t()("div.row.mt-24.mt-md-32", t()("div.col-12.col-md-6.exclude-theme", t()("div.input-group", t()("form.button-step-click.w-100", {
                  action: "//frvr.us14.list-manage.com/subscribe/post?u=c6a2a10d2a02fe43532581d47&amp;id=8459ea61f3",
                  method: "post"
              }, [t()("input.exclude-theme.form-control[type='text'][placeholder='Email address'][aria-label='Email address'][aria-describedby='basic-addon2'][name='EMAIL']", {
                  value: te,
                  oninput: e=>{
                      te = e.target.value
                  }
              }), t()("div.input-group-append", t()("button.position-absolute-right-full.animate-on-click.btn.btn-yellow.exclude-theme.no-animation", {
                  type: te ? "submit" : "button",
                  class: ee ? "reduce on-click-submit" : "",
                  onclick: function() {
                      ee = !ee
                  }
              }, "Subscribe")), t().trust('<div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_c6a2a10d2a02fe43532581d47_8459ea61f3" tabindex="-1" value=""></div>')]))))]))
          }
      };
      const ne = {
          view: function() {
              return t()("div.container-fluid.bg-red.pt-30.py-md-112.order-8", t()("div.container", t()("div.row.align-items-center.overflow-hidden", [t()("div.col-11.col-md-4", [t()("h6.text-white.d-none.d-md-block", "All Games"), t()("h1.text-white", "Browse Games"), t()("p.lead.text-white.mb-20.mb-md-16", "Find you next favorite game from our variety catalog"), t()(t().route.Link, {
                  href: "/browse"
              }, t()("button.btn.btn-lg.btn-primary", "Browse"))]), t()("div.col-12.offset-md-2.col-md-6.mt-30.mt-md-0.mb-n56.mb-md-0", t()("img.img-fluid", {
                  width: 564,
                  height: 312,
                  src: h("images/content/browse-games-image.webp", "images/content/browse-games-image.png")
              }))])))
          }
      };
      var re = {
          view: function(e) {
              return t()("div.col-12.col-md-4.col-xl-3.my-8.mt-md-0.mb-md-40", t()("a.text-decoration-none", {
                  href: G(e.attrs.path, "browse_filtered"),
                  onclick: j(e.attrs, "browse_filtered")
              }, t()("div.row.align-items-center", [t()("div.col-3.col-md-12", t()("div.img-mb-sm.img-dt-md", t()("span", t()("img.img-fluid.game-icon", {
                  width: 192,
                  height: 192,
                  src: e.attrs.icon(192)
              })))), t()("div.col-6.col-md-12", [t()("h4.my-4.mt-md-16.single-line", e.attrs.name), U(t()("p.small.text-lighter-grey.mb-0.d-none.d-md-block.double-line-height", e.attrs.description)), t()("div.d-flex.pt-md-8", [Y(t()("span.small.text-lighter-grey.exclude-theme.d-md-none", e.attrs.category)), t()(I, {
                  stars: e.attrs.stars
              })])]), t()("div.col-3.col-md-12.text-right.text-md-left", t()("button.btn.btn-sm.btn-secondary.mt-md-16", "Play"))])))
          }
      };
      const ie = re;
      const ae = {
          view: function(e) {
              var o = !1;
              for (var n in R.selectedCategories)
                  if (R.selectedCategories[n]) {
                      o = !0;
                      break
                  }
              var r = R.games;
              if (o && (r = r.filter((e=>R.selectedCategories[e.category]))),
              R.search) {
                  var i = R.search.toLowerCase().trim();
                  r = r.filter((e=>e.name.toLowerCase().indexOf(i) >= 0))
              }
              return "recent" == R.sortMode ? r = r.sort(((e,t)=>e.sort > t.sort ? 1 : e.sort < t.sort ? -1 : e._id > t._id ? 1 : -1)) : "rating" == R.sortMode ? r = r.sort(((e,t)=>e.stars < t.stars ? 1 : e.stars > t.stars ? -1 : e._id < t._id ? 1 : -1)) : "a-z" == R.sortMode && (r = r.sort(((e,t)=>e.name > t.name ? 1 : e.name < t.name ? -1 : e._id > t._id ? 1 : -1))),
              t()("div.row", r.map((e=>t()(ie, e))))
          }
      };
      const se = {
          view: function() {
              return t()("div", R.categories.filter((e=>{
                  for (var t = 0; t < R.games.length; t++) {
                      if (R.games[t].category === e.name)
                          return !0
                  }
                  return !1
              }
              )).map((e=>{
                  var o = e.name.toLowerCase().split(" ").join("_").trim();
                  return t()("span.grey-checkbox-toggle", {
                      onclick: ()=>{
                          R.selectedCategories[e.name] = !R.selectedCategories[e.name],
                          R.selectedCategories[e.name] && ga("send", "event", "filter-category", e.name)
                      }
                  }, [t()("input[type='checkbox'][name='filter[]'][value='adventure']", {
                      checked: R.selectedCategories[e.name]
                  }), t()("label", {
                      class: "text-" + o + " border-" + o + " "
                  }, " " + e.name + " ")])
              }
              )))
          }
      };
      const le = {
          view: function() {
              return t()("div.container.pb-md-56", [Y(t()("div.row.pt-16.pb-8.bg-body.d-md-none.sticky-top.mobile-filter-top.filter-container", [t()("div.col-12", t()("div.d-flex.align-items-center.justify-content-between", [t()("div.d-flex.align-items-center", [t()("h6.m-0.pr-16", "SORT BY:"), t()("select.text-primary.select-no-style.h6.mb-0", {
                  value: R.sortMode,
                  onchange: e=>{
                      R.sortMode = e.target.value,
                      ga("send", "event", "filter-sort", R.sortMode)
                  }
              }, [t()("option[value='recent']", "Most Recent"), t()("option[value='a-z']", "Alphabetically"), t()("option[value='rating']", "Rating")])]), t()("div", t()("a.h6.toggle-filter-slide.text-decoration-none.cursor-pointer", {
                  onclick: ()=>R.browseFilterOpen = !R.browseFilterOpen
              }, [t()("span", ["FILTER ", t()("span.toggle-count")]), t()("svg[xmlns='http://www.w3.org/2000/svg'][width='16'][height='9'][viewBox='0 0 16 9'][fill='none']", t()("path[fill-rule='evenodd'][clip-rule='evenodd'][d='M5.5 8.125C5.5 7.95924 5.56585 7.80027 5.68306 7.68306C5.80027 7.56585 5.95924 7.5 6.125 7.5H9.875C10.0408 7.5 10.1997 7.56585 10.3169 7.68306C10.4342 7.80027 10.5 7.95924 10.5 8.125C10.5 8.29076 10.4342 8.44973 10.3169 8.56694C10.1997 8.68415 10.0408 8.75 9.875 8.75H6.125C5.95924 8.75 5.80027 8.68415 5.68306 8.56694C5.56585 8.44973 5.5 8.29076 5.5 8.125ZM3 4.375C3 4.20924 3.06585 4.05027 3.18306 3.93306C3.30027 3.81585 3.45924 3.75 3.625 3.75H12.375C12.5408 3.75 12.6997 3.81585 12.8169 3.93306C12.9342 4.05027 13 4.20924 13 4.375C13 4.54076 12.9342 4.69973 12.8169 4.81694C12.6997 4.93415 12.5408 5 12.375 5H3.625C3.45924 5 3.30027 4.93415 3.18306 4.81694C3.06585 4.69973 3 4.54076 3 4.375ZM0.5 0.625C0.5 0.45924 0.565848 0.300269 0.683058 0.183058C0.800269 0.0658481 0.95924 0 1.125 0H14.875C15.0408 0 15.1997 0.0658481 15.3169 0.183058C15.4342 0.300269 15.5 0.45924 15.5 0.625C15.5 0.79076 15.4342 0.949731 15.3169 1.06694C15.1997 1.18415 15.0408 1.25 14.875 1.25H1.125C0.95924 1.25 0.800269 1.18415 0.683058 1.06694C0.565848 0.949731 0.5 0.79076 0.5 0.625Z'][fill='#000000']"))]))])), t()("div.row.mx-0.filter-slide", {
                  class: R.browseFilterOpen ? "" : "d-none "
              }, [t()("div.col-12.py-20", [t()("div.mb-8", t()("h6", "Categories")), t()(se)]), t()("div.col-12.d-flex.align-items-center.justify-content-between.mt-40", [t()("div", t()("span.h6.text-secondary.mb-0.clear-filter.d-none.cursor-pointer", "CLEAR FILTERS")), t()("div", t()("button.btn.btn-lg.btn-primary", {
                  onclick: ()=>R.browseFilterOpen = !1
              }, "Apply"))])])])), t()("div.game-container.row.pb-24.pt-md-56", {
                  class: R.browseFilterOpen ? "overlay-grey-dark-mobile-only " : ""
              }, [t()("div.col-12.col-md-8", t()(ae)), U(t()("div.d-none.d-md-block.col-md-4.align-self-start.sticky-top.desktop-filter-top.filter-container", [t()("div.d-flex.align-items-center.justify-content-between.border-bottom-light-grey.pb-4", [t()("h3.mb-0", "Filters"), t()("span.h6.text-lighter-grey.mb-0.clear-filter.d-none.cursor-pointer", "CLEAR FILTERS")]), t()("div.d-flex.align-items-center.my-32", [t()("h6.m-0.pr-16", "SORT BY:"), t()("select.text-primary.select-no-style.h6.mb-0", {
                  value: R.sortMode,
                  onchange: e=>{
                      R.sortMode = e.target.value,
                      ga("send", "event", "filter-sort", R.sortMode)
                  }
              }, [t()("option[value='recent']", "Most Recent"), t()("option[value='a-z']", "Alphabetically"), t()("option[value='rating']", "Rating")])]), t()("div.mb-8", t()("h6", "Categories")), t()(se)]))])])
          }
      };
      var ce = {
          view: function() {
              var e = R.games.filter((e=>e.sort < 0));
              if (!e.length)
                  return t()("div");
              e = e.sort(((e,t)=>e.sort > t.sort ? 1 : -1));
              var o = t()(D, {
                  class: "row mx-0 align-items-center mx-md-n12 row-cols-1 row-cols-md-2 carousel-mobile-only",
                  slidesToShow: 3
              }, e.map((e=>t()(W, {
                  game: e,
                  path: G(e.path, "recently_played"),
                  onclick: j(e, "recently_played")
              }))));
              return t()("div", {
                  class: "container py-16 pt-md-56 pb-md-0 px-0 mx-0 w-sm-100 mx-md-auto px-md-12 order-2"
              }, [t()("div.row.border-bottom-light-grey-row.align-items-center.mx-0.mx-md-n12.mb-md-12.pb-8.pb-md-16", [t()("div.col-9", t()("h3.mb-0", "Recently Played")), t()("div.col-3.text-right", t()(t().route.Link, {
                  class: "text-primary font-secondary text-decoration-none",
                  href: "/browse"
              }, "See All"))]), o])
          }
      };
      const de = ce;
      const he = {
          view: function() {
              return document.title = "FRVR - Free online games",
              R.search ? [t()(q), t()(le), t()(oe)] : [t()(q), t()(de), t()(B), t()($), t()(oe), t()(Q), t()(ne)]
          }
      };
      const pe = {
          view: function() {
              return t()("div.container-fluid.d-none.d-md-block.px-0.px-md-12.bg-cyan.py-16.py-md-32", t()("div.container", t()("div.row.align-items-center", [t()("div.col-4", [t()(t().route.Link, {
                  class: "text-white font-secondary",
                  href: "/"
              }, "Discover"), t()(t().route.Link, {
                  class: "text-white ml-24",
                  href: "/browse"
              }, "Browse")]), t()("div.offset-4.col-4", t()(H))])))
          }
      };
      const ue = {
          view: function() {
              return document.title = "Browse FRVR casual games",
              [t()(pe), t()(le), t()(oe)]
          }
      };
      const me = {
          view: function() {
              return document.title = "FRVR in the press",
              t()("div.container.pt-16.pb-32", t()("div.row", t()("div.col-12", [t()("br"), t()("h1", "Press"), t()("p", ["For press enquiries please contact ", t()("a.text-primary[href='mailto:press@frvr.com?subject=press%20enquiry%20on%20FRVR']", "press@frvr.com"), " directly.", t()("br"), " A minimal press kit containing logos can be found ", t()("a.text-primary[href='assets/press.zip']", "here"), "."])])))
          }
      };
      const fe = {
          view: function() {
              return document.title = "FRVR contacts and feedback",
              t()("div.container.pt-16.pb-32", t()("div.row", t()("div.col-12", [t()("br"), t()("h1", "Contact"), t()("p", [" Your feedback is important to us! You can ", t()("a.text-primary[href='mailto:support@frvr.com']", "contact us"), " to submit user feedback! "])])))
          }
      };
      const ge = {
          view: function() {
              return t()("div.container-fluid.pt-16.pb-32", [t()("div.row", t()("div.col-12", t()("h6", "Select a Category of Games"))), t()("div.row", [t()("div.col-12.border-bottom-light-grey-row", t()("a.text-decoration-none[href='#']", t()("h1.text-adventure.py-20", "Adventure"))), t()("div.col-12.border-bottom-light-grey-row", t()("a.text-decoration-none[href='#']", t()("h1.text-arcade.py-20", "Arcade"))), t()("div.col-12.border-bottom-light-grey-row", t()("a.text-decoration-none[href='#']", t()("h1.text-cards.py-20", "Cards"))), t()("div.col-12.border-bottom-light-grey-row", t()("a.text-decoration-none[href='#']", t()("h1.text-puzzle.py-20", "Puzzle"))), t()("div.col-12", t()("a.text-decoration-none[href='#']", t()("h1.text-sports.pt-20", "Sports")))])])
          }
      };
      const ye = {
          view: function() {
              return document.title = "FRVR legal",
              t()("div.container.pt-16.pb-32", t()("div.row", t()("div.col-12", [t().trust('\n                      <a name="top"><h1>Legal</h1></a>\n<p>FRVR Limited (VAT MT24548624) is a maltese limited liability company located in valletta, malta.</p>\n<p>FRVR® is a registered trademark of FRVR Limited.</p>\n<p>\nFRVR Limited <br />\n61 Saint Paul Street,<br />\nValletta VLT 1212<br />\nMalta <br />\nBusiness ID : C82019<br />\nVAT ID MT24548624\n</p>\n<p>for questions, support and legal enquiries please contact legal@frvr.com</p>\n\n<h2>Table of contents</h2>\n<p>\n  <ul>\n      <li><a href="#privacypolicy">FRVR: Privacy Policy</a></li>\n      <li><a href="#cookies">FRVR: Cookie Policy</a></li>\n      <li><a href="#termsofservice">FRVR: Terms of Service</a></li>\n  </ul>\n</p>\n\n<hr />\n\n<a name="privacypolicy"><h2>FRVR: privacy policy</h2></a>\n\n<h3>Introduction</h3>\n<p>FRVR ltd (“FRVR”, “we” or “us”) is dedicated to protecting the privacy rights of our online users (“users” or “you”). this privacy policy (“privacy policy”) serves to inform our users on how we collect, store, process, use and manage the information you provide us when using our games or applications (“services” or “service”), whether you use them through our direct channels (such as our website) or through third-party platforms where these are embedded.</p>\n<p>the scope of this privacy policy is limited to the information collected by FRVR and is not applicable to information other third parties collect in websites or mobile applications where FRVR is the owner of those applications or websites nor is responsible.</p>\n<p>by using the service, you are agreeing to the collection and use of your personal information as outlined in this privacy policy. we may amend the privacy policy from time to time, and we encourage you to consult the privacy policy regularly for changes.</p>\n<p>your data will be processed according to the standard of the general data protection regulation (eu) 2016/679 of 27 april 2016 on the protection of natural persons with regard to the processing of personal data (“gdpr”).</p>\n<p>as per our advertisement practices, we also inform you that FRVR limited participates in the iab europe transparency & consent framework and complies with its specifications and policies. FRVR limited\'s identification number within the framework is 1107. iab europe is the european-levell association for the digital marketing and advertising ecosystem.</p>\n\n<h3>Controller and contact details</h3>\n<p>FRVR Limited, a Maltese limited liability company with VAT no. MT24548624, with headquarters in 61 Saint Paul Street, Valletta VLT 1212, Malta, acts as the data controller in the terms set out in this Privacy Policy.</p>\n<p>If you have any questions about this Privacy Policy or any other matter regarding personal data, FRVR has appointed a Data Protection Officer for these and other matters so please contact us through our dedicated contact form in our website here or by sending us a letter to the address included in the previous paragraph.</p>\n\n<h3>Definitions</h3>\n<p>For a better understanding of this Privacy Policy, we provide you with a list of definitions:</p>\n<p>“Personal data”: any information relating to an identified or identifiable natural person, directly or indirectly, in particular by reference to an identifier, such as a name, electronic identifiers or email of that natural person;</p>\n<p>“Processing”: the operation or set of operations carried out on personal data, whether by automated or non-automated procedures, such as the collection, registration, organization, structuring, conservation, adaptation or modification, recovery, consultation, use, dissemination by transmission, diffusion or any other form of availability, comparison or interconnection, limitation, erasure or destruction;</p>\n<p>“User” or “Data subject”: the natural person who uses our Services and who, for some reason, personal data is processed;</p>\n<p>“Data controller”: the natural or legal person, the public authority, the agency or other body that, individually or in conjunction with others, determines the purposes and means of processing personal data. For the purposes of this Policy, FRVR is the personal data controller;</p>\n<p>“Data processor”: natural or legal person, the public authority, agency or other body that processes personal data on behalf and in accordance with the instructions of FRVR;</p>\n<p>“Personal data recipient”: natural or legal person, public authority, agency or other body that receives personal data provided by FRVR; and</p>\n<p>“Supervisory Authority”: means an independent public authority that is established by an EU Member State. </p>\n\n<h3>General Principles applicable</h3>\n<p>Regarding general principles applicable to the processing of personal data, FRVR ensures that this data is: </p>\n<p>\t•\tSubject to lawful, fair and transparent processing;</p>\n<p>\t•\tCollected for specific, explicit and legitimate purposes, not being later processed in an incompatible manner with those purposes;</p>\n<p>\t•\tAdequate, relevant and limited to what is necessary in relation to the purposes for which they are processed;</p>\n<p>\t•\tAccurate and updated whenever necessary, taking all appropriate measures so that the inaccurate data, taking into account the purposes for which it is processed, is erased or rectified;</p>\n<p>\t•\tKept in a way that allows the identification of the user only for the period necessary for the purposes for which the data is processed; and</p>\n<p>\t•\tProcessed in a way that guarantees data’s safety, including protection against its unauthorized or unlawful processing and against its accidental loss, destruction or damage, implementing appropriate technical and organizational measures.</p>\n\n<h3>Personal Data</h3>\n<p>FRVR’s primary objective in collecting user information is to provide and enhance the Service and to enable users to easily navigate and enjoy the Service. </p>\n<p>When you install any of the FRVR games or applications, we may collect and record the information you provide us voluntarily through third parties such as www.facebook.com (“Facebook”) in accordance with the policies and terms of such third parties.</p>\n<p>We may collect, process, store and transfer different types of data grouped by the following categories:</p>\n<p>\t•\tIdentification data such as first name, last name, gender, username, display name, city / region of the world (retrieved from IP address), unique ID (Facebook ID; Apple ID; FRVR ID) and global user ID (when it is possible to associate different types of IDs from different games and platforms), other advertisement IDs (IDFA; GAID);</p>\n<p>\t•\tContact data such as email address; </p>\n<p>\t•\tGame data such as events, play session ID, play session time, days elapsed, games, among other;</p>\n\n<p>We note that most of this information is treated without us knowing who the user is. This means that we cannot associate directly who is playing our games to a single person even though we receive information from third parties, we do not actively process identifiable data. We do however process personal data in games such as Worlds.</p>\n<p>In the case of Facebook we might have access to your first name and Facebook profile photo URL but note that this information is not processed actively by us and we do not use it for other purposes than to send push messages through Facebook. Other information collected is last name, gender and names of Facebook, friends and Messenger connections that you provide us.</p>\n\n<h3>Sources of data</h3>\n<p>FRVR collects two types of data on our users: passive and active. </p>\n\n<p>Passive sources data</p>\n<p>Passive collection is data collected when users play games, whether on their mobile device or the web. This data contains the following information:</p>\n<p>\t•\tCity/region based on your IP address;</p>\n<p>\t•\tSession duration;</p>\n<p>\t•\tIn-game activity - we may collect aggregated information including but not limited to internet protocol addresses, browser type, browser language, referring / exit pages and URLs, platform type, number of clicks, domain names, landing pages, pages viewed and the order of those pages, the amount of time spent on particular pages, and the date and time of this activity. We use this information to better tailor the Service to your interests, to provide you more efficient customer support, and to overall enhance the Service.</p>\n<p>This data does not contain any personally identifying information. </p>\n\n<p>Active sources data</p>\n<p>Our active data collection is currently limited to gameplay information such as high scores or game session duration.</p>\n<p>In the cases where users can and choose to provide information when using their Facebook account to log in, we store:</p>\n<p>\t•\tUser Access Token: we simply use this token to identify a user from one play session to the next. We do not gain access to any details about the user;</p>\n<p>\t•\tIf you use Facebook Instant Games and provide consent for such actions, we process your first name and Facebook photo URL to send push messages for our games through bot messages. We do not process this information in the same way we process users’ game data and we do not track or identify our users through these data points. Users can turn off notifications as we explain in section XIV “User’s rights”.</p>\n\n<p>We may also collect data based on direct interactions you have with us such as:</p>\n<p>\t•\tContact enquiries: when you send us an email with an enquiry about a game or other type of questions we may process your contact details, such as your email. </p>\n<p>\t•\tNewsletter: you can subscribe to our newsletter through our website. When you do, you are providing us your consent to send you information regarding our Services. Your consent can be revoked at any time.</p>\n\n<p>FRVR may also invite you to share other information about yourself that may include but is not limited to your: </p>\n<p>\t•\tName and surname;</p>\n<p>\t•\tEmail;</p>\n<p>\t•\tAge or date of birth; </p>\n<p>\t•\tGender;</p>\n<p>\t•\tInformation about the hardware you may own;</p>\n<p>\t•\tFavorite websites, friend information and fan pages. </p>\n\n<p>Finally, any time you access the Service, we may collect aggregate information including but not limited to internet protocol addresses, browser type, browser language, referring / exit pages and URLs, platform type, number of clicks, domain names, landing pages, pages viewed and the order of those pages, the amount of time spent on particular pages, and the date and time of this activity. We use this information to better tailor the Service to your interests, to provide you more efficient customer support, and to overall enhance the Service.</p>\n\n<p>Once again, we do not store any data that can be used to identify and track an individual. However, if non-personal information is collected, for an activity that also requires personal information, FRVR may combine your non-personal information with your personal information to provide you with a better user experience, to improve the quality and value of the Services and to analyse how our Services are used.</p>\n\n\n<h3>Other Disclosure of Your Personal Information</h3>\n<p>You understand and agree that we may be required to disclose any personal information if required to do so by law or in the good faith belief that such disclosure is reasonably necessary to avoid liability, to comply with legal process, including but not limited to a search warrant, subpoena, statute, or court order, or to protect our rights and property, or that of the public. Note that FRVR is not required to question or contest the validity of any search warrant, subpoena or other similar governmental request that FRVR may receive.</p>\n<p>Additionally, in the event of a merger, acquisition, reorganization, bankruptcy, or other similar event, customer information may be transferred to FRVR’s successor or assignee, if permitted by and done in accordance with applicable law.</p>\n\n<h3>Cookies</h3>\n<p>FRVR uses cookies or similar technologies on its websites and games. For more information, please read our Cookie Policy.</p>\n\n<h3>External Links</h3>\n<p>The Service may contain links to other websites. The fact that the Service links to a website or presents a banner ad or other type of advertisement does not mean that FRVR has responsibility on what is shown to the users, nor it is a representation of our affiliation with that third party. FRVR is in no way responsible for the privacy policies of these other websites to which you choose to access from our Services. Please be sure to read the privacy policies of those websites when exiting our Services.</p>\n<p>In addition to information collected as described above, you may choose to share additional information (e.g. through in-game chats) about yourself throughout our Services, such as in games or through other contacts. We remind you that any action you perform with other players is considered public and is of your sole discretion.</p>\n\n<h3>Third Party Platform</h3>\n<p>When you use or connect to a FRVR website or download a FRVR mobile app by or through a Third Party Platform, such as Facebook or other social networking site, you may consent  that FRVR accesses and/or collects information from that platform, if applicable, as informed by such services.  Those third parties may also collect information from your interactions with our services, that collection is managed by that third party, according to the terms of the agreement and your privacy settings with the third party Platform.  </p>\n\n<h3>Data communication with third parties</h3>\n<p>In all cases of data access and collection, the information you provide will not be disclosed, rented, leased, loaned, sold, or otherwise voluntarily distributed to unaffiliated third parties and will be used solely for the purpose of providing you with and improving the Service.</p>\n<p>We do communicate your data to third parties but in an aggregated and anonymised form, which is not possible for these third parties to identify you as a person.</p>\n<p>Thus we share your anonymised or aggregated information with the following third parties:</p>\n<p>Analytics Partners – they allow us to better understand how users interact with our Services and help us improve them. These partners may also collect data via their own technologies although FRVR has no responsibility for these matters.</p>\n<p>Advertisement Partners – we provide them slots for advertisements and these partners are solely responsible for the content they show to the users. We do not share your data with these entities.</p>\n<p>Payment Partners – FRVR does not have payment partners. We do however have integrated payments on our platforms and these services are provided by the platforms where the users access their games.</p>\n\n<h3>International Transfers</h3>\n<p>FRVR does not transfer personal data to organisations outside the European Economic Area.</p>\n\n<h3>Technical, Organisational and Security Measures</h3>\n<p>We have put in place reasonable technical and organizational measures designed to secure your personal information from accidental loss and from unauthorized access, use, alteration or disclosure. However, we cannot guarantee that unauthorized third parties will never be able to overcome those measures or use your personal information for improper purposes. Also please note that email and messaging systems are not considered secure, so we discourage you from sending us personal information through these mediums.</p>\n\n<h3>Minors</h3>\n<p>Services may be used by minors, submitted to permission given by parents or guardians. In case you are a minor and use the Services, you ensure and warrant towards us that you have obtained the necessary permission from your parent or guardian.</p>\n<p>Our Services are classified according to the sensitivity of the content shown to our users. This classification materializes by establishing a minimum recommended age for playing our games. The minimum age established in each game might possibly differ based on games\' content. This is not related to the processing of data.</p>\n<p>As we mentioned previously, most of our user\'s game data is processed anonymously, thus we do not gear our Services towards children under the age of 13 and we do not knowingly collect personal identifiable information from children under the age of 13. If we know that a child under 13 has provided us with personal information we will delete such information from our files as quickly as possible.</p>\n<p>If you are under 13 and do not understand the content presented in this Policy, please ask for support from your legal representatives - parents or legal guardians.</p>\n\n<h3>User´s Rights</h3>\n<p>Regarding personal data processing, our users dispose of rights that may be exercised. Note that if a third-party data controller, such as an advertising partner or a payment processor, is responsible for the information, we will take reasonable steps to inform them of your request, but we recommend you contact them directly in accordance with their own privacy policies to ensure your rights are executed lawfully. Our users have the following rights:</p>\n\n<p>\t•\tRight of Access: right to obtain confirmation that personal data concerning the user is or is not subject to processing and, if so, the right to access such personal data and certain information.</p>\n<p>\t•\tRight of Rectification: right to rectify inaccurate personal data concerning the user or to request incomplete personal data to be completed.</p>\n<p>\t•\tRight to Erasure: right to obtain the erasure of personal data, without undue delay as long as there are no valid grounds for its conservation, such as cases in which data has to be kept in order to comply with a legal obligation or because legal proceedings are underway.</p>\n<p>\t•\tRight to restriction of processing: right to request a limitation on the processing of personal data, in the form of suspension of processing or limitation of the scope of processing to certain categories of data or processing purposes, in accordance with article 18 of the GDPR.</p>\n<p>\t•\tThe right to data portability: right to receive personal data that concerns the user in a structured, of common use and automatic reading format and / or the right to transmit this data to another controller.</p>\n<p>\t•\tRight of Objection: right of the users to object to the processing of data at any time, as long as there are no legitimate reasons for such processing that prevail over the interests, rights and freedoms of the users, or for the purposes of declaration, exercise or defence of a right in a judicial proceeding.</p>\n\n<p>You may revoke your consent, in processing activities dependent on obtaining consent, without such revocation invalidating the processing of the data while the consent was in force. This shall be applied to all services (games and website) provided by FRVR as long as the user provides the needed information.</p>\n\n<p>You may also exercise your right of erasure or restriction of processing as what regards advertisement by resetting your mobile advertising identifier (IDFA or GAID) or activate “Limit Ad Tracking” in your device’s settings in order to make previously collected data non linkable to you or your device anymore and limit further data collection.</p>\n\n\n<h3>Data Breaches</h3>\n<p>Although our data processing relies on an anonymised and aggregated basis data breaches might occur. In these cases, and if FRVR is aware of any risks to the data subject´s rights and freedoms we will report these breaches to the relevant Supervisory Authority within 72 hours from the moment we are aware of the occurrence. If the risk is considered high, we will also inform our users of the data breach and what FRVR has done to mitigate the risks and future similar breaches.</p>\n<p>FRVR Limited has an escalated process to ensure the security of user data. Information about whether or not user data has been part of a breach is available upon request through our contracts made available in this Policy.</p>\n\n<h3>Changes to the Privacy Policy</h3>\n<p>By using our Services, you are agreeing to the collection and use of your personal information as outlined in this Privacy Policy. We may amend the Privacy Policy from time to time, and we encourage you to consult the Privacy Policy regularly for changes. For convenience, we identify the last date of update on the top of this Policy.</p>\n<br/>\n<br/>\n<a name="cookies"><h2>FRVR: Cookie Policy</h2></a>\n<h3>Introduction</h3>\n<p>This Cookies Policy ("Cookies Policy") will allow you to obtain more information about the use of our services when accessing our websites and applications and can be supplemented by local provisions.</p>\n<p>This does not apply to third party websites where FRVR’s games are embedded or that may be accessed through a link made available on our website and/or applications, which are not managed nor controlled by FRVR.</p>\n<p>FRVR’s websites and games use cookies and/or similar technologies that collect and store information as the user interacts with them.</p>\n\n<h3>What are cookies?</h3>\n<p>A cookie is a small data file that we transfer to your computer’s hard disk, generally to quickly identify a user’s computer and to “remember” things about the user’s visit, such as your preferences or a username and password. The Service sends cookies to your computer when you access or view content of a FRVR service. Information contained in a cookie may be linked to your personal information for purposes such as improving the quality of our service, tailoring recommendations to your interests, and making the Service easier to use. You can disable cookies at any time, although you may not be able to access or use features of our Services.</p>\n\n<h3>To whom do cookies belong?</h3>\n<p>As for its origin, we can classify Cookies as:</p>\n<p>\t•\tFirst-party Cookies: Cookies managed and stored by FRVR; and </p>\n<p>\t•\tThird-party Cookies: Cookies managed and stored by entities that have content or systems integrated in FRVR’s website or applications.</p>\n<p>Before accessing our websites or applications, you will be provided a complete list of the cookies we use as well as the list of entities who manage and store them. You can then choose whether or not you consent on the use of each type of cookie.</p>\n\n<h3>For which purposes are cookies used?</h3>\n<p>As for their purpose, we can classify cookies as:</p>\n<p>\t•\tNecessary Cookies: technical cookies that allow the user to navigate by activating basic functions such as browsing the pages and accessing safe areas of the pages and allowing the management and operation of the website and applications. For these cookies, consent is not collected because the website or services cannot function properly without them;</p>\n<p>\t•\tPreferential Cookies: allow you to keep information about your previous navigations so that you can access the service with certain features that can personalize your experience. These cookies allow, for example, recognizing the user’s language, preventing or hindering attacks against the website or its users, ensuring the correct reproduction of multimedia content and improving the distribution of web traffic. We will use these cookies based on your consent;</p>\n<p>\t•\tStatistical Cookies (analytical): allow for monitoring and analysis of the behaviour of users in FRVR’s websites and applications. Any information collected through this type of Cookies is used to measure activity in any Website, in order to make improvements depending on the data related to users\' use of the service. Thanks to this we can improve our pages, as well as the offer of products or services. We will use these cookies based on your consent; and</p>\n<p>\t•\tMarketing or Advertisement Cookies: allow us to know your browsing habits and show you advertising related to your browsing profile, effectively managing advertising spaces. They are intended to display relevant ads by customizing their content to the user. We can show you ads with our content or third-parties’ content. We will use these cookies based on your consent;</p>\n\n<h3>How long can cookies be stored?</h3>\n<p>As for the duration, we can classify cookies as:</p>\n<p>\t•\tSession Cookies: until the browser closes or the session is ended; and</p>\n<p>\t•\tPersistent Cookies: stored for longer periods, and therefore action is required by the user in order to eliminate these cookies. FRVR does not store cookies for more than 2 years.</p>\n<p>Before accessing our websites or applications, you will be provided a complete list of the cookies we use as well as their respective storage periods.</p>\n\n<h3>How is your consent collected?</h3>\n<p>FRVR collects consent of the users at the time of visiting the websites or playing the games.</p>\n\n<h3>How can I revoke, configure, or reject the collection and use of Cookies?</h3>\n<p>You can configure the cookies through your browser to allow, block or delete installed Cookies. In this case, you should take into account that, although you have only necessary Cookies to use or navigate FRVR’s websites, if you disable the remaining cookies you will not be able to access all the features we provide to you. Your browser\'s "Help" button may provide you additional information on how to configure your browser.</p>\n<p>We then explain you how to do it but keep in account that the procedure may vary depending on the browser you are using:</p>\n<p>\t•\tGoogle Chrome \u2028(https://support.google.com/chrome/answer/95647?co=GENIE.Platform%3DDesktop&hl=en);</p>\n<p>\t•\tChrome for mobile \u2028(https://support.google.com/chrome/answer/95647?co=GENIE.Platform%3DAndroid&hl=en);</p>\n<p>\t•\tMozilla Firefox\u2028(https://support.mozilla.org/en-US/kb/clear-cookies-and-site-data-firefox);</p>\n<p>\t•\tInternet Explorer\u2028(https://support.microsoft.com/en-us/topic/how-to-delete-cookie-files-in-internet-explorer-bca9446f-d873-78de-77ba-d42645fa52fc);</p>\n<p>\t•\tInternet Explorer Edge\u2028(https://support.microsoft.com/en-us/microsoft-edge/delete-cookies-in-microsoft-edge-63947406-40ac-c3b8-57b9-2a946a29ae09);</p>\n<p>\t•\tSafari\u2028(https://support.apple.com/en-gb/guide/safari/sfri11471/mac); and</p>\n<p>\t•\tSafari (Mobile)\u2028(https://support.apple.com/en-gb/HT201265).</p>\n<p>If you wish to return your browser to a cookie-free state for this domain, find your browser in the list below and follow the instructions:</p>\n<p>\t•\tGoogle Chrome \u2028(https://support.google.com/accounts/answer/32050?co=GENIE.Platform%3DDesktop&hl=en);</p>\n<p>\t•\tMozilla Firefox\u2028(https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored);</p>\n<p>\t•\tInternet Explorer\u2028(https://support.microsoft.com/en-us/help/17442/windows-internet-explorer-delete-manage-cookies);</p>\n<p>\t•\tInternet Explorer Edge\u2028(https://privacy.microsoft.com/en-us/windows-10-microsoft-edge-and-privacy);</p>\n<p>\t•\tSafari (Mobile)\u2028(https://support.apple.com/en-us/HT201265); and</p>\n<p>\t•\tSafari\u2028(https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac).</p>\n\n<p>If you reject the installation of Cookies, you can continue to use the websites and games but the use of some of its services may be limited and the usability of navigation may be limited.</p>\n<p>All your preferences will be stored until you decide to make further changes.</p>\n\n\n<h3>Updates and changes to the Cookies Policy</h3>\n<p>FRVR may modify this Cookies Policy based on new legal requirements, to implement improvements on it by notifying, in the event of significant changes, through an informative notice on our web pages. If you have any questions regarding our Cookies Policy contact us through the communication channels made available through our Privacy Policy.</p>\n\n<br />\n<br />\n\n<a name="termsofservice"><h2>FRVR: Terms of Service</h2></a>\n\n<h3>Introduction</h3>\n<p>These Terms of Service (“Terms”) are a legal agreement between FRVR Ltd. (“FRVR” or “we”) and you (“you”). By using or accessing any FRVR game or application (“Service”) you agree to be bound by these Terms.</p>\n<p>By accessing or using the Service, you agree that you have read, understood, and accept to be bound by the Terms.</p>\n<p>FRVR reserves the right, in its sole discretion, modify or revise these Terms at any time, and you agree to be bound by such modifications or revisions.</p>\n<p>If you do not agree to the Terms, do not use the Service.</p>\n<p>Users are responsible for periodically viewing the Terms. Your continued use of the Service after a change or update has been made will constitute your acceptance to the revised Terms.</p>\n<p>If you do not agree to the Terms your only remedy is to discontinue your use of the Service and cancel any accounts, you have made using the Service.</p>\n<p>If you violate the Terms, FRVR reserves the right to issue you a warning regarding the violation or immediately terminate or suspend any or all accounts you have created using the Service.</p>\n<p>You agree that FRVR need not provide you notice before terminating or suspending your account(s), but it may do so.</p>\n<p>FRVR reserves the right to refuse any user access to the Services without notice for any reason, including, but not limited to, a violation of the Terms.</p>\n<p>You agree that FRVR may discontinue the Service or change the content of the Service at any time, for any reason, with or without notice to you, without liability.</p>\n<p>You represent that you are 13 years old or older. If you are between the ages of 13 and 18, you represent that your legal guardian has reviewed and agrees to the Terms.</p>\n\n<h3>Intellectual Property/Ownership</h3>\n<p>All materials that are part of the Service (including, but not limited to, designs, text, graphics, pictures, video, information, applications, software, music, sound and other files, and their selection and arrangement) are protected by law from unauthorized use.</p>\n<p>The entire contents of the Service are copyrighted under the Danish copyright laws and/or similar laws of other jurisdictions.</p>\n<p>You agree that no materials that are part of the Service may be modified, copied, distributed, framed, reproduced, republished, downloaded, scraped, displayed, posted, transmitted, or sold in any form or by any means, in whole or in part, or otherwise exploited without FRVR’s express prior written permission, except that the foregoing does not apply to your own User Content (as defined below) that you legally post on the Site.</p>\n<p>All other uses of copyrighted material, including any derivative use, requires express prior written permission from FRVR. Any reproduction or redistribution of materials not in accordance with these Terms is expressly prohibited and may result in severe civil and criminal penalties.</p>\n<p>FRVR and/or its licensors remain the owners of right, title, and interest, including copyrights and other intellectual property rights, in and to all materials posted on the Services by FRVR. You acknowledge that you do not acquire any ownership rights by using the Service or by accessing any materials posted on the Service by</p>\n<p>FRVR, or any derivative works thereof.</p>\n<p>FRVR grants you a personal, non-exclusive, non-transferable, revocable, limited scope license to use the Service solely for the purpose of viewing and using the applicable Services and for no other purpose whatsoever. Your license to use the Services is limited by these Terms.</p>\n\n<h3>User Content</h3>\n<p>You agree that you are willingly publishing the content on the Service using technology and tools provided by FRVR. You understand and agree that you may not distribute, sell, transfer, or license this content and/or application in any manner, in any country, or on any social network or other medium without the explicit written permission of FRVR. You grant FRVR the right to act as an agent on your behalf as operator of the application.</p>\n<p>Any data, text, graphics, photographs and their selection and arrangement, ("User Content") uploaded to the Service are subject, whether in whole or in part, to unlimited commercial, non-commercial and/or promotional use by FRVR. Text, graphics, and photographs are uploaded by you and are the sole responsibility of the person from whom the User Content originated. Thus, users are responsible, and FRVR is not responsible for any file’s users upload, post, or otherwise make available. FRVR may or may not regulate User Content and does not guarantee the accuracy, quality, or integrity of any User Content posted via the FRVR service. By using FRVR you acknowledge and accept that you may be exposed to material you find offensive or objectionable. You agree that FRVR will not under any circumstances be liable for any User Content, including, but not limited to, errors in any User Content, or any loss or damage incurred by use of the User Content.</p>\n<p>FRVR reserves the right to remove and permanently delete any User Content from the Service with or without notice.</p>\n\n<h3>Virtual Currencies & Goods</h3>\n<p>The Service may include an opportunity to purchase virtual, in-game currency ("Virtual Currency") that may require you to pay a fee using "real money" to obtain the Virtual Currency. Virtual Currency can never be redeemed for real money, goods, or any other item of monetary value from FRVR or any other party. You understand that you have no right or title in the virtual in game items or Virtual Currency.</p>\n<p>Your purchase of Virtual Currency is final and is not refundable, exchangeable, transferable, except in FRVR sole discretion. You may not purchase, sell, or exchange Virtual Currency outside the Service. Doing so is a violation of the Terms and may result in termination of your account with the Service and/or legal action.</p>\n<p>FRVR retains the right to modify, manage, control and/or eliminate Virtual Currency at its sole discretion. Prices and availability of virtual in game goods are subject to change without notice.</p>\n\n<h3>Rules of Conduct/Usage</h3>\n<p>The FRVR Service may provide communication channels such as forums, communities, or chat areas ("Communication Channels") designed to enable you to communicate with other Service users. FRVR has no obligation to monitor these communication channels, but it may do so and reserves the right to review materials posted to the Communication Channels and to remove any materials, at any time, with or without notice for any reason, at its sole discretion. FRVR may also terminate or suspend your access to any Communication Channels at any time, without notice, for any reason. You acknowledge that chats, postings, or materials posted by users on the Communication Channels are neither endorsed nor controlled by FRVR, and these communications should not be considered reviewed or approved by FRVR. FRVR will not under any circumstances be liable for any activity within Communication Channels.</p>\n<p>You agree that all your communications with the Communication Channels are public, and thus you have no expectation of privacy regarding your use of the Communication Channels. FRVR is not responsible for information that you choose to share on the Communication Channels, or for the actions of other users.</p>\n<p>You agree that your use of the Service shall be lawful and that you will comply with the usage rules. In furtherance of the foregoing, and as an example and not as a limitation, you agree not to use the Service in order to:</p>\n<p>\t•\tpost, upload, transmit or otherwise disseminate information that is obscene, indecent, vulgar, pornographic, sexual or otherwise objectionable;</p>\n<p>\t•\tdefame, libel, ridicule, mock, stalk, threaten, harass, intimidate or abuse anyone, hateful, racially, ethnically or, in a reasonable person\'s view, otherwise offensive or objectionable;</p>\n<p>\t•\tupload or transmit (or attempt to upload or transmit) files that contain viruses, Trojan horses, worms, time bombs, cancelbots, corrupted files or data, or any other similar software or programs that may damage the operation of the Service or other users\' computers;</p>\n<p>\t•\tviolate the contractual, personal, intellectual property or other rights of any party including using, uploading, transmitting, distributing, or otherwise making available any information made available through the Service in any manner that infringes any copyright, trademark, patent, trade secret, or other right of any party (including rights of privacy or publicity);</p>\n<p>\t•\tattempt to obtain passwords or other private information from other members;</p>\n<p>\t•\timproperly use support channels or complaint buttons to make false reports to FRVR;</p>\n<p>\t•\tdevelop, distribute, or publicly inform other members of “auto” software programs, “macro” software programs or other "cheat utility" software program or applications in violation of the applicable License Agreements;</p>\n<p>\t•\texploit, distribute or publicly inform other members of any game error, miscue or bug which gives an unintended advantage;</p>\n<p>\t•\tviolate any applicable laws or regulations, or promote or encourage any illegal activity including, but not limited to, hacking, cracking or distribution of counterfeit software, or cheats or hacks for the Service.</p>\n\n<h3>Disclaimer of Warranty; Limitation of Liability</h3>\n<p>You agree that your use of the Service shall be at your sole risk. To the fullest extent permitted by law, FRVR, its officers, directors, employees, and agents disclaim all warranties, express or implied, in connection with the service and your use thereof including implied warranties of title, merchantability, fitness for a particular purpose or non-infringement, accuracy, authority, completeness, usefulness, and timeliness. FRVR makes no warranties or representations about the accuracy or completeness of the content of the Service of the content of any sites linked to the Service and assumes no liability or responsibility for any (i) errors, mistakes, or inaccuracies of content, (ii) personal injury or property damage, of any nature whatsoever, resulting from your access to and use of the Service, (iii) any unauthorized access to or use of our secure servers and/or any and all personal information and/or financial information stored therein, (iv) any interruption or cessation of transmission to or from the Service, (v) any bugs, viruses, trojan horses, or the like which may be transmitted to or through the Service by any third party, and/or (vi) any errors or omissions in any content or for any loss or damage of any kind incurred as a result of the use of any content posted, emailed, transmitted, or otherwise made available via the Service.</p>\n<p>In no event will FRVR, its directors, officers, agents, contractors, partners and employees, be liable to you or any third person for any special, direct, indirect, incidental, special, punitive, or consequential damages whatsoever including any lost profits or lost data arising from your use of the Service or other materials on, accessed through or downloaded from the Service, whether based on warranty, contract, tort, or any other legal theory, and whether or not FRVR has been advised of the possibility of these damages. The foregoing limitation of liability shall apply to the fullest extent permitted by law in the applicable jurisdiction. You specifically acknowledge that FRVR shall not be liable for user submissions or the defamatory, offensive, or illegal conduct of any third party and that the risk of harm or damage from the foregoing rests entirely with you. You agree to indemnify and hold FRVR, and each of its directors, officers, agents, contractors, partners and employees, harmless from and against any loss, liability, claim, demand, damages, costs and expenses, including reasonable attorney\'s fees, arising out of or in connection with (i) your use of and access to the Service; (ii) your violation of any term of these Terms of Service; (iii) your violation of any third party right, including without limitation any copyright, property, or privacy right; (iv) any claim that one of your User Submissions caused damage to a third party; or (v) any Content you post or share on or through the Service.</p>\n\n<h3>General</h3>\n<p>By visiting or using the the Service, you agree that the laws of the Malta, without regard to principles of conflict of laws and regardless of your location, will govern these Terms of Service and any dispute of any sort that might arise between you and FRVR. Any claim or dispute between you and FRVR that arises in whole or in part from your use of the Service shall be decided exclusively by a court of competent jurisdiction located in Copenhagen, Denmark, and you hereby consent to, and waive all defenses of lack of personal jurisdiction and forum non conveniens with respect to venue and jurisdiction in the of Copenhagen, Denmark. FRVR reserves the right to amend these Terms of Service at any time and without notice, and it is your responsibility to review these Terms of Service for any changes. Your use of FRVR following any amendment of these Terms of Service will signify your assent to and acceptance of its revised terms. YOU AND FRVR AGREE THAT ANY CAUSE OF ACTION ARISING OUT OF OR RELATED TO THE SERVICE MUST COMMENCE WITHIN ONE (1) YEAR AFTER THE CAUSE OF ACTION ACCRUES. OTHERWISE, SUCH CAUSE OF ACTION IS PERMANENTLY BARRED.</p>\n\n<p>Last modified on January 31st, 2024</p>\n\n\n                      ')])))
          }
      };
      const ve = {
          view: function() {
              return document.title = "FRVR legal",
              t()("div.container.pt-16.pb-32", t()("div.row", t()("div.col-12", [t().trust('\n                  \n<content><inner>\n\n            <a name="top"><h1>Legal</h1></a>\n            <p>FRVR Limited (VAT MT24548624) is a Maltese limited liability company located in Valletta, Malta.</p>\n            <p>FRVR&reg; is a registered trademark of FRVR Limited.</p>\n            <p>Krunker&reg; is a registered trademark of FRVR Limited.</p>\n            <p>\n                FRVR Limited<br />\n                61 Saint Paul Street,<br />\n                Valletta VLT 1212<br />\n                Malta<br /><br />\n                Business ID C82019<br />\n                VAT ID MT24548624\n            </p>\n            <p>For questions, support and legal enquiries please contact <a style="color: blue;" href="mailto:legal@frvr.com">legal@frvr.com</a></p>\n            <p>Version 3rd of February 2023</p>\n\n            <h2>Table of contents</h2>\n            <p>\n                <ul>\n                    <li><a href="#PrivacyPolicy">FRVR: Privacy Policy</a></li>\n                    <li><a href="#gdpr">FRVR: GDPR Compliance</a></li>\n                    <li><a href="#TermsofService">FRVR: Terms of Service</a></li>\n                </ul>\n            </p>\n\n            <hr/>\n\n            <a name="PrivacyPolicy"><h2>FRVR: Privacy Policy</h2></a>\n            <p>FRVR Ltd (<strong>“FRVR”</strong> or <strong>“we”</strong>) is dedicated to protecting the privacy rights of our online users (<strong>“users”</strong> or <strong>“you”</strong>). This Online Privacy Policy (“Privacy Policy”) has been crafted to inform you as to the ways we collect, store, use, and manage the information you provide in connection with any FRVR game or application, including Krunker.io (<strong>“Service”</strong>). Please note that the scope of this Privacy Policy is limited to only information collected from FRVR through the use of the Service.</p>\n            <p>By using the Service, you are agreeing to the collection and use of your personal information as outlined in this Privacy Policy. We may amend the Privacy Policy from time to time, and we encourage you to consult the Privacy Policy regularly for changes.</p>\n\n            <h3>Information Collected and Used</h3>\n            <p>FRVR is <a href="#gdpr">GDPR compliant</a></p>\n            <p>FRVR\'s primary objective in collecting user information is to provide and enhance the Service and to enable users to easily navigate and enjoy the Service.</p>\n            <p>When you install any of the FRVR games or applications, we may collect and record the information you provide us voluntarily through services such as www.facebook.com (“Facebook”) in accordance with the policies and terms of Facebook.</p>\n            <p>The types of personal information collected in accordance with the activities listed above may vary depending on the activity. This “personal information” is defined as information about you that can be used to contact or identify you. Personal information may include: (1) your name, (2) Facebook user identification number, (3) or email address. Additionally, we may acquire information from you through (1) your access and participation in message boards on the Service (2) your email of a question to our customer support or (3) your purchase of a virtual product of any type. Please note that because a third party site manages the purchases of virtual goods offered by the Service, we do not have access to your credit card details and billing information.</p>\n            <p>FRVR may also invite you to share non-personal information about yourself which may include but is not limited to: (1) your age or date of birth; (2) your gender; (3) information about the hardware you may own; (4) your favorite websites, friend information and fan pages (collectively referred to as <strong>“non-personal information”</strong>). If non-personal information is collected for an activity that also requires personal information, FRVR may combine your non-personal information with your personal information in an attempt to provide you with a better user experience, to improve the quality and value of the Services and to analyze how our Service is used.</p>\n            <p>The Service will also record game play information such as your high scores or game session duration.</p>\n            <p>In addition to information collected as described above, you may choose to share additional information about yourself throughout the Service, such as in games or on message boards. Any action you perform with other players are considered public, and are your sole discretion.</p>\n            <p>Finally, any time you access the Service, we may collect aggregate information including but not limited to internet protocol addresses, browser type, browser language, referring / exit pages and URLs, platform type, number of clicks, domain names, landing pages, pages viewed and the order of those pages, the amount of time spent on particular pages, and the date and time of this activity. We use this information to better tailor the Service to your interests, to provide you more efficient customer support, and to overall enhance the Service.</p>\n            <p>In all cases of data access and collection, the information you provide will not be disclosed, rented, leased, loaned, sold, or otherwise voluntarily distributed to unaffiliated third parties and will be used solely for the purpose of providing you with and improving the Service.</p>\n\n            <h3>Other Disclosure of Your Personal Information</h3>\n            <p>You understand and agree that we may be required to disclose any personal information if required to do so by law or in the good faith belief that such disclosure is reasonably necessary to avoid liability, to comply with legal process, including but not limited to a search warrant, subpoena, statute, or court order, or to protect our rights and property, or that of the public. Note that FRVR is not required to question or contest the validity of any search warrant, subpoena or other similar governmental request that FRVR may receive.</p>\n            <p>Additionally, in the event of a merger, acquisition, reorganization, bankruptcy, or other similar event, customer information may be transferred to FRVR\'s successor or assignee, if permitted by and done in accordance with applicable law.</p>\n            \n            <h3><a name="cookies">Cookies</a></h3>\n            <p>A cookie is a small data file that we transfer to your computer\'s hard disk, generally to quickly identify a user\'s computer and to “remember” things about the user\'s visit, such as your preferences or a user name and password. The Service sends cookies to your computer when you access or view content of a FRVR service. Information contained in a cookie may be linked to your personal information for purposes such as improving the quality of our service, tailoring recommendations to your interests, and making the Service easier to use. You can disable cookies at any time, although you may not be able to access or use features of the Service.</p>\n            <p>If you wish to return your browser to a cookie-free state for this domain, find your browser in the list below and follow the instructions.</p>\n            <dl>\n                <dt>Google Chrome:</dt>\n                <dd><a href="https://support.google.com/accounts/answer/32050?co=GENIE.Platform%3DDesktop&amp;hl=en">https://support.google.com/accounts/answer/32050?co=GENIE.Platform%3DDesktop&hl=en</a></dd>\n                <dt>Firefox:</dt>\n                <dd><a href="https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored">https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored</a></dd>\n                <dt>Internet Explorer:</dt>\n                <dd><a href="https://support.microsoft.com/en-us/help/17442/windows-internet-explorer-delete-manage-cookies">https://support.microsoft.com/en-us/help/17442/windows-internet-explorer-delete-manage-cookies</a></dd>\n                <dt>Internet Explorer Edge:</dt>\n                <dd><a href="https://privacy.microsoft.com/en-us/windows-10-microsoft-edge-and-privacy">https://privacy.microsoft.com/en-us/windows-10-microsoft-edge-and-privacy</a></dd>\n                <dt>Safari (Mobile):</dt>\n                <dd><a href="https://support.apple.com/en-us/HT201265">https://support.apple.com/en-us/HT201265</a></dd>\n                <dt>Safari:</dt>\n                <dd><a href="https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac">https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac</a></dd>\n            </dl>\n\n            <h3><a name="links">Links</a></h3>\n            <p>The Service may contain links to other websites. The fact that the Service links to a website or presents a banner ad or other type of advertisement does not mean that FRVR endorses or authorizes that third party, nor is it a representation of our affiliation with that third party. FRVR is in no way responsible for the privacy policies of these other websites to which you choose to access from the Service. Please be sure to read the privacy policies of those websites when exiting the Service.</p>\n\n            <h3>Third Party Platform</h3>\n            <p>When you use or connect to a FRVR website or download a FRVR mobile app by or through a Third Party Platform, such as Facebook or other social networking site, you allow us to access and/or collect certain information from your Third Party Platform profile/account (such as your Facebook account) or via any cookies placed on your device by such Third Party Platform as permitted by the terms of the agreement and your privacy settings with the Third Party Platform. We will share such information with the Third Party Platform for their use as permitted by the terms of the agreement and your privacy setting with the Third Party Platform.</p>\n            <p>We will share some of the information we collect from you upon install of the mobile app with vendors and other service providers who are engaged by or working with us in connection with the operation of the services we provide to you and/or for analytics purposes which may require the reproduction and display of such information in an aggregated and anonymized manner such that will not in any way identify you.</p>\n\n            <h3>Changing or Deleting Your Information</h3>\n            <p>You may review, update, correct or delete any personal information by changing the applicable information by changing the applicable information in your Facebook profile page. If you completely delete all this information, your account may become deactivated. If you would like us to delete your record in our system, please contact us and we will attempt to accommodate your request if we are not legally obligated to retain the record.</p>\n\n            <h3>Security</h3>\n            <p>We have put in place reasonable technical and organizational measures designed to secure your personal information from accidental loss and from unauthorized access, use, alteration or disclosure. However, we cannot guarantee that unauthorized third parties will never be able to overcome those measures or use your personal information for improper purposes. Also please note that email and messaging systems are not considered secure, so we discourage you from sending us personal information through these mediums.</p>\n\n            <h3>Policy Regarding Children</h3>\n            <p>The Service is not geared toward children under the age of 13 and we do not knowingly collect personal information from children under the age of 13. If we learn that a child under 13 has provided us with personal information we will delete such information from our files as quickly as possible.</p>\n\n            <hr/>\n\n            <a name="gdpr"><h2>GDPR Compliance Statement</h2></a>\n            <p>The General Data Protection Regulation (GDPR) is effective from 25th May 2018. The GDPR aims to strengthen the security and protection of personal data in the EU and will replace the European Privacy Directive and national legislations accordingly.</p>\n            <p>FRVR understands the importance of customer data and welcomes the arrival of the GDPR. At FRVR Limited, we believe that customers are the most important part of our business and the success of our company builds on the trust that our customers, employees and other stakeholders have in our ability to deliver premier quality including the protection of personal information.</p>\n            <p>FRVR Limited services complies with all applicable parts of the GDPR.</p>\n            <p>Any consent you may give or choose to withhold in relation to the GDPR shall apply to all services (games and website) provided by FRVR Limited as part of the <a href="//frvr.com/">frvr.com</a> domain.\n            <p>The following are key aspects of the GDPR, and how it relates to FRVR Limited.</p>\n\n            <a name="whatisgdpr"><h3>What is the GDPR</h3></a>\n\n            <p>The GDPR is the General Data Protection Regulation established by the European Union.</p>\n            <p>At its core, GDPR is a new set of rules designed to give EU citizens more control over their personal data. It aims to simplify the regulatory environment for business so both citizens and businesses in the European Union can fully benefit from the digital economy.</p>\n            <p>Follows EU Data Protection Directive (Directive 95/46/EC). For more information, please see <a href="https://eugdpr.org/" target="_blank">eugdpr.org</a>.</p>\n\n            <a name="keyaspects"><h3>Key Aspects of GDPR</h3></a>\n            <p>There are 4 aspects to the GDPR that FRVR Limited has considered as part of our GDPR compliance:</p>\n\n            <h4>The right to data portability</h4>\n            <p>Individuals have the right to a copy of all the personal data that controllers have regarding him or her. It also must be provided in a way that facilities reuse.</p>\n            <ul>\n                <li>At any time, users may request any date we store on their behalf by contacting us via email on <a href="mailto:gdpr@frvr.com" target="_blank">gdpr@frvr.com</a></li>\n            </ul>\n\n            <h4>The right to be forgotten</h4>\n            <p>This gives individuals the right to have certain personal data deleted so third parties can no longer trace them. FRVR Limited does not store any personal data, only authentication tokens to Facebook. Those tokens can be invalidated by removing the game app according to <a href="https://www.facebook.com/help/204306713029340" target="_blank">these instructions by Facebook.</a></p>\n            <p>Since we currently do not store any PII directly, and the only way to link game state and analytics data collected with a particular user is via their Facebook Access Token, simply removing the FRVR game app from the users\' Facebook profile will anonymize any information we hold. This will happen instantly, the moment the user removes our app.</p>\n\n            <h4>Privacy by Design</h4>\n            <p>This helps to facilitate the inclusions of policies, guidelines, and work instructions related to data protection in the earliest stages of projects including personal data.</p>\n            <ul>\n                <li>This aspect does not apply to FRVR Limited.</li>\n            </ul>\n\n            <h4>Data Breach Notifications</h4>\n            <p>Controllers must report personal data breaches to the relevant supervisory authority within 72 hours after having become aware of it. If there is an high risk to the rights and freedoms of data subjects, they must also notify the data subjects.</p>\n            <p>FRVR Limited has an escalated process in order to ensure the security of user data. Information about whether or not user data has been part of a breach is available upon request.</p>\n\n            <a name="gdprcompliance"><h3>GDPR Compliance for FRVR</h3></a>\n            <p>To Understand the position of FRVR in the compliance of GDPR, it is important to understand the actors. These actors are:</p>\n            <dl>\n                <dt>Data Controller</dt>\n                <dd>is the individual or the legal person who controls and is responsible for the keeping and use of personal information on a computer or in structured manual files.</dd>\n                <dt>Data Processor</dt>\n                <dd>in relation to personal data, means any person (other than an employee of the data controller) who processes the data on behalf of the data controller. “processing”, in relation to information or data means. obtaining, recording or holding the information or data.</dd>\n                <dt>Data Subject</dt>\n                <dd>means an individual who is the subject of personal data. In other words, the data subject is the individual whom particular personal data is about.</dd>\n            </dl>\n\n            <a name="gdprandfrvr"><h3>GDPR and FRVR Limited</h3></a>\n            <p>The following are key elements of our GDPR Compliance:</p>\n            <p>We do not process personal data on behalf of the Customer and we don\'t have access to any personal data in our customer\'s systems (Customer Personal Data). Moreover, FRVR is not able to monitor the processing of Customer Personal Data in our customer\'s systems.</p>\n\n            <h4>What personal data do we collect/store?</h4>\n            <p>At FRVR we collect two types of data on our users; passive and active. Passive collection is the data that is collected when users play games, whether on their mobile device or the web. This data is collected using Google Analytics or similar and contains the following information:</p>\n            <ul>\n                <li>IP address</li>\n                <li>approximate geographical location</li>\n                <li>session duration</li>\n                <li>in-game activity</li>\n            </ul>\n            <p>This data does not contain any personally identifying information. Our active data collection is currently limited to high scores and game information, such as coins collected. We allow users to log in using their Facebook account, and from their Facebook account we store the following:</p>\n            <ul>\n                <li>User Access Token: we simply use this token to identify a user from one play session to the next. We do not gain access to any details about the user.</li>\n            </ul>\n            <p>As such we don\'t store any data that can be used to identify and track an individual. The user access token can be invalidated at any time by removing our app from the users Facebook profile.</p>\n\n            <h4>How does FRVR Address GDPR</h4>\n            <dl>\n                <dt>Data Access Control</dt>\n                <dd>The controller shall implement appropriate technical and organizational measures for ensuring that by default, only personal data which are necessary for each specific purpose of the processing are processed.</dd>\n                <dt>Monitoring of Access Activities</dt>\n                <dd>Each controller and where applicable, the controllers representative, shall maintain a record of processing activities under its responsibilities</dd>\n                <dt>Data Encryption</dt>\n                <dd>Organizations must implement appropriate technical and organizational measures to ensure a level of security appropriate to the risk, including the pseudonymisation and encryption of personal data</dd>\n                <dt>Strong Compliance Framework</dt>\n                <dd>Appropriate technical and organizational measures may need to include “the ability to ensure the ongoing confidentiality, integrity, availability and resilience of the processing systems and services</dd>\n            </dl>\n\n            <a name="questions"><h3>Questions?</h3></a>\n            <p>Any FRVR Limited GDPR related questions and any data subject requests can be addressed to: <a href="mailto:gdpr@frvr.com" target="_blank">gdpr@frvr.com</a>.</p>\n\n            <a name="faq"><h3>FAQ</h3></a>\n            <dl>\n                <dt>What are the requirements under GDPR for FRVR?</dt>\n                <dd><ul>\n                    <li>Privacy measures should be implemented in the design phase</li>\n                    <li>Right to be forgotten</li>\n                    <li>Data portability</li>\n                </ul></dd>\n                <dt>What information is covered by GDPR?</dt>\n                <dd><ul>\n                    <li>Any information relating to an identified or identifiable natural person</li>\n                    <li>Any healthcare and sensitive data</li>\n                </ul></dd>\n                <dt>When does GDPR come into effect?</dt>\n                <dd><ul>\n                    <li>May 25, 2018</li>\n                </ul></dd>\n                <dt>Which customers are affected by the GDPR?</dt>\n                <dd><ul>\n                    <li>Applies to controllers and processors who are established in the European Union or those who offer goods and services to data subjects in the EU</li>\n                    <li>Entities that monitor behavior of data subjects in the EU</li>\n                </ul></dd>\n                <dt>What type of actor is FRVR?</dt>\n                <dd><ul>\n                    <li>For information collected under this Privacy Policy, the data controller is FRVR Limited. Our Data Protection Officer can be contacted here: <a href="mailto:gdpr@frvr.com" target="_blank">gdpr@frvr.com</a>.</li>\n                </ul></dd>\n            </dl>\n\n            <hr/>\n\n            <a name="TermsofService"><h2>FRVR: Terms of Service</h2></a>\n            <p>These Terms of Service (“Terms”) are a legal agreement between FRVR Ltd. (“FRVR” or “We”) and you (“User”, “You” or “Your”). By using or accessing Krunker.io  (“Service”). You agree to be bound by these Terms.</p></p>\n            <p>By accessing or using the Service, You agree that You have read, understood, and accept to be bound by the Terms.</p></p>\n            <p>FRVR reserves the right, in its sole discretion, to modify or revise these Terms at any time, and You agree to be bound by such modifications or revisions.</p></p>\n            <p>If You do not agree to the Terms, do not use the Service.</p></p>\n            <p>Users are responsible for periodically viewing the Terms. Your continued use of the Service after a change or update has been made will constitute Your acceptance of the revised Terms.</p></p>\n            <p>If You do not agree to the Terms Your only remedy is to discontinue Your use of the Service and cancel any accounts You have made while using the Service.</p></p>\n            <p>If You violate the Terms, FRVR reserves the right to issue You a warning regarding the violation or immediately terminate or suspend any or all accounts You have created using the Service.</p></p>\n            <p>A User that wishes the account to be terminated can select this in their account. The account will be terminated after 14 days if the process is not reversed by the User during the 14 days period. If an account is terminated, the User has no claim for any asset related to the account terminated.</p></p>\n            <p>Accounts that have not been used within the last 12 months can be deactivated. Any credits related to purchases made by You and available on Your account will not be refunded, except during the period of 14 (fourteen) days after the purchase occurred. </p></p>\n            <p>Any credits earned during the game play (earned and not obtained through purchases) and available on the account will not be returned. </p></p>\n            <p>You agree that FRVR won\'t have to provide You notice before terminating or suspending Your account(s).</p></p>\n            <p>FRVR reserves the right to refuse any User access to the Services without notice for any reason, including, but not limited to, a violation of the Terms.</p></p>\n            <p>You agree that FRVR may discontinue the Service or change the content of the Service at any time, for any reason, with or without notice to You, without liability.</p></p>\n            <p>To use the Service, You represent that You are 13 years old or older. If You are between the ages of 13 and 18, You represent that Your parents or legal guardian has reviewed and agrees to the Terms.</p></p>\n\n\n            <h3>Intellectual Property/Ownership</h3>\n            <p>All materials that are part of the Service (including, but not limited to, designs, text, graphics, pictures, video, information, applications, software, music, sound, raw and source materials, art, digital source files, source code, databases, typography) and other files, and their selection and arrangement) are protected by law from unauthorized use.</p>\n            <p>All materials that are part of the Service, including User Content, are owned by or licensed to FRVR. </p>\n            <p>The entire contents of the Service are copyrighted under the Danish copyright laws and/or similar laws of other jurisdictions.</p>\n            <p>You agree that no materials that are part of the Service may be modified, copied, distributed, framed, reproduced, republished, downloaded, scraped, displayed, posted, transmitted, or sold in any form or by any means, in whole or in part, or otherwise exploited without FRVR\'s express prior written permission, All other uses of copyrighted material, including any derivative use, requires express prior written permission from FRVR. Any reproduction or redistribution of materials not in accordance with these Terms is expressly prohibited and may result in severe civil and criminal penalties.</p>\n            <p>FRVR and/or its licensors remain the owners of rights, titles, and interests, including copyrights and other intellectual property rights, in and to all materials posted on the Service by FRVR. You acknowledge that You do not acquire any ownership rights by using the Service or by accessing any materials posted on the Service by FRVR, or any derivative works thereof.</p>\n            <p>FRVR grants You a personal, non-exclusive, non-transferable, revocable, limited-scope license to use the Service solely for the purpose of viewing and using the applicable Services and for no other purpose whatsoever. Your license to use the Services is limited by these Terms.</p>\n\n\n    \n            <h3>User Content</h3>\n            <p>You agree that You are willingly publishing the user content on the Service using technology and tools provided by FRVR. You understand and agree that You may not distribute, sell, transfer, or license this content and/or application in any manner, in any country, or on any social network or another medium without the explicit written permission of FRVR. You grant FRVR all rights, title,s and interest in and to Your User Content (as defined below).</p>\n            <p>Any content, including, but not limited to, designs, pictures, video, information, applications, software, music, sound, raw and source materials, art, digital source files, source code, databases, typography data, art, text, graphics, and their selection and arrangement, (hereinafter "User Content") uploaded to the Service are subject, whether in whole or in part, to unlimited commercial, non-commercial, and/or promotional use by FRVR. The User Content is uploaded by You and is Your sole responsibility, as the person who originated the User Content. </p>\n            <p>Thus, Users are responsible, and FRVR is not responsible for any User Content upload, post, or otherwise, make available. FRVR may or may not regulate User Content and does not guarantee the accuracy, quality, or integrity of any User Content posted via the FRVR Service. By using the Service, You acknowledge and accept that You may be exposed to material You find offensive or objectionable. You agree that FRVR will not, under any circumstances, be liable for any User Content, including, but not limited to, errors in any User Content, or any loss or damage incurred by the use of the User Content.</p>\n            <p>FRVR reserves the right to remove and permanently delete any User Content from the Service with or without notice.</p>\n            <p>By creating and publishing any assets to the Service, You agree that the assets, including but not limited to, textures, maps, mods, models, scripts, images, sounds and files, and User Content, are not infringing third-party rights and that You have all necessary licenses for the use; no claim can be made by You and on Your behalf and You expressly undertake to defend and hold harmless FRVR against any claims arising on this regard and damages that FRVR may suffer.</p>\n            <p>Publishing and using of copyrighted materials or assets, without the relevant license, is prohibited and FRVR has to remove any assets You publish to the Service.</p>\n            <p>An asset that is published may be removed for any reason. Any lost Krunkies lost from the removal of an asset will not be refunded.</p>\n            <p>If specific assets are rewarded at the discretion of FRVR, the Partner conditions apply.</p>\n\n            \n            <h3>Purchases</h3>\n            <p>Any purchase of in-game features is limited to be used within the game it has been purchased for.</p>\n            <p>All purchases are final when the transaction is finalized and non-refundable, except during the period of 14 (fourteen) days after the purchase occurred. Prices for purchases include value-added tax, if applicable, and are in US Dollars or the currency provided by the payment provider or bank. The payment provider or bank can convert the prices in US Dollars to a local currency based on their exchange rates valid on the date of purchase.</p>\n            <p>The purchases for in-game features are limited to a maximum of US Dollars 100.00 (hundred/00) per transaction.</p>\n            <p>FRVR reserves the right to withdraw sales against a full refund of the paid amount in US Dollars.</p>\n            <p>The purchase of in-game features gives the purchaser the right to use these features in the game at any time, except in the case of account deletion, as illustrated above.</p>\n            <p>The purchase of features does not include the right to copy or distribute or use any of the features or use them outside the Service in any way. FRVR allows game plays to be recorded (video) and streamed on online platforms. Rules stated under the “Intellectual Property/Ownership” and “User Content” provisions apply to all content and features.</p>\n            <p>You represent that You are at least 18 years of age or You have the consent of a parent or legal guardian before you make any purchases.</p>\n            <p>The use of credit cards, payment systems, bank accounts, etc. from third parties without their consent is illegal, and FRVR reserves the right to report such activities to financial institutions or government agencies. In any case, You hold harmless FRVR for the consequences arising out of such illegal use.</p>\n            <p>You acknowledge that payment ID and other information may be requested and stored by FRVR when a purchase is made.</p>\n            <p>Payment providers\' terms & conditions may apply to the relevant transaction. </p>\n\n            \n            <h3>Hosting</h3>\n            <p>By using the hosting feature, You agree to only host one server per User.</p>\n            <p>Hosting more than one server at once may result in a ban and/or loss of Partner status.</p>\n\n            \n            <h3>Krunkies & Goods</h3>\n            <p>The Service may imply the purchase of virtual in-game currency that may require You to pay a fee using "real money" to obtain such (“Krunkies”). Krunkies can never be redeemed for real money, goods, or any other item of monetary value from FRVR or any other party. You understand that You have no right or title in the virtual in-game items or Krunkies.</p>\n            <p>Your purchase of Krunkies is final and is not refundable, exchangeable, or transferable, except at FRVR\'s sole discretion. You may not purchase, sell, or exchange Krunkies outside the Service. The release of Krunkies or any related products is strictly prohibited. Doing so is a violation of the Terms and may result in the termination of Your account with the Service and/or legal action.</p>\n            <p>FRVR retains the right to modify, manage, control, and/or eliminate Krunkies and goods at its sole discretion. Prices and availability of virtual in-game goods are subject to change without notice.</p>\n\n            \n            <h3>Krunker Partner Program</h3>\n            <p>This section outlines the additional Terms & Conditions of adhering to the Krunker Partner Program.</p>\n            <p>Any registered Users with the minimum age of 18 years old or with parents or legal guardian consent can apply for a partner account by filling out the form at the following <a style="color: blue;" href="https://docs.google.com/forms/d/e/1FAIpQLSchiSr6SPBBvh9786jnyKnWNZfko3PN6e6nTox2DCDY89pnJQ/viewform?usp=sf_link" target="_blank">link</a>, where the indicated data must be provided.</p>\n            <p>FRVR reserves the right to approve or reject any application. The Users over the age of 18 or with a parent or legal guardian consent that submitted a valid and complete application will be considered partners according to the Krunker Partner Program (“Partner”). </p>\n            <p>By submitting an application, the Partner agrees to the present Partner Terms. In addition, by submitting an application, the User undertakes to provide FRVR, in case of a billable monthly amount above 75 (seventy-five) USD with a valid invoice. The invoice must include the email or business ID used in the form and follow all the legal requirements set by the country of issuance, and be sent to <a href="mailto:invoices@frvr.com">invoices@frvr.com</a>.</p>\n            <p>In case the Partner doesn\'t provide the information requested in the form and a valid invoice according to these Terms, FRVR reserves the right to not proceed with the payment of any outstanding amount. </p>\n            <p>For verification purposes, the transfer of a small amount via a defined payment provider may be required and will be refunded if revenue is generated. The payment provider is defined by FRVR.</p>\n            <p>Krunker.io offers two Krunker Partner Programs:</p>\n            <ol>\n                <li>Referred Partner: revenue share for a User that uses a Partner link via an individual URL to register in the Krunker Partner Program (“Referred Partner”). The revenue share is calculated based on the cumulated played hours of the Referred User. A minimum threshold is required to be eligible for a payout which is of 100 hours per month. The amounts paid can change depending on the market situation.</li>\n                <li>Games Play Partner: revenue share for Referred Users (see Partner type 1) and revenue share on sales (User purchases) and custom map game plays (“Games Play Partner”).</li>\n            </ol>\n            <p>Games Play Partner revenue share on sales is calculated based on the net revenue generated for sales transactions (see Purchases) which are processed by using a Partner code that links those to a Partner. The usual revenue-share percentage is 20%.</p>\n            <p>Games Play Partner revenue share on game plays is calculated on 1000 game plays (sessions) on a custom map in favor of the custom map creator. The revenue share on game plays can vary depending on market conditions. You cannot use Your own code when making purchases. This will result in a loss of revenue.</p>\n            <p>In addition to the revenue share, the Partners may be entitled to receive a bonus payment (“Bonus”), upon the referral of other Users that effectively join the Krunker Partner Program. The Bonus amount shall be calculated on an ad hoc basis.</p>\n            <p>By joining the Krunker Partner Program, the User is entitled to the following benefits:</p>\n            <ol>\n                <li>The Partner gets a percentage of revenue from Krunker sales on the Partner\'s partner code in the shop, at the discretion of FRVR;</li>\n                <li>The Partner earns money when someone plays the Partner\'s custom games/maps; and</li>\n                <li>Every time a referred player plays the game, the Partner gets a cut of the advertisement revenue in the game.</li>\n            </ol>\n            <p>FRVR cannot guarantee revenue. Payout of revenue share amounts is in USD once per month regarding the revenue share of the previous month, after the correct assessment of the final calculations (payable by FRVR at the beginning of the next month). Amounts less than USD 5.00 can be accumulated and paid as soon as this threshold is reached. Amounts less than USD 1.00 are not paid or accumulated.</p>\n            <p>Reporting is limited to the date range, the number of transactions, sessions, sales amounts, games played, and the amounts in USD.</p>\n            <p>FRVR can close accounts or stop the Service without notice. All funds accumulated and not paid at this time will be paid to the Partner pro-rata. Partners shall be notified by email.</p>\n            <p>It is the Partner\'s obligation to provide valid details that can be used for payouts and communication between both parties.</p>\n            <p>FRVR is not responsible for any incorrect transfer resulting from incorrect information. Any fees on the recipient\'s side are not covered by FRVR.</p>\n            <p>Personal information is stored for the purposes of account validation and payouts, in compliance with FRVR\'s Privacy Policy and applicable law. These will not be shared with any third party other than banking institutions for the purpose of payment processing.</p>\n            <p>Partners under the age of 18 years old must obtain direct consent from their legal guardians to participate in the Krunker Partner Program.</p>\n            <p>If an invalid payout method, or incorrect or incomplete information is provided by You, You understand that payments will not be processed and FRVR has no responsibility.</p>\n            <p>Partners will only receive a payment if a certain payment threshold is exceeded. The threshold can be adjusted without notice by FRVR.</p>\n            <p>If a Partner is found to be falsifying stats or inflating their plays, they will not receive a payout and will be removed from the Partner system and banned. The Partner Status may be revoked without notice at any time.</p>\n\n\n            <h3>Partners Responsibilities</h3>\n            <p>As a Partner, You have a responsibility to uphold the Service reputation.</p>\n            <p>As a Partner, You are by extension a representative of the Service and FRVR brand. If You behave negatively toward our Users and/or the developers, your Partner status will be revoked immediately. If You are found to be frequently representing the Service and FRVR brand negatively, You will lose Your Partner status immediately.</p>\n\n            \n            <h3>Partner Referral Links</h3>\n            <p>If a User is found to be boosting impressions and/or sign-ups, they will lose their Partner status immediately and all earnings are forfeited.</p>\n            <p>If a User\'s account is locked or banned, all revenue generated by this User will not be counted toward the payout.</p>\n            <p>Users who sign-up with a referral link that has previously registered on Krunker.io will not count toward Your payout.</p>\n            <p>Encouraging Users to re-sign up using Your referral link will result in the loss of the Partner Status.</p>\n\n            \n            <h3>Subscriptions</h3>\n            <p>Users can purchase a subscription with Krunkies which will give User access to extended functions and rewards in the Service. Subscriptions can be purchased as a number of days the subscription is valid. Multiple transactions add the days purchased to the already existing subscription end date. Unused subscription days cannot be refunded.</p>\n            <p>FRVR reserves the right to terminate any subscription if the system is not used according to these terms.</p>\n\n            \n            <h3>Tournaments, Competitions & E-sports</h3>\n            <p>The Service supports tournaments with dedicated servers and password-protected and special modes/API access.</p>\n            <p>Generally, the competition regulations of the organizing entity apply. FRVR can enter into agreements with third-party providers and offer compensation for tournament participants. </p>\n            <p>FRVR cannot be held responsible for any processes and decisions made by the organizers. </p>\n            <p>If FRVR is the organizing entity, FRVR competition regulation will apply. </p>\n            <p>FRVR can close User\'s accounts according to these Terms with no right of compensation if the User is in breach of the Terms or the competition regulation. </p>\n            <p>The User participating in the contest might be requested to fill out a form and provide their personal information needed for the processing of the prize payments. In case those information are not provided by the participant, FRVR will reserve the right to not process the payment.</p>\n            <p>The competition\'s terms apply to all participants and organizers of tournaments and competitions held on the Service. All the Users participating in the contest must accept these Terms and the applicable contest regulation and must be of legal age or obtain consent to the participation from a parent or legal guardian.</p>\n\n            \n            <h3>Other Service Providers</h3>\n            <p>Users providing one-time services to FRVR such as, but not limited to, community managers, streamers, maps builders, voiceovers, and thumbnail creators, that implies a one-off payment between 1 (one) USD and 750 USD (seven hundred and fifty) as compensation for such service, must comply with the following requirements:</p>\n            <ol>\n                <li>Any Users with the minimum age of 18 years old or with parents or legal guardian consent can provide the services described in this section, by filling out the form at the following <a style="color: blue;" href="https://docs.google.com/forms/d/e/1FAIpQLSfrbIpFAaAOmi-Iub1cbEKUDrj2mMRG2hnA66Mzfr1PxpQFew/viewform" target="_blank">link</a>, where the indicated data must be provided.</li>\n                <li>By submitting the form, the service provider agrees to these Terms. In addition, by submitting the form, the service provider undertakes to provide FRVR with a valid invoice. The invoice must include the email or business ID used in the form and follow all the legal requirements set by the country of issuance, and be sent to invoices@frvr.com.</li>\n            </ol>\n            <p>In case of requirements 1. and 2. above are not met, FRVR reserves the right to not process the payment of the amount due to the service provider. </p>\n            <p>The payment provider is defined by FRVR.</p>\n            <p>In case the service provided is a recurring service or the amount due for the one-time service is above the threshold of 750 USD (seven hundred and fifty dollars), a contract must be concluded between the service provider and FRVR and other conditions will apply, as indicated by FRVR from time to time.</p>\n            \n            <h3>Third-Party Vouchers & Benefits</h3>\n            <p>The Service can include the issuance of vouchers for virtual or physical products that can be obtained within the Service.</p>\n            <p>These vouchers can be redeemed on the third parties\' websites where the terms and conditions of these third-party providers apply. FRVR is not responsible for the delivery, or any complaint related to the products from these third parties. Vouchers cannot be converted to money or refunded. The User is fully responsible to keep voucher codes received safely. Voucher codes cannot be resent.</p>\n            \n            <h3>Rules of Conduct/Usage</h3>\n            <p>The Service may provide communication channels such as forums, communities, or chat areas ("Communication Channels") designed to enable You to communicate with other Service Users. FRVR has no obligation to monitor these communication channels but it may do so and reserves the right to review materials posted to the Communication Channels and to remove any materials, at any time, with or without notice for any reason, at its sole discretion. FRVR may also terminate or suspend Your access to any Communication Channels at any time, without notice, for any reason. You acknowledge that chats, postings, or materials posted by Users on the Communication Channels are neither endorsed nor controlled by FRVR, and these communications should not be considered reviewed or approved by FRVR. FRVR will not under any circumstances be liable for any activity within Communication Channels.</p>\n            <p>You agree that all Your communications with the Communication Channels are public, and thus You have no expectation of privacy regarding Your use of the Communication Channels. FRVR is not responsible for information that You choose to share on the Communication Channels, or for the actions of other Users.</p>\n            <p>You agree that Your use of the Service shall be lawful and that You will comply with the usage rules. In furtherance of the foregoing, and as an example and not as a limitation, You agree not to use the Service in order to practice any of the following actions, which may result in the immediate suspension or termination of the User account and removal of the User Content:</p>\n            <ul>\n                <li>post, upload, transmit, or otherwise disseminate information that shows nudity or is, in any way, obscene, indecent, vulgar, inappropriate, pornographic, sexual, or otherwise objectionable;</li>\n                <li>post, upload, transmit or otherwise disseminate any content that endorses gambling;</li>\n                <li>post, upload, transmit or otherwise disseminate any content that may be viewed as scamming or modifying the Service in any way, cheat baiting, using exploits or cheats, abusive chat or results in the involuntary loss of funds;</li>\n                <li>offering boosting as a Service, having Your account boosted or promote any materials that are breaking the Terms in any way; account sharing; </li>\n                <li>defame, libel, ridicule, mock, stalk, threaten, harass, intimidate or abuse anyone, hateful, racially, ethnically or, in a reasonable person\'s view, otherwise offensive or objectionable;</li>\n                <li>upload or transmit (or attempt to upload or transmit) files that contain viruses, Trojan horses, worms, time bombs, cancelbots, corrupted files or data, or any other similar software or programs that may damage the operation of the Service or other Users\' computers;</li>\n                <li>violate the contractual, personal, intellectual property or other rights of any party including using, uploading, transmitting, distributing, or otherwise making available any information made available through the Service in any manner that infringes any copyright, trademark, patent, trade secret, or another right of any party (including rights of privacy or publicity);</li>\n                <li>attempt to obtain passwords or other private information from other Users;</li>\n                <li>improperly use support channels or complaint buttons to make false reports to FRVR;</li>\n                <li>develop, distribute, or publicly inform other Users of “auto” software programs, “macro” software programs, or other "cheat utility" software programs or applications in violation of the applicable license agreements;</li>\n                <li>exploit, distribute, or publicly inform other Users of any game error, miscue, or bug which gives an unintended advantage:</li>\n                <li>violate any applicable laws or regulations, or promote or encourage any illegal activity including, but not limited to, hacking, cracking or distribution of counterfeit software, or cheats or hacks for the Service.</li>\n            </ul>\n\n            \n            <h3>Disclaimer of Warranty; Limitation of Liability</h3>\n            <p>You agree that Your use of the Service shall be at Your sole risk. To the fullest extent permitted by law, FRVR, its officers, directors, employees, and agents disclaim all warranties, express or implied, in connection with the Service and Your use thereof including implied warranties of title, merchantability, fitness for a particular purpose or non-infringement, accuracy, authority, completeness, usefulness, and timeliness. FRVR makes no warranties or representations about the accuracy or completeness of the content of the Service of the content of any sites linked to the Service and assumes no liability or responsibility for any (i) loss of Krunkies or any other in-game goods arising out of any whatsoever event; (ii) errors, mistakes, or inaccuracies of content, (iii) personal injury or property damage, of any nature whatsoever, resulting from Your access to and use of the Service, (iv) any unauthorized access to or use of our secure servers and/or any and all personal information and/or financial information stored therein, (v) any interruption or cessation of transmission to or from the Service, (vi) any bugs, viruses, trojan horses, or the like which may be transmitted to or through the Service by any third party, and/or (vii) any errors or omissions in any content or for any loss or damage of any kind incurred as a result of the use of any content posted, emailed, transmitted, or otherwise made available via the Service.</p>\n            <p>In no event will FRVR, its directors, officers, agents, contractors, partners, and employees, be liable to You or any third person for any special, direct, indirect, incidental, special, punitive, or consequential damages whatsoever including any lost profits or lost data arising from Your use of the Service or other materials on, accessed through or downloaded from the Service, whether based on warranty, contract, tort, or any other legal theory, and whether or not FRVR has been advised of the possibility of these damages. The foregoing limitation of liability shall apply to the fullest extent permitted by law in the applicable jurisdiction. You specifically acknowledge that FRVR shall not be liable for User submissions or the defamatory, offensive, or illegal conduct of any third party and that the risk of harm or damage from the foregoing rests entirely with You. You agree to indemnify and hold FRVR, and each of its directors, officers, agents, contractors, partners, and employees, harmless from and against any loss, liability, claim, demand, damages, costs, and expenses, including reasonable attorney\'s fees, arising out of or in connection with (i) Your use of and access to the Service; (ii) Your violation of any term of these Terms; (iii) Your violation of any third party right, including without limitation any copyright, property, or privacy right; (iv) any claim that one of Your User submissions caused damage to a third party; or (v) any Content You post or share on or through the Service.</p>\n\n            \n            <h3>General</h3>\n            <p>By visiting or using the Service, You agree that the laws of Malta, without regard to principles of conflict of laws and regardless of Your location, will govern these Terms and any dispute of any sort that might arise between You and FRVR. Any claim or dispute between You and FRVR that arises in whole or in part from Your use of the Service shall be decided exclusively by a court of competent jurisdiction located in Malta, and You hereby consent to and waive all defenses of lack of personal jurisdiction and forum non-conveniens with respect to venue and jurisdiction in Malta. FRVR reserves the right to amend these Terms at any time and without notice, and it is Your responsibility to review these Terms for any changes. Your use of FRVR following any amendment of these Terms will signify Your assent to and acceptance of its revised terms. YOU AND FRVR AGREE THAT ANY CAUSE OF ACTION ARISING OUT OF OR RELATED TO THE SERVICE MUST COMMENCE WITHIN ONE (1) YEAR AFTER THE CAUSE OF ACTION ACCRUES. OTHERWISE, SUCH CAUSE OF ACTION IS PERMANENTLY BARRED.</p>\n\n            <h3>Changes to these Terms </h3>\n            <p>Any changes to these Terms will be posted on this page and the User will be asked to check and confirm or decline these Terms before playing the game.</p></p>\n\n            <p style="font-size: 12px;">Last modified on May 3, 2023</p>\n        </inner></content>\n\n                  ')])))
          }
      };
      const be = {
          view: function() {
              return document.title = "FRVR legal",
              t()("div.container.pt-16.pb-32", t()("div.row", t()("div.col-12", t().trust(`\n                        <content><inner>\n                            ${"en" === R.language ? '\n    <a name="top"><h1>Legal</h1></a>\n    <p>FRVR Limited (VAT MT24548624) is a Maltese limited liability company located in Valletta, Malta.</p>\n    <p>FRVR&reg; is a registered trademark of FRVR Limited.</p>\n    <p>\n        FRVR Limited<br />\n        61 Saint Paul Street,<br />\n        Valletta VLT 1212<br />\n        Malta<br /><br />\n        Business ID C82019<br />\n        VAT ID MT24548624\n    </p>\n    <p>For questions, support and legal enquiries please contact legal@frvr.com</p>\n\n    <h2>Table of contents</h2>\n    <p>\n        <ul>\n            <li><a href="#PrivacyPolicy">FRVR: Privacy Policy</a></li>\n            <li><a href="#gdpr">FRVR: GDPR Compliance</a></li>\n            <li><a href="#TermsofService">FRVR: Terms of Service</a></li>\n        </ul>\n    </p>\n\n    <hr/>\n\n    <p>The original version of the Privacy Notice and T&C is the English version. In case of contradiction or any interpretative doubt, the original version supersedes.</p>\n\n    <a name="PrivacyPolicy"><h2>FRVR: Privacy Policy</h2></a>\n    <p>FRVR Ltd (“FRVR” or “we”) is dedicated to protecting the privacy rights of our online users (“users” or “you”). This Online Privacy Policy (“Privacy Policy”) has been crafted to inform you as to the ways we collect, store, use, and manage the information you provide in connection with any FRVR game or application (“Service”). Please note that the scope of this Privacy Policy is limited to only information collected from FRVR through use of the Service.</p>\n    <p>By using the Service, you are agreeing to the collection and use of your personal information as outlined in this Privacy Policy. We may amend the Privacy Policy from time to time, and we encourage you to consult the Privacy Policy regularly for changes.</p>\n    \n    <h3>Information Collected and Used</h3>\n    <p>FRVR is <a href="#gdpr">GDPR compliant</a></p>\n    <p>FRVR\'s primary objective in collecting user information is to provide and enhance the Service and to enable users to easily navigate and enjoy the Service.</p>\n    <p>When you install any of the FRVR games or applications, we may collect and record the information you provide us voluntarily through services such as www.facebook.com (“Facebook”) in accordance with the policies and terms of Facebook.</p>\n    <p>The types of personal information collected in accordance with the activities listed above may vary depending on the activity. This “personal information” is defined as information about you that can be used to contact or identify you. Personal information may include: (1) your name, (2) Facebook user identification number, (3) or email address. Additionally, we may acquire information from you through (1) your access and participation in message boards on the Service (2) your email of a question to our customer support or (3) your purchase of a virtual product of any type. Please note that because a third party site manages the purchases of virtual goods offered by the Service, we do not have access to your credit card details and billing information.</p>\n    <p>FRVR may also invite you to share non-personal information about yourself which may include but is not limited to: (1) your age or date of birth; (2) your gender; (3) information about the hardware you may own; (4) your favorite websites, friend information and fan pages (collectively referred to as “non-personal information”). If non-personal information is collected for an activity that also requires personal information, FRVR may combine your non-personal information with your personal information in an attempt to provide you with a better user experience, to improve the quality and value of the Services and to analyze how our Service is used.</p>\n    <p>The Service will also record game play information such as your high scores or game session duration.</p>\n    <p>In addition to information collected as described above, you may choose to share additional information about yourself throughout the Service, such as in games or on message boards. Any action you perform with other players are considered public, and are your sole discretion.</p>\n    <p>Finally, any time you access the Service, we may collect aggregate information including but not limited to internet protocol addresses, browser type, browser language, referring / exit pages and URLs, platform type, number of clicks, domain names, landing pages, pages viewed and the order of those pages, the amount of time spent on particular pages, and the date and time of this activity. We use this information to better tailor the Service to your interests, to provide you more efficient customer support, and to overall enhance the Service.</p>\n    <p>In all cases of data access and collection, the information you provide will not be disclosed, rented, leased, loaned, sold, or otherwise voluntarily distributed to unaffiliated third parties and will be used solely for the purpose of providing you with and improving the Service.</p>\n\n    <h3>Other Disclosure of Your Personal Information</h3>\n    <p>You understand and agree that we may be required to disclose any personal information if required to do so by law or in the good faith belief that such disclosure is reasonably necessary to avoid liability, to comply with legal process, including but not limited to a search warrant, subpoena, statute, or court order, or to protect our rights and property, or that of the public. Note that FRVR is not required to question or contest the validity of any search warrant, subpoena or other similar governmental request that FRVR may receive.</p>\n    <p>Additionally, in the event of a merger, acquisition, reorganization, bankruptcy, or other similar event, customer information may be transferred to FRVR’s successor or assignee, if permitted by and done in accordance with applicable law.</p>\n\n    <h3><a name="cookies">Cookies</a></h3>\n    <p>A cookie is a small data file that we transfer to your computer’s hard disk, generally to quickly identify a user’s computer and to “remember” things about the user’s visit, such as your preferences or a user name and password. The Service sends cookies to your computer when you access or view content of a FRVR service. Information contained in a cookie may be linked to your personal information for purposes such as improving the quality of our service, tailoring recommendations to your interests, and making the Service easier to use. You can disable cookies at any time, although you may not be able to access or use features of the Service.</p>\n    <p>If you wish to return your browser to a cookie-free state for this domain, find your browser in the list below and follow the instructions.</p>\n\n    <dl>\n        <dt>Google Chrome:</dt>\n        <dd><a href="https://support.google.com/accounts/answer/32050?co=GENIE.Platform%3DDesktop&amp;hl=en">https://support.google.com/accounts/answer/32050?co=GENIE.Platform%3DDesktop&hl=en</a></dd>\n        <dt>Firefox:</dt>\n        <dd><a href="https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored">https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored</a></dd>\n        <dt>Internet Explorer:</dt>\n        <dd><a href="https://support.microsoft.com/en-us/help/17442/windows-internet-explorer-delete-manage-cookies">https://support.microsoft.com/en-us/help/17442/windows-internet-explorer-delete-manage-cookies</a></dd>\n        <dt>Internet Explorer Edge:</dt>\n        <dd><a href="https://privacy.microsoft.com/en-us/windows-10-microsoft-edge-and-privacy">https://privacy.microsoft.com/en-us/windows-10-microsoft-edge-and-privacy</a></dd>\n        <dt>Safari (Mobile):</dt>\n        <dd><a href="https://support.apple.com/en-us/HT201265">https://support.apple.com/en-us/HT201265</a></dd>\n        <dt>Safari:</dt>\n        <dd><a href="https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac">https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac</a></dd>\n    </dl>\n\n    <h3><a name="links">Links</a></h3>\n    <p>The Service may contain links to other websites. The fact that the Service links to a website or presents a banner ad or other type of advertisement does not mean that FRVR endorses or authorizes that third party, nor is it a representation of our affiliation with that third party. FRVR is in no way responsible for the privacy policies of these other websites to which you choose to access from the Service. Please be sure to read the privacy policies of those websites when exiting the Service.</p>\n\n    <h3>Third Party Platform</h3>\n    <p>When you use or connect to a FRVR website or download a FRVR mobile app by or through a Third Party Platform, such as Facebook or other social networking site, you allow us to access and/or collect certain information from your Third Party Platform profile/account (such as your Facebook account) or via any cookies placed on your device by such Third Party Platform as permitted by the terms of the agreement and your privacy settings with the Third Party Platform. We will share such information with the Third Party Platform for their use as permitted by the terms of the agreement and your privacy setting with the Third Party Platform.</p>\n    <p>We will share some of the information we collect from you upon install of the mobile app with vendors and other service providers who are engaged by or working with us in connection with the operation of the services we provide to you and/or for analytics purposes which may require the reproduction and display of such information in an aggregated and anonymized manner such that will not in any way identify you.</p>\n\n    <h3>Changing or Deleting Your Information</h3>\n    <p>You may review, update, correct or delete any personal information by changing the applicable information by changing the applicable information in your Facebook profile page. If you completely delete all this information, your account may become deactivated. If you would like us to delete your record in our system, please contact us and we will attempt to accommodate your request if we are not legally obligated to retain the record.</p>\n\n    <h3>Security</h3>\n    <p>We have put in place reasonable technical and organizational measures designed to secure your personal information from accidental loss and from unauthorized access, use, alteration or disclosure. However, we cannot guarantee that unauthorized third parties will never be able to overcome those measures or use your personal information for improper purposes. Also please note that email and messaging systems are not considered secure, so we discourage you from sending us personal information through these mediums.</p>\n\n    <h3>Policy Regarding Children</h3>\n    <p>The Service is not geared toward children under the age of 13 and we do not knowingly collect personal information from children under the age of 13. If we learn that a child under 13 has provided us with personal information we will delete such information from our files as quickly as possible.</p>\n\n    <hr/>\n\n    <a name="gdpr"><h2>GDPR Compliance Statement</h2></a>\n    <p>The General Data Protection Regulation (GDPR) is effective from 25th May 2018. The GDPR aims to strengthen the security and protection of personal data in the EU and will replace the European Privacy Directive and national legislations accordingly.</p>\n    <p>FRVR understands the importance of customer data and welcomes the arrival of the GDPR. At FRVR Limited, we believe that customers are the most important part of our business and the success of our company builds on the trust that our customers, employees and other stakeholders have in our ability to deliver premier quality including the protection of personal information.</p>\n    <p>FRVR Limited services complies with all applicable parts of the GDPR.</p>\n    <p>Any consent you may give or choose to withhold in relation to the GDPR shall apply to all services (games and website) provided by FRVR Limited as part of the frvr.com domain.</p>\n    <p>The following are key aspects of the GDPR, and how it relates to FRVR Limited.</p>\n\n    <a name="whatisgdpr"><h3>What is the GDPR</h3></a></h3>\n    <p>The GDPR is the General Data Protection Regulation established by the European Union.</p>\n    <p>At its core, GDPR is a new set of rules designed to give EU citizens more control over their personal data. It aims to simplify the regulatory environment for business so both citizens and businesses in the European Union can fully benefit from the digital economy.</p>\n    <p>Follows EU Data Protection Directive (Directive 95/46/EC). For more information, please see eugdpr.org. </p>\n\n    <a name="keyaspects"><h3>Key Aspects of GDPR</h3></a></h3>\n    <p>There are 4 aspects to the GDPR that FRVR Limited has considered as part of our GDPR compliance:</p>\n\n    <h4>The right to data portability</h4>\n    <p>Individuals have the right to a copy of all the personal data that controllers have regarding him or her. It also must be provided in a way that facilities reuse.</p>\n    <ul>\n        <li>At any time, users may request any date we store on their behalf by contacting us via email on <a href="mailto:gdpr@frvr.com" target="_blank">gdpr@frvr.com</a></li>\n    </ul>\n\n\n    <h4>The right to be forgotten</h4>\n    <p>This gives individuals the right to have certain personal data deleted so third parties can no longer trace them. FRVR Limited does not store any personal data, only authentication tokens to Facebook. Those tokens can be invalidated by removing the game app according to these instructions by Facebook.</p>\n    <p>Since we currently do not store any PII directly, and the only way to link game state and analytics data collected with a particular user is via their Facebook Access Token, simply removing the FRVR game app from the users’ Facebook profile will anonymize any information we hold. This will happen instantly, the moment the user removes our app.</p>\n\n    <h4>Privacy by Design</h4>\n    <p>This helps to facilitate the inclusions of policies, guidelines, and work instructions related to data protection in the earliest stages of projects including personal data.</p>\n    <ul>\n        <li>This aspect does not apply to FRVR Limited.</li>\n    </ul>\n\n    <h4>Data Breach Notifications</h4>\n    <p>Controllers must report personal data breaches to the relevant supervisory authority within 72 hours after having become aware of it. If there is an high risk to the rights and freedoms of data subjects, they must also notify the data subjects.</p>\n    <p>FRVR Limited has an escalated process in order to ensure the security of user data. Information about whether or not user data has been part of a breach is available upon request.</p>\n\n    <a name="gdprcompliance"><h3>GDPR Compliance for FRVR</h3></a></h3>\n    <p>To Understand the position of FRVR in the compliance of GDPR, it is important to understand the actors. These actors are:</p>\n    <dl>\n        <dt>Data Controller</dt>\n        <dd>is the individual or the legal person who controls and is responsible for the keeping and use of personal information on a computer or in structured manual files.</dd>\n        <dt>Data Processor</dt>\n        <dd>in relation to personal data, means any person (other than an employee of the data controller) who processes the data on behalf of the data controller. “processing”, in relation to information or data means. obtaining, recording or holding the information or data.</dd>\n        <dt>Data Subject</dt>\n        <dd>means an individual who is the subject of personal data. In other words, the data subject is the individual whom particular personal data is about.</dd>\n    </dl>\n\n    <a name="gdprandfrvr"><h3>GDPR and FRVR Limited</h3></a></h3>\n    <p>The following are key elements of our GDPR Compliance:</p>\n    <p>We do not process personal data on behalf of the Customer and we don\'t have access to any personal data in our customer’s systems (Customer Personal Data). Moreover, FRVR is not able to monitor the processing of Customer Personal Data in our customer’s systems.</p>\n\n    <h4>What personal data do we collect/store?</h4>\n    <p>At FRVR we collect two types of data on our users; passive and active. Passive collection is the data that is collected when users play games, whether on their mobile device or the web. This data is collected using Google Analytics or similar and contains the following information:</p>\n    <ul>\n        <li>IP address</li>\n        <li>approximate geographical location</li>\n        <li>session duration</li>\n        <li>in-game activity</li>\n    </ul>\n\n    <p>This data does not contain any personally identifying information. Our active data collection is currently limited to high scores and game information, such as coins collected. We allow users to log in using their Facebook account, and from their Facebook account we store the following:</p>\n    <ul>\n        <li>User Access Token: we simply use this token to identify a user from one play session to the next. We do not gain access to any details about the user.</li>\n    </ul>\n    <p>As such we don\'t store any data that can be used to identify and track an individual. The user access token can be invalidated at any time by removing our app from the users Facebook profile.</p>\n\n    <h4>How does FRVR Address GDPR</h4>\n    <dl>\n        <dt>Data Access Control</dt>\n        <dd>The controller shall implement appropriate technical and organizational measures for ensuring that by default, only personal data which are necessary for each specific purpose of the processing are processed.</dd>\n        <dt>Monitoring of Access Activities</dt>\n        <dd>Each controller and where applicable, the controllers representative, shall maintain a record of processing activities under its responsibilities</dd>\n        <dt>Data Encryption</dt>\n        <dd>Organizations must implement appropriate technical and organizational measures to ensure a level of security appropriate to the risk, including the pseudonymisation and encryption of personal data</dd>\n        <dt>Strong Compliance Framework</dt>\n        <dd>Appropriate technical and organizational measures may need to include “the ability to ensure the ongoing confidentiality, integrity, availability and resilience of the processing systems and services</dd>\n    </dl>\n\n    <a name="questions"><h3>Questions?</h3></a></h3>\n    <p>Any FRVR Limited GDPR related questions and any data subject requests can be addressed to: gdpr@frvr.com.</p>\n\n    <a name="faq"><h3>FAQ</h3></a></h3>\n    <dl>\n        <dt>What are the requirements under GDPR for FRVR?</dt>\n        <dd><ul>\n            <li>Privacy measures should be implemented in the design phase</li>\n            <li>Right to be forgotten</li>\n            <li>Data portability</li>\n        </ul></dd>\n        <dt>What information is covered by GDPR?</dt>\n        <dd><ul>\n            <li>Any information relating to an identified or identifiable natural person</li>\n            <li>Any healthcare and sensitive data</li>\n        </ul></dd>\n        <dt>When does GDPR come into effect?</dt>\n        <dd><ul>\n            <li>May 25, 2018</li>\n        </ul></dd>\n        <dt>Which customers are affected by the GDPR?</dt>\n        <dd><ul>\n            <li>Applies to controllers and processors who are established in the European Union or those who offer goods and services to data subjects in the EU</li>\n            <li>Entities that monitor behavior of data subjects in the EU</li>\n        </ul></dd>\n        <dt>What type of actor is FRVR?</dt>\n        <dd><ul>\n            <li>For information collected under this Privacy Policy, the data controller is FRVR Limited. Our Data Protection Officer can be contacted here: <a href="mailto:gdpr@frvr.com" target="_blank">gdpr@frvr.com</a>.</li>\n        </ul></dd>\n    </dl>\n\n\n    <a name="TermsofService"><h2>FRVR: Terms of Service</h2></a>\n    <p>These Terms of Service (“Terms”) are a legal agreement between FRVR Ltd. (“FRVR” or “we”) and you (“you”). By using or accessing any FRVR game or application (“Service”) you agree to be bound by these Terms.</p>\n    <p>By accessing or using the Service, you agree that you have read, understood, and accept to be bound by the Terms.</p>\n    <p>FRVR reserves the right, in its sole discretion, modify or revise these Terms at any time, and you agree to be bound by such modifications or revisions.</p>\n    <p>If you do not agree to the Terms, do not use the Service.</p>\n    <p>Users are responsible for periodically viewing the Terms. Your continued use of the Service after a change or update has been made will constitute your acceptance to the revised Terms.</p>\n    <p>If you do not agree to the Terms your only remedy is to discontinue your use of the Service and cancel any accounts you have made using the Service.</p>\n    <p>If you violate the Terms, FRVR reserves the right to issue you a warning regarding the violation or immediately terminate or suspend any or all accounts you have created using the Service.</p>\n    <p>You agree that FRVR need not provide you notice before terminating or suspending your account(s), but it may do so.</p>\n    <p>FRVR reserves the right to refuse any user access to the Services without notice for any reason, including, but not limited to, a violation of the Terms.</p>\n    <p>You agree that FRVR may discontinue the Service or change the content of the Service at any time, for any reason, with or without notice to you, without liability.</p>\n    <p>You represent that you are 13 years old or older. If you are between the ages of 13 and 18, you represent that your legal guardian has reviewed and agrees to the Terms.</p>\n\n    <h3>Intellectual Property/Ownership</h3>\n    <p>All materials that are part of the Service (including, but not limited to, designs, text, graphics, pictures, video, information, applications, software, music, sound and other files, and their selection and arrangement) are protected by law from unauthorized use.</p>\n    <p>The entire contents of the Service are copyrighted under the Danish copyright laws and/or similar laws of other jurisdictions.</p>\n    <p>You agree that no materials that are part of the Service may be modified, copied, distributed, framed, reproduced, republished, downloaded, scraped, displayed, posted, transmitted, or sold in any form or by any means, in whole or in part, or otherwise exploited without FRVR’s express prior written permission, except that the foregoing does not apply to your own User Content (as defined below) that you legally post on the Site.</p>\n    <p>All other uses of copyrighted material, including any derivative use, requires express prior written permission from FRVR. Any reproduction or redistribution of materials not in accordance with these Terms is expressly prohibited and may result in severe civil and criminal penalties.</p>\n    <p>FRVR and/or its licensors remain the owners of right, title, and interest, including copyrights and other intellectual property rights, in and to all materials posted on the Services by FRVR. You acknowledge that you do not acquire any ownership rights by using the Service or by accessing any materials posted on the Service by FRVR, or any derivative works thereof.</p>\n    <p>FRVR grants you a personal, non-exclusive, non-transferable, revocable, limited scope license to use the Service solely for the purpose of viewing and using the applicable Services and for no other purpose whatsoever. Your license to use the Services is limited by these Terms.</p>\n\n    <h3>User Content</h3>\n    <p>You agree that you are willingly publishing the content on the Service using technology and tools provided by FRVR. You understand and agree that you may not distribute, sell, transfer or license this content and/or application in any manner, in any country, or on any social network or other medium without the explicit written permission of FRVR. You grant FRVR the right to act as an agent on your behalf as operator of the application.</p>\n    <p>Any data, text, graphics, photographs and their selection and arrangement, (hereinafter "User Content") uploaded to the Service are subject, whether in whole or in part, to unlimited commercial, non-commercial and/or promotional use by FRVR. Text, graphics, and photographs are uploaded by you and are the sole responsibility of the person from whom the User Content originated. Thus, users are responsible, and FRVR is not responsible for any files users upload, post, or otherwise make available. FRVR may or may not regulate User Content and does not guarantee the accuracy, quality, or integrity of any User Content posted via the FRVR service. By using FRVR you acknowledge and accept that you may be exposed to material you find offensive or objectionable. You agree that FRVR will not under any circumstances be liable for any User Content, including, but not limited to, errors in any User Content, or any loss or damage incurred by use of the User Content.</p>\n    <p>FRVR reserves the right to remove and permanently delete any User Content from the Service with or without notice.</p>\n\n    <h3>Virtual Currencies & Goods</h3>\n    <p>The Service may include an opportunity to purchase virtual, in-game currency ("Virtual Currency") that may require you to pay a fee using "real money" to obtain the Virtual Currency. Virtual Currency can never be redeemed for real money, goods, or any other item of monetary value from FRVR or any other party. You understand that you have no right or title in the virtual in game items or Virtual Currency.</p>\n    <p>Your purchase of Virtual Currency is final and is not refundable, exchangeable, transferable, except in FRVR sole discretion. You may not purchase, sell, or exchange Virtual Currency outside the Service. Doing so is a violation of the Terms and may result in termination of your account with the Service and/or legal action.</p>\n    <p>FRVR retains the right to modify, manage, control and/or eliminate Virtual Currency at its sole discretion. Prices and availability of virtual in game goods are subject to change without notice.</p>\n\n\n    <h3>Rules of Conduct/Usage</h3>\n    <p>The FRVR Service may provide communication channels such as forums, communities, or chat areas ("Communication Channels") designed to enable you to communicate with other Service users. FRVR has no obligation to monitor these communication channels but it may do so and reserves the right to review materials posted to the Communication Channels and to remove any materials, at any time, with or without notice for any reason, at its sole discretion. FRVR may also terminate or suspend your access to any Communication Channels at any time, without notice, for any reason. You acknowledge that chats, postings, or materials posted by users on the Communication Channels are neither endorsed nor controlled by FRVR, and these communications should not be considered reviewed or approved by FRVR. FRVR will not under any circumstances be liable for any activity within Communication Channels.</p>\n    <p>You agree that all your communications with the Communication Channels are public, and thus you have no expectation of privacy regarding your use of the Communication Channels. FRVR is not responsible for information that you choose to share on the Communication Channels, or for the actions of other users.</p>\n    <p>You agree that your use of the Service shall be lawful and that you will comply with the usage rules. In furtherance of the foregoing, and as an example and not as a limitation, you agree not to use the Service in order to:</p>\n\n    <ul>\n        <li>post, upload, transmit or otherwise disseminate information that is obscene, indecent, vulgar, pornographic, sexual or otherwise objectionable</li>\n        <li>defame, libel, ridicule, mock, stalk, threaten, harass, intimidate or abuse anyone, hateful, racially, ethnically or, in a reasonable person\'s view, otherwise offensive or objectionable</li>\n        <li>upload or transmit (or attempt to upload or transmit) files that contain viruses, Trojan horses, worms, time bombs, cancelbots, corrupted files or data, or any other similar software or programs that may damage the operation of the Service or other users\' computers</li>\n        <li>violate the contractual, personal, intellectual property or other rights of any party including using, uploading, transmitting, distributing, or otherwise making available any information made available through the Service in any manner that infringes any copyright, trademark, patent, trade secret, or other right of any party (including rights of privacy or publicity)</li>\n        <li>attempt to obtain passwords or other private information from other members</li>\n        <li>improperly use support channels or complaint buttons to make false reports to FRVR</li>\n        <li>develop, distribute, or publicly inform other members of “auto” software programs, “macro” software programs or other "cheat utility" software program or applications in violation of the applicable License Agreements</li>\n        <li>exploit, distribute or publicly inform other members of any game error, miscue or bug which gives an unintended advantage</li>\n        <li>violate any applicable laws or regulations, or promote or encourage any illegal activity including, but not limited to, hacking, cracking or distribution of counterfeit software, or cheats or hacks for the Service</li>\n    </ul>\n    \n    <h3>Disclaimer of Warranty; Limitation of Liability</h3>\n    <p>You agree that your use of the Service shall be at your sole risk. To the fullest extent permitted by law, FRVR, its officers, directors, employees, and agents disclaim all warranties, express or implied, in connection with the service and your use thereof including implied warranties of title, merchantability, fitness for a particular purpose or non-infringement, accuracy, authority, completeness, usefulness, and timeliness. FRVR makes no warranties or representations about the accuracy or completeness of the content of the Service of the content of any sites linked to the Service and assumes no liability or responsibility for any (i) errors, mistakes, or inaccuracies of content, (ii) personal injury or property damage, of any nature whatsoever, resulting from your access to and use of the Service, (iii) any unauthorized access to or use of our secure servers and/or any and all personal information and/or financial information stored therein, (iv) any interruption or cessation of transmission to or from the Service, (v) any bugs, viruses, trojan horses, or the like which may be transmitted to or through the Service by any third party, and/or (vi) any errors or omissions in any content or for any loss or damage of any kind incurred as a result of the use of any content posted, emailed, transmitted, or otherwise made available via the Service.</p>\n    <p>In no event will FRVR, its directors, officers, agents, contractors, partners and employees, be liable to you or any third person for any special, direct, indirect, incidental, special, punitive, or consequential damages whatsoever including any lost profits or lost data arising from your use of the Service or other materials on, accessed through or downloaded from the Service, whether based on warranty, contract, tort, or any other legal theory, and whether or not FRVR has been advised of the possibility of these damages. The foregoing limitation of liability shall apply to the fullest extent permitted by law in the applicable jurisdiction. You specifically acknowledge that FRVR shall not be liable for user submissions or the defamatory, offensive, or illegal conduct of any third party and that the risk of harm or damage from the foregoing rests entirely with you. You agree to indemnify and hold FRVR, and each of its directors, officers, agents, contractors, partners and employees, harmless from and against any loss, liability, claim, demand, damages, costs and expenses, including reasonable attorney\'s fees, arising out of or in connection with (i) your use of and access to the Service; (ii) your violation of any term of these Terms of Service; (iii) your violation of any third party right, including without limitation any copyright, property, or privacy right; (iv) any claim that one of your User Submissions caused damage to a third party; or (v) any Content you post or share on or through the Service.</p>\n    \n    <h3>General</h3>\n    <p>By visiting or using the the Service, you agree that the laws of the Malta, without regard to principles of conflict of laws and regardless of your location, will govern these Terms of Service and any dispute of any sort that might arise between you and FRVR. Any claim or dispute between you and FRVR that arises in whole or in part from your use of the Service shall be decided exclusively by a court of competent jurisdiction located in Copenhagen, Denmark, and you hereby consent to, and waive all defenses of lack of personal jurisdiction and forum non conveniens with respect to venue and jurisdiction in the of Copenhagen, Denmark. FRVR reserves the right to amend these Terms of Service at any time and without notice, and it is your responsibility to review these Terms of Service for any changes. Your use of FRVR following any amendment of these Terms of Service will signify your assent to and acceptance of its revised terms. YOU AND FRVR AGREE THAT ANY CAUSE OF ACTION ARISING OUT OF OR RELATED TO THE SERVICE MUST COMMENCE WITHIN ONE (1) YEAR AFTER THE CAUSE OF ACTION ACCRUES. OTHERWISE, SUCH CAUSE OF ACTION IS PERMANENTLY BARRED.</p>\n\n    <p style="font-size: 12px;">Last modified on May 3, 2023</p>\n' : '\n    <h1>법적고지</h1>\n    <p>FRVR Limited(VAT MT24548624)는 몰타의 나사르에 위치한 몰타 유한책임회사입니다.</p>\n    <p>FRVR® 은 FRVR Limited의 등록 상표입니다.</p>\n\n    <p>\n        FRVR Limited<br />\n        61 Saint Paul Street,<br />\n        Valletta VLT 1212<br />\n        Malta<br />\n        비즈니스 ID C82019<br />\n        VAT ID MT24548624\n    </p>\n    <p>질문이 있거나 지원이 필요한 경우 그리고 법적인 질의가 있는 경우 legal@frvr.com으로 연락하십시오</p>\n\n    <h2>목차</h2>\n    <p>\n        <ul>\n            <li>FRVR: 개인정보 보호정책</li>\n            <li>FRVR: GDPR 컴플라이언스</li>\n            <li>FRVR: 서비스 약관</li>\n        </ul>\n    </p>\n        \n    <hr/>\n\n    <p>개인정보보호 통지와 T&C의 원본 버전은 영어 버전입니다. 모순되거나 해석상 모호한 경우, 원본 버전이 우선합니다.</p>\n\n    <h3>FRVR: 개인정보 보호정책</h3>\n    <p>FRVR Ltd (“FRVR” 또는 “당사”)는 당사 온라인 사용자(“사용자” 또는 “귀하”)의 개인정보보호 권리를 보호하기 위해 노력합니다. 이 온라인 개인정보 보호정책("개인정보 보호정책")은 임의의 FRVR 게임 또는 앱("서비스")과 연계하여 귀하가 제공하는 정보를 수집, 보관, 사용 및 관리하는 방법에 관하여 귀하에게 알려드리고자 만들어졌습니다. 이 개인정보 보호정책의 범위는 서비스 사용을 통하여 FRVR로부터 수집되는 정보로만 제한됩니다.</p>\n    <p>이 서비스를 사용함으로써, 귀하는 이 개인정보 보호정책에 알려진 귀하의 개인정보를 수집 및 사용하는 데 동의하게 됩니다. 당사는 수시로 개인정보 보호정책을 개정할 수 있으므로, 변경이 있는지 개인정보 보호정책을 정기적으로 확인할 것을 권장합니다.</p>\n\n    <h3>수집 및 사용된 정보</h3>\n    <p>FRVR은 GDPR를 준수합니다</p>\n    <p>사용자 정보를 수집하는 FRVR의 주된 목적은 서비스를 제공하고 향상시키며 사용자들이 손쉽게 서비스를 탐색하고 향유할 수 있도록 하는 것입니다.</p>\n    <p>FRVR의 게임 또는 앱을 설치할 때, 저희는 Facebook의 정책과 약관에 따라 www.facebook.com(“Facebook”)과 같은 서비스를 통해 귀하가 자발적으로 제공한 정보를 수집하고 기록할 수 있습니다.</p>\n    <p>위에 나열된 활동에 따라 수집된 개인정보의 유형은 활동에 따라 다양할 수 있습니다. "개인 정보"는 귀하에게 연락하거나 귀하의 신원을 파악하는 데 사용될 수 있는 귀하에 관한 정보로 정의됩니다. 개인정보에는 다음이 포함될 수 있습니다. (1) 이름, (2) Facebook 사용자 ID 번호, (3) 이메일 주소. 또한 (1) 서비스에 있는 메시지 게시판에 대한 귀하의 액세스와 참가 (2) 당사 고객 지원에 대한 귀하의 이메일 질문 또는 (3) 임의의 유형의 가상 제품 구매를 통해 귀하로부터 정보를 확보할 수도 있습니다. 제3자 사이트가 서비스에서 제공하는 가상제품의 구매를 관리하기 때문에, 당사에서는 귀하의 신용카드 세부정보와 청구 정보에 액세스하지 않음을 알아 두시기 바랍니다.</p>\n    <p>또한 FRVR에서 다음을 포함하되 이에 국한되지 않는 귀하에 관한 비개인 정보를 공유하도록 귀하를 초대할 수도 있습니다. (1) 귀하의 연령 또는 생년월일, (2) 귀하의 성별, (3) 귀하가 보유한 하드웨어의 정보, (4) 귀하가 좋아하는 웹사이트, 친구 정보 및 팬 페이지(집합적으로 "비개인 정보”). 만약 비개인정보가 개인정보도 필요로 하는 활동에 대해 수집되는 경우, FRVR은 귀하에게 더 나은 사용자 경험을 제공하고, 서비스의 품질과 가치를 개선하며, 당사 서비스의 이용 방법을 분석하기 위해 귀하의 비개인 정보와 개인정보를 결합할 수도 있습니다.</p>\n    <p>또한 서비스에서 귀하의 최고 점수 또는 게임 세션 시간 등과 같은 게임 플레이 정보를 기록합니다.</p>\n\n    <p>위에 설명된 바와 같이 수집된 정보 이외에, 귀하는 게임 또는 메시지 게시판 등과 같이 서비스를 통해 귀하에 관한 추가 정보를 공유하기로 선택할 수도 있습니다. 다른 플레이어와 함께 수행한 활동은 공개로 간주되며, 귀하의 독자적인 재량에 의한 것입니다.</p>\n    <p>마지막으로, 귀하가 서비스에 액세스하는 동안, 당사는 인터넷 프로토콜 주소, 브라우저 유형, 브라우저 언어, 참조/종료 페이지 및 URL, 플랫폼 유형, 클릭 수, 도메인 이름, 랜딩 페이지, 본 페이지 및 해당 페이지의 순서, 특정 페이지에 소비한 시간, 이 활동의 날짜 및 시간 등을 포함하되 이에 국한되지 않는 집합 정보를 수집할 수도 있습니다. 당사는 이 정보를 사용하여 귀하의 관심사에 맞게 서비스를 더 맞춤화하고, 더욱 효율적인 고객 지원을 제공하며, 서비스를 전반적으로 향상시킵니다.</p>\n\n    <p>데이터 액세스와 수집의 모든 경우에, 귀하가 제공한 정보는 관련이 없는 제3자에 공개, 대여, 리스, 대출, 판매 또는 자발적으로 배포되지 않으며, 귀하에게 서비스를 제공하고 서비스를 개선하기 위한 목적으로만 사용됩니다.</p>\n\n    <h3>귀하의 개인정보의 다른 공개</h3>\n    <p>귀하는 당사가 법에 의거 또는 책임을 피하고, 영장, 소환, 법규 또는 법원의 명령 법적 절차를 준수하거나 또는 우리의 권리 및 재산, 또는 일반 대중의 권리와 재산을 보호하기 위해 정보 공개가 합리적으로 필요하다는 선의의 신념으로 임의의 개인정보를 공개해야 할 수도 있음을 이해하고 이에 동의합니다. FRVR은 임의의 수색영장, 소환장 또는 FRVR이 수령할 수 있는 기타 유사한 정부의 요청의 유효성에 대해 이의나 이론을 제기하지 않아도 됨을 알아 두시기 바랍니다.</p>\n    <p>또한, 합병, 인수, 구조조정, 파산, 또는 기타 유사한 상황이 일어나는 경우, 고객 정보는 적용 가능한 법에 의거 허용되는 경우, FRVR의 승계인 또는 양수인에게 양도될 수 있습니다.</p>\n\n    <h3>쿠키</h3>\n    <p>쿠키는 저희가 귀하의 컴퓨터 하드 디스크에 전송하는 조그만 데이터 파일이며, 일반적으로 사용자의 컴퓨터를 신속하게 인식하고 사용자의 방문에 관한 사항 즉, 귀하의 선호사항이나 사용자 이름 및 암호 등을 "기억"하기 위해 사용됩니다. 귀하가 FRVR 서비스의 콘텐츠에 액세스하거나 이를 볼 때 서비스에서 쿠키를 귀하의 컴퓨터로 보냅니다. 쿠키에 포함된 정보는 당사 서비스 품질 개선, 귀하의 관심사에 대한 권장사항 맞춤화 및 서비스를 더욱 쉽게 사용하도록 만드는 등의 목적을 위해 귀하의 개인정보와 연계될 수 있습니다. 귀하는 언제든지 쿠키를 비활성화할 수 있지만, 그렇게 하면 서비스의 기능에 액세스할 수 없거나 이용하지 못하게 될 수 있습니다.</p>\n    <p>이 도메인에 대해 브라우저를 쿠키가 없는 상태로 되돌리고 싶으면, 아래 목록에서 귀하의 브라우저를 찾아 안내를 따르십시오.</p>\n\n    <dl>\n        <dt>Google Chrome:</dt>\n        <dd><a href="https://support.google.com/accounts/answer/32050?co=GENIE.Platform%3DDesktop&hl=en">https://support.google.com/accounts/answer/32050?co=GENIE.Platform%3DDesktop&hl=en</a></dd>\n        <dt>Firefox:</dt>\n        <dd><a href="https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored">https://support.mozilla.org/en-US/kb/delete-cookies-remove-info-websites-stored</a></dd>\n        <dt>Internet Explorer:</dt>\n        <dd><a href="https://support.microsoft.com/en-us/help/17442/windows-internet-explorer-delete-manage-cookies">https://support.microsoft.com/en-us/help/17442/windows-internet-explorer-delete-manage-cookies</a></dd>\n        <dt>Internet Explorer Edge:</dt>\n        <dd><a href="https://privacy.microsoft.com/en-us/windows-10-microsoft-edge-and-privacy">https://privacy.microsoft.com/en-us/windows-10-microsoft-edge-and-privacy</a></dd>\n        <dt>Safari (모바일):</dt>\n        <dd><a href="https://support.apple.com/en-us/HT201265">https://support.apple.com/en-us/HT201265</a></dd>\n        <dt>Safari:</dt>\n        <dd><a href="https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac">https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471/mac</a></dd>\n    </dl>\n\n    <h3>링크</h3>\n    <p>서비스에는 다른 웹사이트에 대한 링크가 포함되어 있을 수 있습니다. 서비스가 웹사이트에 연결되어 있거나 배너 광고를 게시하거나 또는 다른 유형의 광고를 게시한다는 사실이 FRVR에서 제3자를 보증하거나 인가함을 의미하지 않을 뿐더러, 그것이 당사와 제3자 간의 제휴를 나타내지 않습니다. FRVR은 귀하가 서비스로부터 액세스하기로 선택한 이러한 다른 웹사이트의 개인정보 보호정책에 대해 어떠한 경우에도 책임을 지지 않습니다. 서비스에서 나갈 때 그러한 웹사이트의 개인정보 보호정책을 읽어 보시기 바랍니다.</p>\n\n    <h3>제3자 플랫폼</h3>\n    <p>Facebook 또는 기타 소셜 네트워킹 사이트와 같은 제3자 플랫폼으로 또는 그것을 통해 FRVR 웹사이트를 이용 또는 연결하거나 FRVR 모바일 앱을 다운로드하는 경우, 귀하는 귀하의 제3자 플랫폼 프로필/계정(예: 귀하의 Facebook 계정)으로부터 또는 계약 약관 및 제3자 플랫폼에 설정한 귀하의 개인정보보호 설정에 의거 허용된 바와 같이 해당 제3자 플랫폼에서 귀하의 장치에 설치한 쿠키를 통해 당사가 특정 정보에 액세스하고 그리고/또는 수집할 수 있도록 허용한 것입니다. 당사는 계약 약관 및 제3자 플랫폼에 대한 귀하의 개인정보보호 설정에서 허용된 바에 따라 제3자 플랫폼의 사용을 위해 그러한 정보를 제3자 플랫폼과 공유합니다.</p>\n    <p>당사는 모바일 앱의 설치 시 귀하로부터 수집하는 정보의 일부를 당사가 귀하에게 제공하는 서비스의 작동과 연관하여 그리고/또는 어떠한 경우에도 귀하의 신원을 파악하는 방법이 아닌 집합적이고 익명화된 방법으로 해당 정보를 복제하고 게시해야 할 수 있는 분석 목적을 위해 당사에게 고용되거나 당사와 협력하는 벤더 및 기타 서비스 제공자와 공유합니다.</p>\n\n    <h3>귀하 정보의 변경 또는 삭제</h3>\n    <p>귀하는 귀하의 Facebook 프로필 페이지에 있는 적용 가능한 정보를 변경함으로써 임의의 개인정보를 검토, 업데이트, 시정 또는 삭제할 수 있습니다. 이러한 모든 정보를 완전하게 삭제하는 경우, 귀하의 계정은 비활성화될 수도 있습니다. 당사가 귀하의 기록을 당사 시스템에서 삭제하길 원하시면, 당사에게 요청하십시오. 해당 기록의 보존이 법적으로 의무사항이 아닌 경우 귀하의 요청을 수용하도록 할 것입니다.</p>\n\n    <h3>보안</h3>\n    <p>당사는 사고 손실 및 미인가 액세스, 사용, 수정 또는 공개로부터 귀하의 개인 정보를 보호하도록 고안된 합리적인 기술 및 체계적 수단을 배치했습니다. 그러나, 미인가 제3자가 그러한 수단을 해체하고 부당한 목적을 위해 귀하의 개인정보를 절대 사용할 수 없을 것이라고 보장할 수는 없습니다. 또한 이메일과 메시징 시스템도 보안이 유지되는 것으로 간주되지 않으므로, 귀하가 그러한 매체를 통해 당사에 개인정보를 보내는 것은 권장하지 않습니다.</p>\n\n    <h3>아동에 관한 정책</h3>\n    <p>이 서비스는 13세 미만의 아동에 맞게 되어 있지 않으며 당사는 13세 미만의 아동으로부터 고의로 개인정보를 수집하지 않습니다. 만약 13세 미만의 아동이 당사에 개인정보를 제공한 사실을 알게 된 경우, 당사는 가능한 신속하게 당사 파일로부터 해당 정보를 삭제합니다.</p>\n\n    <hr/>\n\n    <h2>GDPR 컴플라이언스 성명서</h2>\n    <p>GDPR (General Data Protection Regulation)은 2018년 5월 25일부터 발효되었습니다. GDPR은 EU 내에서 개인 데이터의 보안과 보호를 강화하고 유럽개인정보보호지침과 국가별 법제를 대체하도록 되어 있습니다.</p>\n    <p>FRVR은 고객 데이터의 중요성을 알고 있으며 GDPR의 도입을 환영합니다. FRVR Limited는 고객이 비즈니스의 가장 중요한 부분이며 당사의 성공은 개인정보 보호를 포함하여 최고의 품질을 제공하는 당사의 능력에 대한 고객, 직원 및 기타 이해관계자의 신뢰를 바탕으로 합니다.</p>\n    <p>FRVR Limited의 서비스는 GDPR의 모든 적용 가능한 부분을 준수합니다.</p>\n    <p>GDPR과 관련하여 제공 또는 보류하기로 선택할 수 있는 동의는  frvr.com 도메인의 일부인 FRVR Limited에서 제공한 모든 서비스(게임과 웹사이트)에 적용됩니다.</p>\n    <p>다음은 GDPR의 핵심 측면이며, FRVR Limited와 연계되어 있는 방법입니다.</p>\n    <p>GDPR이란 무엇인가</p>\n    <p>GDPR은 유럽 연합에서 수립한 일반정보에 대한 보호법입니다.</p>\n    <p>핵심적으로, GDPR은 EU 시민들이 그들의 개인 데이터에 대한 더 많은 통제력을 갖도록 고안된 새로운 규칙 집합입니다. 이 법은 사업 규제환경을 단순화하여 유럽연합 내의 시민과 기업 모두 디지털 경제로부터 완전한 혜택을 받을 수 있도록 하고 있습니다.</p>\n    <p>EU 데이터 보호 지침(지침 95/46/EC)을 따르십시오. 더 자세한 정보는 eugdpr.org를 참조하십시오.</p>\n\n    <h3>GDPR의 핵심 측면</h3>\n    <p>FRVR Limited가 GDPR 컴플라이언스의 일부로 간주하는 GDPR의 4가지 측면은 다음과 같습니다.</p>\n\n    <h4>데이터 이동에 대한 권리</h4>\n    <p>개인은 컨트롤러가 그 또는 그녀에 관해 보유한 모든 개인 데이터의 사본에 대한 권리를 갖습니다. 또한 재사용을 촉진하는 방법으로 제공되어야 합니다.</p>\n    <ul>\n        <li>사용자는 언제든지 gdpr@frvr.com에서 이메일을 통해 당사에 연락함으로써 당사가 사용자를 대신해 보관한 데이터를 요청할 수 있습니다.</li>\n    </ul>\n\n    <h4>잊혀질 권리</h4>\n    <p>이 권리는 제3자가 더 이상 자신을 추적할 수 없도록 특정 개인 데이터를 삭제시키는 개인 권리입니다. FRVR Limited는 Facebook에 어떠한 개인 데이터도 저장하지 않으며, 단지 인증 토큰만을 저장합니다. 이 토큰은 Facebook의 지침에 따라 게임 앱을 제거함으로써 무효화될 수 있습니다.</p>\n    <p>당사는 어떠한 PII도 저장하지 않으므로, 게임 상태와 수집한 분석 데이터를 특정 사용자와 연결하는 유일한 방법은 Facebook 액세스 토큰을 통하는 것입니다. 해당 사용자의 Facebook 프로필에서 FRVR 게임 앱을 제거하면 당사가 보유한 모든 정보가 익명화됩니다. 이는 해당 사용자가 앱을 제거하는 순간, 즉각 이루어집니다.</p>\n\n    <h3>설계 단계에서의 개인정보보호</h3>\n    <p>이는 프로젝트의 가장 초기 단계에서 개인 데이터를 포함한 데이터의 보호와 관련된 정책, 가이드라인 및 작업 지침의 포함을 촉진하도록 지원합니다.</p>\n    <ul>\n        <li>이 측면은 FRVR Limited에 적용되지 않습니다.</li>\n    </ul>\n\n    <h3>데이터 위반 알림</h3>\n    <p>컨트롤러는 사실을 인지한 때로부터 72시간 이내에 관련 감독 당국에 개인 데이터 위반을 신고해야 합니다. 데이터 대상의 권리와 자유에 대한 위험도가 높은 경우, 또한 데이터 대상에 알려야 합니다.</p>\n    <p>FRVR Limited는 사용자 데이터의 보안을 보장하기 위해 확대된 프로세스를 보유합니다. 사용자 데이터가 위반의 일부였는지 여부에 관한 정보는 요청 시 이용 가능합니다.</p>\n\n    <h3>FRVR에 대한 GDPR 컴플라이언스</h3>\n    <p>GDPR의 준수에 있어서 FRVR의 위치를 알라보려면, 관계자들을 알아야 합니다. 관계자들:</p>\n    <dl>\n        <dt>데이터 컨트롤러</dt>\n        <dd>데이터 컨트롤러는 컴퓨터 또는 구조적 수작업 파일에서 개인 정보의 보관과 사용을 관리하고 이에 대한 책임이 있는 개인 또는 법인을 말합니다.</dd>\n        <dt>데이터 프로세서</dt>\n        <dd>개인 데이터와 관련하여, 데이터 컨트롤러를 대신하여 데이터를 처리하는 사람(데이터 컨트롤러의 직원 이외)을 의미합니다. 정보 또는 데이터와 관련하여 "처리"는 정보 또는 데이터의 확보, 기록 또는 보유를 의미합니다.</dd>\n        <dt>데이터 대상</dt>\n        <dd>개인 데이터의 대상인 개인을 의미합니다. 다른 말로, 데이터 대상은 특정 개인 데이터의 대상인 개인입니다.</dd>\n    </dl>\n\n    <h3>GDPR과 FRVR Limited</h3>\n    <p>다음은 당사 GDPR 컴플라이언스의 핵심 요소입니다.</p>\n    <p>당사는 고객을 대신하여 개인 데이터를 처리하지 않으며 당사 고객 시스템의 개인 데이터에 액세스하지 않습니다(고객 개인 데이터). 또한, FRVR은 고객 시스템에서 고객 개인 데이터의 처리를 모니터할 수 없습니다.</p>\n\n    <h4>당사가 수집/보관하는 개인 데이터는?</h4>\n    <p>FRVR에서는 당사 사용자의 두 가지 데이터 유형 즉, 수동적 및 적극적 데이터를 수집합니다. 수동적 수집은 사용자의 모바일 장치 또는 웹에서 게임을 플레이할 때 데이터를 수집하는 것입니다. 이 데이터는 Google Analytics 또는 그와 유사한 앱을 사용하여 수집되며 다음 정보를 포함합니다.</p>\n    <ul>\n        <li>IP 주소</li>\n        <li>대략적인 지리적 위치</li>\n        <li>세션 시간</li>\n        <li>인게임 활동</li>\n    </ul>\n\n    <p>이 데이터에는 개인의 신원을 확인할 수 있는 어떠한 정보도 포함되어 있지 않습니다. 당사의 적극적 데이터 수집은 현재 고득점과 수집한 코인과 같은 게임 정보로 제한되어 있습니다. 당사는 사용자가 Facebook 계정을 사용하여 그리고 다음을 보관한 Facebook 계정으로부터 로그인할 수 있게 허용합니다.</p>\n    <ul>\n        <li>사용자 액세스 토큰: 당사는 이 토큰을 사용하여 하나의 플레이 세션에서 다음 세션으로 사용자를 식별합니다. 당사는 사용자에 관한 어떠한 세부정보에도 액세스하지 않습니다.</li>\n    </ul>\n    <p>따라서, 당사는 개인의 신원을 파악하고 추적하는 데 사용할 수 있는 어떠한 데이터도 보관하지 않습니다. 사용자 액세스 토큰은 사용자 Facebook 프로필로부터 앱을 제거함으로써 언제든지 무효화될 수 있습니다.</p>\n\n    <h4>FRVR이 GDPR을 처리하는 방법</h4>\n    <dl>\n        <dt>데이터 액세스 관리</dt>\n        <dd>해당 처리의 특정 목적에 필요한 개인 데이터만 처리되며, 컨트롤러는 기본적으로 적합한 기술 및 체계적 수단을 적용하여 이를 보장합니다.</dd>\n        <dt>액세스 활동의 모니터링</dt>\n        <dd>각 컨트롤러 및 적용 가능한 경우, 컨트롤러의 대리인은 각자의 책임 하에 처리 활동의 기록을 유지합니다.</dd>\n        <dt>데이터 암호화</dt>\n        <dd>조직은 적합한 기술 및 체계적 수단을 적용하여 위험에 적합한 보안 수준을 보장해야 합니다. 여기에는 개인 데이터의 익명화 및 암호화가 포함됩니다.</dd>\n        <dt>강력한 컴플라이언스 체계</dt>\n        <dd>적합한 기술적 및 체계적 수단에는 처리 시스템과 서비스의 보안성, 무결성, 이용 가능성 및 탄력성을 보장하는 능력이 포함되어야 할 수 있습니다.</dd>\n    </dl>\n\n    <h3>질문이 있으십니까?</h3>\n    <p>FRVR Limited GDPR 관련 질문 및 임의의 데이터 대상 요청은 다음으로 보낼 수 있습니다: gdpr@frvr.com.</p>\n\n    <h3>FAQ</h3>\n    <dl>\n        <dt>FRVR에 대한 GDPR 하에서 필요한 요건은 무엇입니까?</dt>\n        <dd><ul>\n            <li>설계 단계에서 개인정보보호 수단이 적용되어야 합니다.</li>\n            <li>잊혀질 권리</li>\n            <li>데이터 이동</li>\n        </ul></dd>\n        <dt>GDPR의 대상인 정보는 무엇입니까?</dt>\n        <dd><ul>\n            <li>신원이 확인된 또는 신원확인이 가능한 자연인에 관련된 모든 정보</li>\n            <li>모든 헬스케어 및 민감한 데이터</li>\n        </ul></dd>\n\n        <dt>GDPR의 발효일은 언제입니까?</dt>\n        <dd><ul>\n            <li>2018년 5월 25일</li>\n        </ul></dd>\n        \n        <dt>GDPR의 영향을 받는 고객은 어떤 고객입니까?</dt>\n        <dd><ul>\n            <li>유럽연합에 설립된 컨트롤러와 처리자 또는 EU 내 데이터 대상자에게 상품과 서비스를 제공하는 사람들에 적용됨</li>\n            <li>EU 내 데이터 대상자들의 행동을 모니터하는 기관</li>\n        </ul></dd>\n\n        <dt>FRVR는 어떤 역할을 합니까?</dt>\n        <dd><ul>\n            <li>이 개인정보 보호 정책 하에서 수집된 정보에 대해, 데이터 컨트롤러는 FRVR Limited입니다. 데이터 보호 담당자 연락처: gdpr@frvr.com.</li>\n        </ul></dd>\n    </dl>\n\n    <h2>FRVR: 서비스 약관</h2>\n    <p>서비스 약관 (“약관”) 은 FRVR Ltd. (“FRVR” or “we”) 와 귀하 (“귀하”) 간의 법적 계약입니다. FRVR 게임 또는 애플리케이션 (“서비스”)를 사용 또는 액세스함으로써, 귀하는 이 약관에 의해 법적 구속을 받는다는데 동의하셨습니다.</p>\n    <p>서비스에 액세스 또는 사용함으로써, 귀하는 이 약관을 읽고 이해하며, 이에 의해 법적 구속을 받는것을 수락하는데 동의하였습니다.</p>\n    <p>FRVR는 자체 재량으로 이 약관을 언제든지 수정 또는 개정할 권리가 있으며, 귀하는 그러한 수정이나 개정에 적용 받기로 동의하였습니다.</p>\n    <p>약관에 동의하지 않는다면, 서비스를 사용하지 마십시오.</p>\n    <p>사용자는 약관을 정기적으로 검토할 책임이 있습니다. 변경 또는 업데이트 후 서비스를 계속 사용할 경우 개정된 약관에 대한 귀하의 수락으로 간주됩니다.</p>\n    <p>약관에 동의하지 않는 경우, 유일한 해결책은 서비스 이용을 중단하고 서비스 이용을 위해 만든 계정을 해지하는 것입니다.</p>\n    <p>약관을 위반하는 경우, FRVR은 위반에 대한 경고를 발령하거나 귀하가 서비스 사용을 위해 만든 임의의 또는 모든 계정을 해지 또는 정지할 권리를 보유합니다.</p>\n    <p>FRVR이 귀하의 계정을 해지 또는 정지하기 전에 귀하에게 통지할 필요가 없음에 대해 귀하가 동의했지만, 그렇게 할 수도 있습니다.</p>\n    <p>FRVR은 약관 위반을 포함하되 이에 국한되지 않는 임의의 사유에 대해 통지 없이 임의의 사용자의 서비스에 대한 액세스를 거부할 권리를 보유합니다.</p>\n    <p>귀하는 FRVR이 책임을 지지 않고 귀하에 대한 통지 여부와 상관없이 언제든지 서비스를 중단하거나 서비스의 내용을 변경할 수 있음에 동의합니다.</p>\n    <p>귀하는 귀하가 13세 이상임을 대변합니다. 만약 귀하가 13세에서 18세 사이의 연령이라면, 귀하는 귀하의 법적 보호자가 이 약관을 검토하고 이에 동의해야 함을 인정합니다.</p>\n\n    <h3>지적 재산권/소유권</h3>\n    <p>서비스의 일부인 모든 자료(디자인, 텍스트, 그래픽, 그림, 비디오, 정보, 앱, 소프트웨어, 음악, 사운드 및 기타 파일, 그 선택과 정렬을 포함하되 이에 국한되지 않음)는 미인가 사용으로부터 법적으로 보호됩니다.</p>\n    <p>서비스의 전체 내용은 덴마크의 저작권법 및/또는 다른 관할권의 유사한 법으로 저작권이 보호됩니다.</p>\n    <p>귀하는 귀하가 합법적으로 사이트에 게시한 귀하 자신의 사용자 콘텐츠(아래 정의됨)에 전술한 내용이 적용되지 않는 경우를 제외하고, FRVR의 명시적인 사전 서면 허가 없이 서비스의 일부인 어떠한 자료도 어떠한 형태 또는 어떠한 수단으로든 전체 혹은 일부를 수정, 복사, 배포, 프레임, 복제, 리퍼블리싱, 다운로드, 스크랩, 게시, 포스팅, 전송 또는 판매하거나 또는 활용할 수 없음에 동의합니다.</p>\n    <p>파생적인 사용을 포함한 저작권이 있는 자료의 다른 모든 사용에는 FRVR의 명시적인 사전 서면 허가가 필요합니다. 이 약관을 따르지 않는 자료의 복제나 재배포는 명시적으로 금지되며 민사 및 형사 처벌의 결과가 뒤따를 수 있습니다.</p>\n    <p>FRVR 및/또는 그 라이센서는 FRVR의 서비스에 게시된 모든 자료에 대한 저작권 및 기타 지적재산권을 포함한 권리, 소유권 및 이익의 소유자입니다. 귀하는 FRVR의 서비스를 이용하거나 해당 서비스에 게시된 자료, 또는 그에 따른 파생 결과물에 액세스한다고 해서 소유권을 확보할 수는 없음을 인정합니다.</p>\n    <p>FRVR은 귀하에게 적용 가능한 서비스를 보고 사용하는 목적으로만 서비스를 사용하며 어떠한 다른 목적에 대해서도 사용할 수 없는 개인적이고, 비독점적이며, 양도가 불가하고, 취소 가능하며, 제한적 범위의 라이선스를 제공합니다. 서비스 사용을 위한 라이선스는 이러한 약관에 의해 제한됩니다.</p>\n\n    <h3>사용자 콘텐츠</h3>\n    <p>귀하는 FRVR이 제공한 기술과 도구를 사용하여 서비스에 관한 콘텐츠를 기꺼이 퍼블리싱하기로 동의합니다. 귀하는 FRVR의 명시적인 서면 동의없이는 어떠한 방법으로든, 어느 국가에서든 또는 어떠한 소셜 네트워크나 기타 매체에서도 이 콘텐츠 및/또는 앱을 배포, 판매, 전송 또는 라이선스할 수 없음을 알고 있고 이에 동의합니다. 귀하는 FRVR에게 애플리케이션의 운영자로서 귀하를 대신하여 대리인 역할을 할 권리를 부여했습니다.</p>\n    <p>서비스에 업로드되는 모든 데이터, 텍스트, 그래픽, 사진 및 그 선택과 정렬(이하, "사용자 콘텐츠")는 전체이든 또는 그 일부이든, FRVR에 의한 무제한적인 상업적, 비상업적 그리고/또는 홍보용 사용의 대상이 됩니다. 텍스트, 그래픽 및 사진은 귀하가 업로드하며 사용자 콘텐츠를 만든 사람의 단독 책임입니다. 따라서, 사용자가 업로드, 게시 또는 이용 가능하게 만든 모든 파일에 대해 FRVR은 책임이 없고 사용자가 책임을 집니다. FRVR은 사용자 콘텐츠를 규제하거나 규제하지 않을 수 있으며, FRVR 서비스를 통해 게시된 사용자 콘텐츠의 정확성, 품질 또는 무결성을 보장하지 않습니다.FRVR을 사용함으로써, 귀하는 불쾌하거나 무례하다고 생각되는 자료에 노출될 수 있음을 인정하고 이를 수락하게 됩니다. 귀하는 어떠한 상황에서도 FRVR은 임의의 사용자 콘텐츠에 대해 책임이 없으며, 여기에는 사용자 콘텐츠의 오류 또는 사용자 콘텐츠의 사용으로 발생한 손실이나 피해가 포함되나 이에 국한되지 않습니다.</p>\n    <p>FRVR은 통지 여부에 상관없이 서비스로부터 임의의 사용자 콘텐츠를 제거하고 영구히 삭제할 권리를 보유합니다.</p>\n\n    <h3>가상 통화 및 상품</h3>\n    <p>서비스에는 가상 통화를 확보하기 위해 "실제 화폐"를 사용하여 수수료를 지불해야 할 수 있는 가상의 인게임 통화("가상 통화")를 구매할 기회가 포함될 수 있습니다. 가상 통화는 FRVR 또는 제3자로부터 실제 화폐, 상품 또는 화폐 가치가 있는 다른 아이템으로 절대 교환될 수 없습니다. 귀하는 게임 속 가상 아이템 또는 가상 통화에 대한 권리 또는 소유권이 없음을 알고 있습니다.</p>\n    <p>가상 통화 매수는 최종적이며 FRVR이 단독 재량으로 결정하는 경우를 제외하고, 반환되거나 또는 교환되거나, 양도되지 않습니다. 서비스 외부에서는 가상통화를 매수 또는 매도, 교환할 수 없습니다. 그렇게 할 경우, 약관 위반이며 서비스 계정이 해지되거나 그리고/또는 법적 소송이 제기될 수도 있습니다.</p>\n    <p>FRVR는 단독 재량으로 가상 통화를 수정 및/또는 관리, 조정, 제거할 권리를 보유합니다. 가상 인게임 상품의 가격과 가용성은 통보 없이 변경될 수 있습니다.</p>\n\n    <h3>행동/이용 규칙</h3>\n    <p>FRVR 서비스에서 귀하가 다른 서비스 사용자와 소통할 수 있게 고안된 포럼, 커뮤니티 또는 채팅 영역("커뮤니케이션 채널")과 같은 커뮤니케이션 채널을 제공할 수 있습니다. FRVR에서 이러한 커뮤니케이션 채널을 모니터할 의무는 없지만 그렇게 할 수도 있으며, 커뮤니케이션 채널에 게시된 자료를 검토하고, 자체 재량으로 어떠한 이유에 의해서 통지 유무와 상관없이 언제든지 임의의 자료를 제거할 권리를 보유합니다. 또한 FRVR은 어떠한 이유에 의해서 통지 없이 언제든지 귀하의 커뮤니케이션 채녈에 대한 액세스를 해지하거나 중지할 수 있습니다. 귀하는 커뮤니케이션 채널에 사용자가 게시한 채팅, 게시물 또는 자료를 FRVR이 보증하지도 관리하지도 않으며, 이러한 커뮤니케이션을 FRVR이 검토하거나 승인한 것으로 간주되지도 않음을 인정합니다. FRVR은 어떤 상황 하에서도 커뮤니케이션 채널 내의 어떠한 활동에 대해서도 책임지지 않습니다.</p>\n    <p>귀하는 커뮤니케이션 채널에서의 모든 소통이 공개되므로, 커뮤니케이션 채널의 이용에 관하여 개인정보보호를 기대할 수 없다는 점에 동의합니다. FRVR은 귀하가 커뮤니케이션 채널에서 공유하기로 선택한 정보, 또는 다른 사용자의 행동에 대해 책임이 없습니다.</p>\n    <p>귀하는 귀하의 서비스 사용이 합법적이어야 하며 사용 규칙을 준수할 것임에 동의합니다. 전술한 내용에 추가하여, 제한은 아니지만 사례로써, 귀하는 다음을 위해 서비스를 사용하지 않기로 동의합니다.</p>\n\n    <ul>\n        <li>음란한, 외설적, 저속한, 포르노, 성적이거나 또는 누군가를 불쾌하게 중상, 명예훼손, 조소, 조롱, 스토킹, 위협, 괴롭히거나, 겁을 주는 또는 학대하거나, 인종, 민족적으로 증오하거나 또는 합리적인 관점으로 볼 때, 불쾌하거나 또는 무례한 정보를 게시, 업로드, 전송 또는 전파</li>\n        <li>바이러스, 트로이 목마, 웜, 시한폭탄, 캔슬보트, 오염된 파일이나 데이터, 또는 서비스나 다른 사용자의 컴퓨터의 작동을 손상시킬 수 있는 기타 유사한 소프트웨어나 프로그램을 포함한 파일을 업로드하거나 전송(또는 업로드나 전송을 시도)</li>\n        <li>어떠한 방법으로든 서비스를 통해 이용 가능한 정보의 사용, 업로드, 전송, 배포, 또는 이용 가능하게 만드는 것을 포함하여 계약적, 개인적, 지적재산 또는 임의의 당사자의 기타 권리를 위반하고 이것이 임의의 저작권, 상표, 특허, 영업 비밀, 기타 당사자의 권리(프라이버시 또는 공개 권리 포함)를 침해</li>\n        <li>다른 가입자의 암호 또는 비공개 정보를 확보하려고 시도</li>\n        <li>FRVR에 허위 신고를 하기 위해 지원 채널 또는 불만 버튼을 부적절하게 사용</li>\n        <li>적용 가능한 라이선스 계약의 위반으로 "자동" 소프트웨어 프로그램, "매크로" 소프트웨어 프로그램 또는 기타 "치트 유틸리티" 소프트웨어 프로그램 또는 앱을 개발, 배포 또는 공개적으로 다른 가입자에게 알림</li>\n        <li>의도하지 않은 어드밴티지를 제공하는 게임 오류, 실수 또는 버그를 활용, 배포 또는 공개적으로 다른 가입자에게 알림</li>\n        <li>적용가능한 법이나 규정을 위반하거나, 해킹, 크래킹 또는 위조 소프트웨어나 서비스에 대한 치트 또는 핵을 포함하되 이에 국한되지 않는 모든 불법적 활동을 촉진하거나 장려함</li>\n    </ul>\n\n    <h3>보증의 법적 고지, 책임의 제한</h3>\n    <p>귀하는 귀하의 서비스 사용이 귀하 단독의 위험이 되어야 함에 동의합니다. 법에서 허용하는 최대 범위에서, FRVR과 그 임원, 이사, 직원 및 에이전트는 서비스와 그에 대한 귀하의 사용에 대해 명시적이든 암묵적이든 모든 보증에 대한 책임을 부인합니다. 여기에는 소유권, 상업성, 특정 목적에 대한 적합성 또는 비침해성, 정확성, 권한, 완전성, 유용성 및 시기적절성의 암묵적 보증이 포함됩니다. FRVR은 서비스의 콘텐츠 및 해당 서비스에 연결된 임의의 사이트의 콘텐츠의 정확성이나 완전성에 대해 어떠한 보증이나 대변도 하지 않으며, (i) 콘텐츠의 오류, 실수, 부정확성, (ii) 서비스에 대한 액세스 및 서비스 이용에 따른 임의의 성격의 인명 부상이나 재산 피해, (iii) 당사 보안 서버의 미인가 액세스 또는 이용 및/또는 해당 서버에 저장된 개인 정보 및/또는 금융 정보, (iv) 서비스를 왕래하는 전송의 중단이나 방해, (v) 제3자에 의해 서비스에 또는 서비스를 통해 전송될 수 있는 버그, 바이러스, 트로이 목마 등, (vi) 콘텐츠의 오류 또는 누락, 또는 서비스를 통해 게시되거나, 이메일 발송되거나, 전송되거나 또는 이용 가능하게 되는 콘텐츠의 사용 결과로 발생하는 임의의 종류의 손실이나 피해에 대해 어떠한 책임이나 부담도 감수하지 않습니다.</p>\n    <p>어떠한 경우에도 FRVR과 그 이사, 임원, 에이전트, 도급업체, 파트너와 직원은 보증, 계약, 불법 행위 또는 기타 법적 이론에 의한 것이든, FRVR이 그러한 피해의 가능성을 미리 알렸는지의 여부와 상관이 없이, 서비스 또는 서비스를 통하여 액세스하거나 서비스에서 다운로드한 자료로부터 발생하는 이익 상실이나 데이터 손실을 포함하여 특수한, 직접적, 간접적, 부수적, 특수, 처벌적 또는 결과적 피해에 대해 귀하나 제3자에게 책임을 지지 않습니다. 전술한 책임 제한은 적용 가능한 관할권 내의 법이 허용하는 최대 범위에서 적용됩니다. 귀하는 특히 FRVR은 사용자의 제출이나 제3자의 명예훼손, 모욕적 또는 불법적 행위에 대해 책임을 지지 않으며 전술한 행위로부터의 피해나 손해는 전적으로 귀하에게 달려 있음을 인정합니다. 귀하는 (i) 귀하의 서비스 사용 및 액세스, (ii) 귀하의 이 서비스 약관의 위반, (iii) 임의의 저작권, 재산 또는 프라이버시 권리를 포함하되 이에 국한되지 않는 제3자의 권리 위반, (iv) 제3자에 피해를 초래하는 사용자 제출물에 대한 클레임, (v) 서비스에 또는 서비스를 통해 게시하거나 공유한 콘텐츠로부터 발생하거나 또는 그와 연계된 임의의 손실, 책임, 클레임, 요구, 피해, 비용 및 경비, 합리적인 변호사 비용으로부터 FRVR 및 그 이사, 임원, 에이전트, 도급업체, 파트너 및 직원이 피해를 입지 않도록 면책하기로 동의합니다.</p>\n\n    <h3>일반</h3>\n    <p>이 서비스를 방문하거나 이용함으로써, 귀하는 법의 상충 원칙 및 장소에 상관없이 몰타의 법이 이 서비스 약관과 귀하와 FRVR 사이에 발생할 수도 있는 모든 종류의 분쟁에 적용됨에 합의합니다. 귀하의 서비스 사용으로부터 전적으로 또는 부분적으로 발생하는 귀하와 FRVR 사이의 모든 클레임 또는 분쟁은 덴마크 코펜하겐에 위치한 해당 관할권을 보유한 법원에 의해 독점적으로 결정되며, 귀하는 이 약관에서 덴마크 코펜하겐의 장소 및 관할권에 관하여 속인적 관할권 부재 및 불편한 법정지(forum non conveniens)의 모든 방어를 포기합니다. FRVR은 언제든지 통지 없이 이 서비스 약관을 개정할 권리를 보유하며, 임의의 변경에 대해 이 서비스 약관을 검토하는 것은 귀하의 책임입니다. 이 서비스 약관의 개정 이후 FRVR을 사용할 경우 개정된 약관에 대한 찬성과 수락을 나타내는 것입니다. 귀하와 FRVR은 서비스로부터 발생하거나 서비스와 관계된 활동의 원인이 해당 활동의 원인이 발생한 날로부터 1년 이내에 시작되어야 함에 동의합니다. 그렇지 않으면, 그 같은 행동의 원인은 영구적으로 금지됩니다.</p>\n\n    <p style="font-size: 12px;">May 3, 2023</p>\n'}\n                        </inner></content>\n                    `))))
          }
      };
      const we = {
          view: function() {
              return document.title = "FRVR DMCA",
              t()("div.container.pt-16.pb-32", t()("div.row", t()("div.col-12", [t().trust('\n                    <content><inner>\n                      <a name="top"><h1>DMCA Compliance Policy</h1></a>\n                      <p>It is the policy of FRVR Limited to promptly process and investigate notices of alleged copyright infringement, and take appropriate actions under the Digital Millennium Copyright Act, Title 17, United States Code, Section 512 (&quot;DMCA&quot;).</p>\n                      <h3>Contents of Notice</h3>\n                      <p>The DMCA requires that all notices of alleged copyright infringement must be in writing. When informing the designated agent of an alleged copyright infringement, the complainant must:</p>\n                      <ol>\n                        <li>Identify the copyrighted work that allegedly has been infringed. If multiple copyrighted works at a single online site are involved, please provide a list of the works on that site.</li>\n                        <li>Describe the material that is claimed to be infringing and provide sufficient information to permit FRVR Limited to locate that material.</li>\n                        <li>Provide your contact information, including an address, telephone number, and, if available, an e-mail address.</li>\n                        <li>Certify or include a statement that the complainant has a good faith belief that the use of the copyright-protected material in the manner complained of is not authorized by the copyright owner, the owner&#39;s agent, or law.</li>\n                        <li>Certify that the information that you have provided FRVR Limited is accurate. The complainant should attest under penalty of perjury that she/he is authorized to enforce the copyrights that have allegedly have been infringed.</li>\n                        <li>Include a physical or electronic signature of the copyright owner or person authorized to act on behalf of the owner.</li>\n                      </ol>\n                      <p>Before the complainants allege an infringement, she/he should consult copyright materials to confirm that the use is, in fact, infringing. The United States Copyright Office provides basic information, online, at <a href="https://www.copyright.gov/circs/circ01.pdf" target="_blank">https://www.copyright.gov/circs/circ01.pdf</a>, which can assist one in determining whether an exception or defense, such as fair use, may apply to the use of your copyrighted work.</p>\n                  \n                      <h3>Notice, Takedown, and Putback Procedure</h3>\n                      <p>FRVR Limited expects all users of its system to comply with applicable copyright laws. However, if FRVR Limited is notified of a claimed copyright infringement, or otherwise becomes aware of facts and circumstances from which infringement is apparent, it will respond appropriately, which may include removing or disabling access to the material that is claimed to be infringing. FRVR Limited will follow the procedures outlined in the Digital Millennium Copyright Act with regard to appropriate notifications of the user and the complaining party, acceptance of counter notifications, and, where indicated, &quot;putback&quot; of the alleged infringing material. Refer to the United States Copyright Office for the provisions of the DMCA at <a href="https://www.copyright.gov/legislation/dmca.pdf" target="_blank">https://www.copyright.gov/legislation/dmca.pdf</a>.</p>\n                    \n                      <h3>Repeat Infringers</h3>\n                      <p>Where it has been clearly established that a FRVR Limited client is a repeat offender, FRVR Limited may terminate that person&#39;s account.</p>\n\n                      <h3>Notification Agent</h3>\n                      <p>Pursuant to the DMCA, FRVR Limited has designated an agent to receive notification of alleged copyright infringement occurring on Web pages or computer servers. If you believe that your copyrighted work is being infringed on a FRVR Limited site, please notify our designated agent, preferably by email, at:</p>\n                      <p>Agent: Francesca Licata</p>\n                      <p>Email: <a href="mailto:legal@frvr.com">legal@frvr.com</a></p>\n                      <p>Phone: +351912441899</p>\n                      <p>Mail: 61 Saint Paul Street, Valletta VLT 1212</p>\n                    </inner></content>\n                  ')])))
          }
      };
      var Re = !1
        , ke = !1;
      function Fe() {
          "/" !== t().route.get() && "/browse" !== t().route.get() && t().route.set("/browse"),
          (ke = !ke) && (Re = !0)
      }
      const Ve = (e,o)=>t()("svg[viewBox='0 0 176 40'][fill='none'][xmlns='http://www.w3.org/2000/svg']", {
          width: e,
          height: o
      }, [t()("path[d='M29.8055 10.5064L23.3832 20.0513V19.9865L23.0896 19.5543C22.8394 19.1978 22.5947 18.8359 22.35 18.474L22.0835 18.0797C21.7953 17.6529 21.5397 17.3018 21.295 16.9507C20.9232 16.4299 20.4865 15.958 19.9954 15.5462L19.7289 15.341C18.8419 14.735 17.8007 14.3902 16.7251 14.3462C15.6495 14.3023 14.5833 14.561 13.6492 15.0925C13.1384 15.3816 12.6746 15.7459 12.2734 16.1729L20.6262 4.28899C22.7765 4.85271 24.788 5.84719 26.5372 7.21134V7.17893L27.3094 7.84875L27.4073 7.93518C28.2756 8.72618 29.0777 9.5861 29.8055 10.5064Z'][fill='#9B00FF']"), t()("path[d='M175.418 27.7758C174.743 28.12 174.001 28.3154 173.243 28.3484C172.117 28.3484 171.035 27.6192 169.98 26.5982C169.229 25.8798 168.452 24.9777 167.712 24.0972C168.693 23.9556 169.648 23.6717 170.545 23.2546C171.314 22.9042 172.006 22.4089 172.585 21.7961C173.732 20.6563 174.809 18.7441 174.809 15.8001C174.809 10.6523 171.29 7.15733 165.738 7.15733H154.215V32.9021H159.767V24.4429H161.165C163.449 26.8143 166.168 31.4652 169.784 32.8535L170.061 32.9453L170.192 32.9885L170.437 33.0587L170.79 33.1344H170.964L171.231 33.1722H171.388C171.524 33.1722 171.655 33.1722 171.791 33.1722H171.856H172.334H172.574H172.846L173.15 33.129L173.324 33.102L173.705 33.0317C174.493 32.8862 175.254 32.6221 175.962 32.2485L175.418 27.7758ZM159.767 19.2951V12.3052H165.504C165.972 12.2828 166.44 12.3579 166.877 12.5256C167.314 12.6933 167.711 12.95 168.042 13.2791C168.374 13.6082 168.632 14.0025 168.801 14.4367C168.97 14.8708 169.045 15.3352 169.023 15.8001C169.045 16.265 168.97 16.7295 168.801 17.1636C168.632 17.5978 168.374 17.9921 168.042 18.3212C167.711 18.6503 167.314 18.9069 166.877 19.0747C166.44 19.2424 165.972 19.3175 165.504 19.2951H159.767Z'][fill='#1A1A1A']"), t()("path[d='M78.5027 7.15733V32.8859V32.9021H84.0549V32.8859V23.5246H94.6045V23.5084V18.3768V18.3606H84.0549V12.3106H97.5682V12.289V7.15733V7.14112H78.5027V7.15733Z'][fill='#1A1A1A']"), t()("path[d='M144.405 7.14112L137.629 26.0851H137.483L130.707 7.14112H124.78L124.785 7.15733H124.78L134.405 32.9021H140.702L150.327 7.15733H150.322L150.327 7.14112H144.405Z'][fill='#1A1A1A']"), t()("path[d='M123.393 27.7812C122.718 28.1256 121.976 28.3209 121.218 28.3538C120.092 28.3538 119.005 27.6246 117.955 26.6036C117.205 25.8852 116.432 24.9831 115.693 24.1026C116.673 23.9599 117.628 23.676 118.526 23.26C119.292 22.9084 119.983 22.4132 120.56 21.8015C121.707 20.6617 122.784 18.7495 122.784 15.8055C122.784 10.6577 119.266 7.16273 113.713 7.16273H102.196V32.9021H107.748V24.4429H109.151C111.429 26.8143 114.148 31.4652 117.765 32.8535H117.792L118.064 32.9453L118.194 32.9885L118.439 33.0588L118.792 33.1344H118.967L119.233 33.1722H119.391C119.528 33.1722 119.664 33.1722 119.799 33.1722H119.858H120.337H120.576H120.848L121.158 33.129L121.332 33.102L121.707 33.0317C122.503 32.8892 123.272 32.625 123.986 32.2485L123.409 27.7758L123.393 27.7812ZM107.748 19.2951V12.3052H113.49C113.958 12.2837 114.425 12.3593 114.862 12.5273C115.299 12.6954 115.695 12.952 116.027 13.281C116.358 13.6099 116.616 14.0038 116.785 14.4376C116.954 14.8714 117.031 15.3355 117.009 15.8001C117.031 16.265 116.956 16.7295 116.787 17.1636C116.618 17.5978 116.36 17.9921 116.028 18.3212C115.697 18.6503 115.3 18.9069 114.863 19.0747C114.426 19.2424 113.958 19.3175 113.49 19.2951H107.748Z'][fill='#1A1A1A']"), t()("g[clip-path='url(#clip0)']", [t()("path[d='M55.5919 25.236C55.5919 25.236 54.8284 26.217 54.385 26.6585C52.6609 28.3507 50.2963 29.4053 47.6608 29.4053C46.3307 29.4053 45.0746 29.1355 43.9169 28.645C43.3258 28.3997 42.7839 28.1054 42.2666 27.7376C42.242 27.7376 42.242 27.7131 42.2174 27.7131C41.2075 26.9773 40.3947 26.0944 39.705 25.1379C39.3109 24.5984 38.9415 24.0589 38.572 23.5193C38.4489 23.3476 38.3257 23.1514 38.2026 22.9798C37.8577 22.4893 37.5129 21.9742 37.1927 21.4837L36.5769 20.5763C36.4538 20.3801 36.306 20.1839 36.1828 19.9877L29.7788 29.4053C31.1089 32.1275 34.3109 34.9479 34.3109 34.9479C35.9365 36.3948 37.8331 37.572 39.8528 38.4304C41.4292 39.0926 43.1287 39.5585 44.8775 39.8038C45.1484 39.8528 45.4194 39.8774 45.6903 39.9019L55.5919 25.236Z'][fill='#FF9603']"), t()("path[d='M67.8333 20.0123C67.7841 31.0484 58.7692 40.0245 47.6853 40.0245C47.0203 40.0245 46.3799 40 45.7148 39.9264L65.4441 10.6438C66.0599 11.7719 66.5772 12.9982 66.9466 14.2489C67.5131 16.0392 67.8333 18.0012 67.8333 20.0123Z'][fill='#FFC700']"), t()("path[d='M23.3498 19.9877L23.3005 20.0368L29.7046 10.4966L23.3498 19.9877Z'][fill='#9B00FF']"), t()("path[d='M39.7294 14.862L43.7196 8.87799L49.5818 0.0980993C48.9414 0.0490497 48.3256 0 47.6605 0C46.7246 0 45.7886 0.0735745 44.8773 0.196199C40.8378 0.76027 37.1924 2.50153 34.286 5.05211C34.286 5.05211 34.1629 5.17474 33.9412 5.37094C33.6456 5.64071 33.3747 5.91048 33.0791 6.20478C32.2416 7.06315 31.1333 8.31392 30.2958 9.61373L29.7047 10.5212L23.3007 20.0613L22.7095 20.9442C22.5864 21.1404 22.4386 21.3366 22.3154 21.5328L22.0445 21.9252C21.8228 22.2685 21.5519 22.6364 21.3056 23.0043L12.6355 35.8308C13.8424 36.1005 15.0986 36.2722 16.3794 36.2722C17.1183 36.2722 17.8819 36.2232 18.6454 36.1251C21.8474 35.6836 24.8278 34.3102 27.2416 32.1766C27.2416 32.1766 27.3401 32.0785 27.5372 31.9068C27.7835 31.6861 28.0051 31.4654 28.2268 31.2201C28.6948 30.7296 29.2859 30.1165 29.8032 29.4298L37.4388 18.1484L38.2269 17.0202C38.3501 16.8486 38.4732 16.6524 38.5964 16.4807C38.9659 15.9411 39.3353 15.4016 39.7294 14.862Z'][fill='#FF0029']"), t()("path[d='M23.3252 20.0613L29.7292 10.4966L23.3252 20.0613Z'][fill='#FF0029']"), t()("path[d='M39.7295 14.8621L43.7197 8.878L39.7295 14.8621Z'][fill='#FF9603']"), t()("path[d='M21.2812 23.0533C21.158 23.225 21.0348 23.3722 20.9363 23.4948C20.5176 23.9853 20.1481 24.3532 19.7048 24.672C19.6063 24.721 19.5324 24.7946 19.4338 24.8437C18.5471 25.3832 17.5373 25.6775 16.4781 25.6775C13.3254 25.6775 10.7638 23.1269 10.7392 20.0123C10.7392 18.9332 11.0594 17.9277 11.6012 17.0448L9.50762 20.0368L11.4535 17.241L3.17749 29.5034C5.345 32.4709 8.47312 34.6781 12.1185 35.6591C12.217 35.6836 12.3155 35.7082 12.4141 35.7327C12.5126 35.7572 12.5865 35.7817 12.685 35.7817L21.355 22.9552C21.3058 23.0043 21.2812 23.0288 21.2812 23.0533Z'][fill='#9B00FF']"), t()("path[d='M29.3846 10.0552C27.1678 7.4065 24.3106 5.37094 20.9855 4.38994C20.8623 4.34089 20.7145 4.31637 20.5914 4.29184C20.4682 4.26732 20.3697 4.24279 20.2466 4.21827L11.4287 17.2655L11.5765 17.0693C11.7735 16.7505 11.9952 16.4562 12.2662 16.1864C12.6603 15.7695 13.1282 15.4016 13.6209 15.1073C14.4583 14.6413 15.4189 14.347 16.4534 14.347C17.6111 14.347 18.7441 14.6904 19.7047 15.3525L19.7293 15.3771C19.8278 15.4506 19.9017 15.5242 20.0002 15.5733C20.4436 15.9166 20.8377 16.3826 21.3057 16.9712C21.5766 17.3145 21.7983 17.6824 22.0939 18.0993L22.3648 18.4917C22.5865 18.8351 22.8328 19.1539 23.0545 19.4972C23.0791 19.5218 23.0791 19.5463 23.1037 19.5708L23.3747 19.9877L29.7787 10.5212C29.6309 10.3495 29.5078 10.2023 29.3846 10.0552Z'][fill='#9B00FF']"), t()("path[d='M64.5574 9.09872C61.2815 4.12018 55.8627 0.686702 49.6065 0.0981064L43.7443 8.878L39.7542 14.8621C39.8527 14.7394 39.9512 14.6168 40.0497 14.4942C40.6901 13.6849 41.4044 12.9246 42.2911 12.2869C42.2911 12.2869 42.3158 12.2869 42.3158 12.2624C42.3158 12.2624 42.3404 12.2624 42.3404 12.2379C42.5128 12.1153 42.6852 12.0172 42.8823 11.8946C44.3109 11.0607 45.9611 10.5702 47.7345 10.5702C49.3355 10.5702 50.838 10.9626 52.1435 11.6493C52.1681 11.6493 52.1927 11.6738 52.2174 11.6738C52.4637 11.7965 52.6853 11.9436 52.907 12.0907C52.9317 12.1153 52.9563 12.1153 53.0055 12.1398C53.2272 12.2869 53.4243 12.4341 53.6459 12.6058C53.6706 12.6303 53.7198 12.6548 53.7445 12.6793C53.9415 12.851 54.1386 13.0227 54.3356 13.1944C54.3602 13.2189 54.3849 13.2434 54.4341 13.2679C54.6312 13.4396 54.8036 13.6358 54.976 13.8565C55.0006 13.8811 55.0253 13.9056 55.0499 13.9301C55.2223 14.1263 55.3947 14.347 55.5425 14.5678C55.5672 14.5923 55.5918 14.6168 55.5918 14.6413C55.7396 14.8621 55.8874 15.1073 56.0351 15.328C56.0598 15.3526 56.0598 15.3771 56.0844 15.4016C56.2322 15.6469 56.3307 15.8921 56.4539 16.1373C56.4539 16.1619 56.4785 16.1864 56.4785 16.2109C56.6016 16.4562 56.7002 16.7259 56.7741 16.9957C56.7741 17.0202 56.7987 17.0448 56.7987 17.0693C56.8972 17.3391 56.9465 17.5843 57.0204 17.8786C57.0204 17.9031 57.045 17.9522 57.045 17.9767C57.0943 18.2465 57.1435 18.5163 57.1928 18.786C57.1928 18.8351 57.2174 18.8596 57.2174 18.9087C57.242 19.1784 57.2667 19.4237 57.2667 19.6934C57.2667 19.7425 57.2667 19.7915 57.2667 19.8406C57.2667 19.8651 57.2667 19.9142 57.2667 19.9387C57.2667 19.9632 57.2667 19.9877 57.2667 20.0123C57.2667 20.0368 57.2667 20.0858 57.2667 20.1104C57.2667 20.3556 57.242 20.6009 57.2174 20.8461C57.2174 20.9197 57.2174 20.9933 57.1928 21.0423C57.045 22.3176 56.6755 23.5438 56.0844 24.5984L65.518 10.5947C65.1732 10.0797 64.8776 9.58922 64.5574 9.09872Z'][fill='#FF9603']"), t()("path[d='M11.4287 17.2655L20.2465 4.21827C20.0495 4.16922 19.8771 4.12017 19.68 4.09564C19.3352 4.02207 19.015 3.97302 18.6702 3.92397C17.9066 3.82587 17.1431 3.77682 16.4041 3.77682C7.38925 3.75229 0.0246308 11.0362 0 20.0123C0 23.3722 1.05913 26.4623 2.80792 29.0619C2.88181 29.16 2.93107 29.2581 3.00496 29.3562'][fill='#00BDFF']"), t()("path[d='M3.00488 29.3562C3.05414 29.4298 3.10341 29.4788 3.15267 29.5279L11.4286 17.2655'][fill='#00BDFF']")]), t()("defs", t()("clipPath[id='clip0']", t()("rect[width='67.8333'][height='40'][fill='white']")))])
        , Ce = ()=>t()("div.d-flex.align-items-center", [t()("h6.m-0", "Language:"), t()("select.text-primary.select-no-style.h6.mb-0.ml-16", {
          value: R.language,
          onchange: e=>{
              R.language = e.target.value
          }
      }, [t()("option[value='en']", "English"), t()("option[value='ko']", "Korean")])]);
      const Se = {
          view: function() {
              let e = t().route.get()?.startsWith("/legal/samsung") || t().route.get()?.startsWith("/legal/krunker")
                , o = t().route.get()?.startsWith("/legal/samsung") && -1 === window.location.search.indexOf("hideLangSelector");
              return e ? [t()("div.d-none.d-lg-flex.w-100.px-40.align-items-center.justify-content-between", t()("nav.navbar.navbar-expand-md.navbar-light.py-16.flex.justify-content-between.w-100", [Ve(176, 40), o ? Ce() : null])), t()("div.d-flex.d-lg-none.w-100.px-16.align-items-center.justify-content-between.overflow-hidden", t()("nav.navbar.navbar-expand.navbar-light.white-space-no-wrap.svg-menu-animate.w-100.py-16.flex.justify-content-between", {
                  class: R.shrinkTitle ? "svg-drop-letters" : ""
              }, [Ve(126, 29), o ? Ce() : null]))] : [t()("div.d-none.d-lg-flex.w-100.px-40.align-items-center.justify-content-between", [t()("nav.navbar.navbar-expand-md.navbar-light", [t()(t().route.Link, {
                  class: "navbar-brand",
                  href: "/"
              }, Ve(176, 40)), t()("ul.navbar-nav.pl-72", [t()("li.nav-item", {
                  class: "/" === t().route.get() || "/browse" === t().route.get() ? "active" : ""
              }, t()(t().route.Link, {
                  class: "nav-link",
                  href: "/browse"
              }, "Games")), t()("li.nav-item", t()("a.nav-link[href='https://corp.frvr.com/']", "About Us")), t()("li.nav-item", t()("a.nav-link[href='https://careers.frvr.com/']", "Careers")), t()("li.nav-item", t()("a.nav-link[href='https://frvr.com/tutorials/']", "Support"))])]), t()("ul.list-unstyled.d-flex.align-items-center", [t()("li.pr-24", t()("a.toggle-color-theme.cursor-pointer", {
                  onclick: window.toggleDarkMode
              }, [t()("img.lights-on[src='/images/content/lights-on.svg'][width=20][height=20]"), t()("img.lights-off[src='/images/content/lights-off.svg'][width=20][height=20]")]))])]), t()("div.d-flex.d-lg-none.w-100.px-16.align-items-center.justify-content-between.overflow-hidden", t()("nav.navbar.navbar-expand.navbar-light.white-space-no-wrap.svg-menu-animate.w-100", {
                  class: R.shrinkTitle ? "svg-drop-letters" : ""
              }, [t()(t().route.Link, {
                  class: "navbar-brand",
                  href: "/"
              }, Ve(126, 29)), t()("ul.navbar-nav.pl-24.w-100.align-items-center.position-relative", [t()("li.nav-item", {
                  class: "/" === t().route.get() ? "active" : ""
              }, t()(t().route.Link, {
                  class: "nav-link",
                  href: "/"
              }, "Discover")), t()("li.nav-item", {
                  class: "/browse" === t().route.get() ? "active" : ""
              }, t()(t().route.Link, {
                  class: "nav-link",
                  href: "/browse"
              }, "All Games")), t()("li.nav-item.position-absolute-right.toggle-search.d-flex.align-items-center.justify-content-between.h-100", {
                  class: ke ? "w-100 active" : ""
              }, [t()("form.ml-24.form-search-hidden.w-100.h-100.py-0.py-md-16", {
                  class: ke ? "" : "d-none"
              }, t()("input.form-control.p-0.bg-transparent", {
                  type: "text",
                  placeholder: "Search Games",
                  value: R.search,
                  oninput: e=>{
                      R.search = e.target.value
                  }
                  ,
                  onupdate: e=>{
                      Re && (e.dom.focus(),
                      Re = !1)
                  }
              })), t()("svg[xmlns='http://www.w3.org/2000/svg'][width='25'][height='24'][viewBox='0 0 25 24'][fill='none']", {
                  onclick: Fe
              }, t()("path[fill-rule='evenodd'][clip-rule='evenodd'][d='M9.50692 3.00331C7.91439 3.00331 6.3871 3.63591 5.26102 4.76194C4.13493 5.88797 3.50231 7.41519 3.50231 9.00764C3.50231 10.6001 4.13493 12.1273 5.26102 13.2533C6.3871 14.3794 7.91439 15.012 9.50692 15.012C11.0994 15.012 12.6267 14.3794 13.7528 13.2533C14.8789 12.1273 15.5115 10.6001 15.5115 9.00764C15.5115 7.41519 14.8789 5.88797 13.7528 4.76194C12.6267 3.63591 11.0994 3.00331 9.50692 3.00331ZM0.5 9.00764C0.499819 7.59017 0.83422 6.19268 1.47601 4.92881C2.11779 3.66495 3.04884 2.5704 4.19343 1.73419C5.33802 0.897976 6.66383 0.343715 8.06303 0.116483C9.46223 -0.110749 10.8953 -0.004537 12.2457 0.426482C13.5961 0.857501 14.8257 1.60116 15.8345 2.59696C16.8433 3.59277 17.6028 4.81261 18.0513 6.15728C18.4997 7.50195 18.6244 8.93347 18.4152 10.3354C18.2061 11.7374 17.669 13.0702 16.8476 14.2254L24.0786 21.4561C24.3521 21.7392 24.5034 22.1184 24.4999 22.512C24.4965 22.9055 24.3386 23.282 24.0603 23.5603C23.782 23.8387 23.4055 23.9965 23.0119 23.9999C22.6183 24.0034 22.2391 23.8521 21.956 23.5786L14.7264 16.3494C13.3789 17.3075 11.7937 17.8763 10.1444 17.9933C8.49515 18.1103 6.84548 17.7711 5.37619 17.0129C3.90691 16.2546 2.6747 15.1066 1.81459 13.6945C0.954489 12.2825 0.499679 10.661 0.5 9.00764Z'][fill='#A6A6A6']")), t()("div.nav-link-large", {
                  class: ke ? "" : "d-none"
              }, t().trust("&nbsp;"))])])]))]
          }
      };
      const Pe = {
          view: function() {
              return t().route.get()?.startsWith("/legal/samsung") || t().route.get()?.startsWith("/legal/krunker") ? [Y(t()("div.row.d-md-none", t()("div.col-12", [t()("div.mb-24", t()("h1.mb-0.text-center", "Change the Game, Forever.")), t()("p.mb-20.text-center", [" 61 Saint Paul Street ", t()("br"), " Valletta VLT 1212 ", t()("br"), " Malta "])]))), U(t()("div.row.d-none.d-md-flex", [t()("div.col-md-4.col-xl-3", [t()("div.mb-24", t()("h1.mb-0", "Change the Game, Forever.")), t()("p.mb-32", [" 61 Saint Paul Street ", t()("br"), " Valletta VLT 1212 ", t()("br"), " Malta "])])])), t()("div.row.pt-32.pt-md-50.flex-column.flex-md-row", [t()("div.col.text-center.text-md-left", [t().trust("&copy;"), " 2023 FRVR."])])] : [Y(t()("div.row.d-md-none", t()("div.col-12", [t()("div.mb-24", t()("h1.mb-0.text-center", "Change the Game, Forever.")), t()("div.mb-30.text-center", t()(t().route.Link, {
                  href: "/browse"
              }, t()("button.btn.btn-lg.btn-primary", "Browse Games"))), t()("div.mb-20", t()("ul.list-unstyled.d-flex.align-items-center.justify-content-center", [t()("li.mx-5", t()(t().route.Link, {
                  href: "/browse"
              }, t()("h3.m-0", "Games"))), t()("li.mx-5", t()(t().route.Link, {
                  href: "/contact"
              }, t()("h3.m-0", "Contact"))), t()("li.mx-5", t()(t().route.Link, {
                  href: "https://frvr.com/tutorials/"
              }, t()("h3.m-0", "Support")))])), t()("div.mb-20", t()("ul.list-unstyled.d-flex.align-items-center.justify-content-center", [t()("li.mx-32", t()("a[href='https://corp.frvr.com/']", t()("h6.external-link-icon.mb-0", "About Us"))), t()("li.mx-32", t()("a[href='https://careers.frvr.com/']", t()("h6.external-link-icon.mb-0", "Careers")))])), t()("p.mb-20.text-center", [" 61 Saint Paul Street ", t()("br"), " Valletta VLT 1212 ", t()("br"), " Malta "]), t()("div.text-center.mb-20", t()("a.toggle-color-theme.switch-colour-text.cursor-pointer.justify-content-center", {
                  onclick: window.toggleDarkMode
              }, [t()("img.lights-on[src='/images/content/lights-on.svg'][width=20][height=20]"), t()("img.lights-off[src='/images/content/lights-off.svg'][width=20][height=20]")])), t()("div", t()("ul.ul-navigation-horizontal.justify-content-center", [t()("li", t()(t().route.Link, {
                  class: "small",
                  href: "/legal#TermsofService"
              }, "Terms")), t()("li", t()(t().route.Link, {
                  class: "small",
                  href: "/legal#PrivacyPolicy"
              }, "Privacy")), t()("li", t()(t().route.Link, {
                  class: "small",
                  href: "/legal#gdpr"
              }, "GDPR")), t()("li", t()(t().route.Link, {
                  class: "small",
                  href: "/dmca"
              }, "DMCA")), t()("li", t()(t().route.Link, {
                  class: "small",
                  href: "/contact"
              }, "Complaints"))]))]))), U(t()("div.row.d-none.d-md-flex", [t()("div.col-md-4.col-xl-3", [t()("div.mb-24", t()("h1.mb-0", "Change the Game, Forever.")), t()("p.mb-32", [" 61 Saint Paul Street ", t()("br"), " Valletta VLT 1212 ", t()("br"), " Malta "]), t()("div", t()("ul.ul-navigation-horizontal.", [t()("li", t()(t().route.Link, {
                  class: "small",
                  href: "/legal#TermsofService"
              }, "Terms")), t()("li", t()(t().route.Link, {
                  class: "small",
                  href: "/legal#PrivacyPolicy"
              }, "Privacy")), t()("li", t()(t().route.Link, {
                  class: "small",
                  href: "/legal#gdpr"
              }, "GDPR")), t()("li", t()(t().route.Link, {
                  class: "small",
                  href: "/dmca"
              }, "DMCA")), t()("li", t()(t().route.Link, {
                  class: "small",
                  href: "/contact"
              }, "Complaints"))]))]), t()("div.col-md-3.offset-xl-1", t()("ul.list-unstyled", [t()("li", t()(t().route.Link, {
                  href: "/browse"
              }, t()("h4.mb-32", "Games"))), t()("li", t()(t().route.Link, {
                  href: "/contact"
              }, t()("h4.mb-32", "Contact"))), t()("li", t()("a", {
                  href: "https://frvr.com/tutorials/"
              }, t()("h4.mb-32", "Support")))])), t()("div.col-md-2", t()("ul.list-unstyled", [t()("li", t()("a[href='https://corp.frvr.com/']", t()("h6.external-link-icon.mb-24", "About Us"))), t()("li", t()("a[href='https://careers.frvr.com/']", t()("h6.external-link-icon.mb-24", "Careers")))])), t()("div.col-md-3.text-md-right", t()(t().route.Link, {
                  href: "/browse"
              }, t()("button.btn.btn-lg.btn-primary", "Browse Games")))])), t()("div.row.pt-32.pt-md-50.flex-column.flex-md-row", [t()("div.col.text-center.text-md-left", [t().trust("&copy;"), " 2023 FRVR."]), t()("div.col.text-center.d-flex.align-items-center.justify-content-center.my-32.my-md-0", [t()("div.mx-16", t()("a[href='https://www.facebook.com/frvrgames/']", t()("svg[xmlns='http://www.w3.org/2000/svg'][width='20'][height='20'][viewBox='0 0 10 20'][fill='none']", t()("path[d='M2.48612 20V10.6154H0.00463867V7.23652H2.48612V4.3505C2.48612 2.08264 3.95194 0 7.3295 0C8.69702 0 9.70824 0.1311 9.70824 0.1311L9.62856 3.28642C9.62856 3.28642 8.59728 3.27638 7.4719 3.27638C6.2539 3.27638 6.05876 3.83768 6.05876 4.7693V7.23652H9.72538L9.56584 10.6154H6.05876V20H2.48612Z'][fill='#1A1A1A']"))))])])]
          }
      };
      const xe = {
          view: function(e) {
              if (R.nativeMobilePopupData) {
                  var o = R.nativeMobilePopupData.game;
                  return t()(".overlay", {
                      oncreate: ()=>{
                          ga("send", "event", "native_mobile_popup", "show", o.id)
                      }
                  }, [t()(".blur", {
                      onclick: function() {
                          R.nativeMobilePopupData = null,
                          ga("send", "event", "native_mobile_popup", "hide", o.id)
                      }
                  }), t()(".popup", [t()(".title", "PLAY OFFLINE!"), t()(".close", {
                      onclick: function() {
                          R.nativeMobilePopupData = null,
                          ga("send", "event", "native_mobile_popup", "hide", o.id)
                      }
                  }, t().trust("&times;")), t()(".content", [t()("span", "Downloading " + o.name + " allows you to "), t()("strong", "play offline"), t()("span", " and directly from your homescreen.")]), t()(".actions", [t()("a.button-primary", {
                      href: R.nativeMobilePopupData.webPath,
                      onclick: ()=>{
                          c.registerPlay(o._id),
                          ga("send", "event", "native_mobile_popup", "play_web", o.id)
                      }
                  }, "PLAY HERE"), t()("a.button-secondary", {
                      href: R.nativeMobilePopupData.nativePath,
                      onclick: ()=>{
                          c.registerPlay(o._id),
                          ga("send", "event", "native_mobile_popup", "play_native", o.id)
                      }
                  }, "DOWNLOAD")])])])
              }
          }
      };
      const Te = {
          view: function() {
              return [R.games.map((e=>t()("div", [t()("span", e.name), t()("img", {
                  width: 192,
                  height: 192,
                  src: e.icon(192)
              }), t()("img", {
                  width: 256,
                  height: 256,
                  src: e.icon(256)
              }), t()("img", {
                  width: 600,
                  height: 314,
                  src: e.banner()
              })])))]
          }
      };
      let Ae = {
          data: {
              email: "",
              enquiry: "",
              game: "",
              os: "",
              device: "",
              platform: "",
              description: "",
              image: "",
              consent: !1
          },
          state: {
              attachingFile: !1,
              consentSeen: !1,
              submitFailure: !1,
              submitSuccess: !1,
              submitted: !1,
              imageSizeExceeded: !1
          },
          games: R.games,
          enquiries: [{
              id: 0,
              text: "I am having problems with a game"
          }, {
              id: 1,
              text: "I have a question about GDPR privacy policies"
          }, {
              id: 2,
              text: "I have questions about legal issues"
          }],
          userAgent: "",
          onGameSelect: e=>{
              Ae.data.game = e
          }
          ,
          onEnquirySelect: e=>{
              Ae.data.enquiry = Ae.enquiries[e - 1].text
          }
          ,
          onEmailChange: e=>{
              Ae.data.email = e.currentTarget.value
          }
          ,
          onImageChange: e=>{
              Ae.state.attachingFile = !0;
              const t = e.target.files[0];
              if (t.size > 3145728)
                  e.target.value = "",
                  Ae.state.imageSizeExceeded = !0,
                  Ae.state.attachingFile = !1;
              else {
                  let e = new FileReader;
                  e.onload = ()=>{
                      Ae.data.image = e.result,
                      Ae.data.image_type = t.type.split("/")[1],
                      Ae.state.attachingFile = !1
                  }
                  ,
                  e.readAsDataURL(t)
              }
          }
          ,
          onDeviceChange: e=>{
              Ae.data.device = e.currentTarget.value
          }
          ,
          onPlatformChange: e=>{
              Ae.data.platform = e.currentTarget.value
          }
          ,
          onDescriptionChange: e=>{
              Ae.data.description = e.currentTarget.value
          }
          ,
          onConsentChange: e=>{
              Ae.data.consent = e.currentTarget.checked,
              Ae.state.consentSeen = !0
          }
          ,
          onOSChange: e=>{
              Ae.data.os = e.currentTarget.value
          }
          ,
          postTicket: e=>{
              e.preventDefault(),
              Ae.state.submitted || (Ae.state.submitted = !0,
              t().request({
                  method: "POST",
                  url: "https://us-central1-frvr-hermes.cloudfunctions.net/sp-ticket-gen",
                  body: Ae.data
              }).then((()=>{
                  Ae.state.submitSuccess = !0,
                  console.log("[App] Support ticket submitted")
              }
              )).catch((e=>{
                  Ae.state.submitFailure = !0,
                  console.log(`[App] Support ticket failed: ${e}`)
              }
              )).then((()=>{
                  window.scrollTo(0, 0)
              }
              )))
          }
      };
      t().mount(document.getElementById("page-header"), Se),
      t().mount(document.getElementById("page-footer"), Pe),
      t().mount(document.getElementById("native-mobile-popup"), xe);
      
      
  }
  )()
}
)();
