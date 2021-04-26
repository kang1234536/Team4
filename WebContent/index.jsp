<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="nojs html css_verticalspacer" lang="ko-KR">
<head>
    <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
    <meta name="generator" content="2018.0.0.379"/>

    <script type="text/javascript">
        // Update the 'nojs'/'js' class on the html node
        document.documentElement.className = document.documentElement.className.replace(/\bnojs\b/g, 'js');
        // Check that all required assets are uploaded and up-to-date
        if (typeof Muse == "undefined") window.Muse = {};
        window.Muse.assets = {
            "required": ["museutils.js", "museconfig.js", "jquery.watch.js", "require.js", "index.css"],
            "outOfDate": []
        };
    </script>

    <title>멍냥멍냥</title>
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="css/site_global.css?crc=444006867"/>
    <link rel="stylesheet" type="text/css" href="css/master_a-___.css?crc=4158216669"/>
    <link rel="stylesheet" type="text/css" href="css/index.css?crc=3782126585" id="pagesheet"/>

    <style>
        #loginICON {
            float: right;
        }
    </style>

</head>
<body>
<!-- HEADER -->
<div class="clearfix" id="page"><!-- column -->
    <div class="position_content" id="page_position_content">
        <div class="browser_width colelem" id="u129-bw">
            <div id="u129"><!-- column -->
                <div class="clearfix" id="u129_align_to_page">

                    <!-- 로그인버튼 -->
                    <div class="clearfix colelem" id="loginheader">

                        <c:if test="${userID != null}">
                            <p class="loginICON">${userID}님 환영합니다!<a href="LogoutServlet">로그아웃</a></p>
                        </c:if>
                        <c:if test="${userID == null}">
                            <p class="loginICON"><a href="login/LoginForm.jsp">로그인</a></p>
                        </c:if>

                    </div>

                    <!-- 동물친구들 -->
                    <div class="clip_frame colelem" id="u1461">
                        <img class="block" id="u1461_img" src="images/index-animalfriends.png?crc=414174054" alt=""
                             width="677" height="125"/>
                    </div>

                    <!-- NAVI -->
                    <div class="clearfix colelem" id="u1609"><!-- group -->

                        <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3226"
                           href="">
                            <img class="grpelem" id="u3227" alt="내 정보" src="images/blank.gif?crc=4208392903"/></a>
                        <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3228"
                           href="AnimalsListServlet">
                            <img class="grpelem" id="u3229" alt="유기동물조회" src="images/blank.gif?crc=4208392903"/></a>
                        <div class="clearfix grpelem" id="pu3260-4"><!-- column -->
                            <img class="colelem" id="u3260-4" alt="멍냥멍냥" width="212" height="60"
                                 src="images/u3260-4.png?crc=347814851"/>
                            <div class="clip_frame colelem" id="u1463">
                                <!-- 고양이사진 -->
                                <img class="block" id="u1463_img"
                                     src="images/%ea%b3%a0%ec%96%91%ec%9d%b41.png?crc=22901423" alt="" width="270"
                                     height="241"/>
                            </div>
                        </div>
                        <div class="pointer_cursor Button rounded-corners transition clearfix grpelem" id="buttonu3230">
                            <a class="nonblock nontext grpelem" id="u3231" href="board/boardlist">
                                <img id="u3231_states" alt="커뮤니티" src="images/blank.gif?crc=4208392903"/></a>
                        </div>
                        <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3232"
                           href="qna.html">
                            <img class="grpelem" id="u3233" alt="Q &amp; A" src="images/blank.gif?crc=4208392903"/></a>
                    </div>

                </div>
            </div>
        </div>

        <!-- FOOTER -->
        <div class="clearfix colelem" id="pu128"><!-- group -->
            <div class="browser_width grpelem" id="u128-bw">
                <div id="u128"></div>
            </div>
            <div class="shadow clearfix grpelem" id="u1615"><!-- column -->
                <img class="colelem" id="u1465-4" alt="&lt; 멍냥멍냥 &gt;" width="130" height="30"
                     src="images/u1465-4.png?crc=4231403855"/>
                <img class="colelem" id="u1466-7" alt="&quot; 사지말고 입양하세요 &quot; 작은 관심이 많은 생명을 살립니다." width="290"
                     height="62" src="images/u1466-7.png?crc=3923293643"/>
            </div>
        </div>
        <div class="verticalspacer" data-offset-top="845" data-content-above-spacer="999"
             data-content-below-spacer="0"></div>
    </div>
</div>

<div class="preload_images">
    <img class="preload" src="images/u3227-r.png?crc=333767328"/>
    <img class="preload" src="images/u3229-r.png?crc=196503113"/>
    <img class="preload" src="images/u3231_states-r.png?crc=258751846"/>
    <img class="preload" src="images/u3233-r.png?crc=4001421722"/>
</div>

<!-- Other scripts -->
<script type="text/javascript">
    // Decide weather to suppress missing file error or not based on preference setting
    var suppressMissingFileError = false
</script>
<script type="text/javascript">
    window.Muse.assets.check = function (d) {
        if (!window.Muse.assets.checked) {
            window.Muse.assets.checked = !0;
            var b = {}, c = function (a, b) {
                if (window.getComputedStyle) {
                    var c = window.getComputedStyle(a, null);
                    return c && c.getPropertyValue(b) || c && c[b] || ""
                }
                if (document.documentElement.currentStyle) return (c = a.currentStyle) && c[b] || a.style && a.style[b] || "";
                return ""
            }, a = function (a) {
                if (a.match(/^rgb/)) return a = a.replace(/\s+/g, "").match(/([\d\,]+)/gi)[0].split(","), (parseInt(a[0]) << 16) + (parseInt(a[1]) << 8) + parseInt(a[2]);
                if (a.match(/^\#/)) return parseInt(a.substr(1),
                    16);
                return 0
            }, g = function (g) {
                for (var f = document.getElementsByTagName("link"), h = 0; h < f.length; h++) if ("text/css" == f[h].type) {
                    var i = (f[h].href || "").match(/\/?css\/([\w\-]+\.css)\?crc=(\d+)/);
                    if (!i || !i[1] || !i[2]) break;
                    b[i[1]] = i[2]
                }
                f = document.createElement("div");
                f.className = "version";
                f.style.cssText = "display:none; width:1px; height:1px;";
                document.getElementsByTagName("body")[0].appendChild(f);
                for (h = 0; h < Muse.assets.required.length;) {
                    var i = Muse.assets.required[h], l = i.match(/([\w\-\.]+)\.(\w+)$/), k = l && l[1] ?
                        l[1] : null, l = l && l[2] ? l[2] : null;
                    switch (l.toLowerCase()) {
                        case "css":
                            k = k.replace(/\W/gi, "_").replace(/^([^a-z])/gi, "_$1");
                            f.className += " " + k;
                            k = a(c(f, "color"));
                            l = a(c(f, "backgroundColor"));
                            k != 0 || l != 0 ? (Muse.assets.required.splice(h, 1), "undefined" != typeof b[i] && (k != b[i] >>> 24 || l != (b[i] & 16777215)) && Muse.assets.outOfDate.push(i)) : h++;
                            f.className = "version";
                            break;
                        case "js":
                            h++;
                            break;
                        default:
                            throw Error("Unsupported file type: " + l);
                    }
                }
                d ? d().jquery != "1.8.3" && Muse.assets.outOfDate.push("jquery-1.8.3.min.js") : Muse.assets.required.push("jquery-1.8.3.min.js");
                f.parentNode.removeChild(f);
                if (Muse.assets.outOfDate.length || Muse.assets.required.length) f = "서버의 일부 파일이 누락되었거나 올바르지 않습니다. 브라우저 캐시를 지우고 다시 시도하십시오. 문제가 지속되면 웹사이트 작성자에게 문의하십시오.", g && Muse.assets.outOfDate.length && (f += "\nOut of date: " + Muse.assets.outOfDate.join(",")), g && Muse.assets.required.length && (f += "\nMissing: " + Muse.assets.required.join(",")), suppressMissingFileError ? (f += "\nUse SuppressMissingFileError key in AppPrefs.xml to show missing file error pop up.", console.log(f)) : alert(f)
            };
            location && location.search && location.search.match && location.search.match(/muse_debug/gi) ?
                setTimeout(function () {
                    g(!0)
                }, 5E3) : g()
        }
    };
    var muse_init = function () {
        require.config({baseUrl: ""});
        require(["jquery", "museutils", "whatinput", "jquery.watch"], function (d) {
            var $ = d;
            $(document).ready(function () {
                try {
                    window.Muse.assets.check($);/* body */
                    Muse.Utils.transformMarkupToFixBrowserProblemsPreInit();/* body */
                    Muse.Utils.prepHyperlinks(true);/* body */
                    Muse.Utils.resizeHeight('.browser_width');/* resize height */
                    Muse.Utils.requestAnimationFrame(function () {
                        $('body').addClass('initialized');
                    });/* mark body as initialized */
                    Muse.Utils.makeButtonsVisibleAfterSettingMinWidth();/* body */
                    Muse.Utils.fullPage('#page');/* 100% height page */
                    Muse.Utils.showWidgetsWhenReady();/* body */
                    Muse.Utils.transformMarkupToFixBrowserProblems();/* body */
                } catch (b) {
                    if (b && "function" == typeof b.notify ? b.notify() : Muse.Assert.fail("Error calling selector function: " + b), false) throw b;
                }
            })
        })
    };

</script>
<!-- RequireJS script -->
<script src="scripts/require.js?crc=4157109226" type="text/javascript" async
        data-main="scripts/museconfig.js?crc=4153641093"
        onload="if (requirejs) requirejs.onError = function(requireType, requireModule) { if (requireType && requireType.toString && requireType.toString().indexOf && 0 <= requireType.toString().indexOf('#scripterror')) window.Muse.assets.check(); }"
        onerror="window.Muse.assets.check();"></script>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</body>
</html>
