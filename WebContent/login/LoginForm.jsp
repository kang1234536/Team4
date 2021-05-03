<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
            charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

    <script type="text/javascript">
        // Update the 'nojs'/'js' class on the html node
        document.documentElement.className = document.documentElement.className.replace(/\bnojs\b/g, 'js');
        // Check that all required assets are uploaded and up-to-date
        if (typeof Muse == "undefined") window.Muse = {};
        window.Muse.assets = {
            "required": ["museutils.js", "museconfig.js", "webpro.js", "musewpdisclosure.js", "jquery.watch.js", "require.js", "login.css"],
            "outOfDate": []
        };

    </script>

    <script>
        var m = "${message}";
        /* alert(m.replace(".", ".\n")); */

    </script>

    <%
        // 인코딩 처리
        response.setCharacterEncoding("utf-8");
    %>

    <title>로그인 화면</title>

    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
    <link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
    <link rel="stylesheet" type="text/css" href="../css/login.css" id="pagesheet"/>

    <script type="text/javascript">
        // 회원가입 버튼 클릭시 회원가입 화면으로 이동
        function goRegisterForm() {
            location.href = "RegisterForm.jsp";
        }
        function SelectID(){
            $("#myModal").show();

        }
        function SelectPW(){
            $("#myModal3").show();

        }
        function close_pop(flag) {
            $('#myModal').hide();
            $("#idfind_name").val("");
        };
        function close_pop2(flag) {
            $('#myModal2').hide();
        };
        function close_pop3(flag) {
            $('#myModal3').hide();
        };
        function close_pop4(flag) {
            $('#myModal4').hide();
        };
        function idfind(){
            var x= $("#idfind_name").val().trim();
            if(x.length < 1){
                alert("아이디를 입력하세요");
                return;
            }
            $.ajax({
                url : "../SelectIDServlet",
                data : {
                    "username" : x
                },
                type : "POST",
                success : function(responseData) {
                    if(responseData=="false"){
                        alert("아이디가 다릅니다");
                        $("#idfind_name").val("");
                    }
                    else{
                        $('#myModal').hide();
                        $('#myModal2').show();
                        $("#idfind_name2").val(responseData);
                        /* 	 alert("아이디를 찾았습니다."+responseData);  */
                    }

                }
            });
        }
        function PWfind(){
            var x= $("#PWfind_ID").val().trim();
            var y= $("#PWfind_NAME").val().trim();

            if(x.length < 1){
                alert("아이디를 입력하세요");
                return;
            }else if(y.length<1){
                alert("이름을 입력하세요");
                return;
            }
            $.ajax({
                url : "../SelectPWServlet",
                data : {
                    "userid" :x,
                    "username" : y
                },
                type : "POST",
                success : function(responseData) {
                    if(responseData=="false"){
                        alert("아이디 또는 이름이 틀렸습니다.")
                        $("#PWfind_ID").val("");
                        $("#PWfind_NAME").val("");
                    }


                    else {
                        alert("비밀먼호를  재설정하겠습니다");
                        $('#myModal3').hide();
                        $('#myModal4').show();


                    }


                }


            });
        }
        function settingpw(){
            var a= $("#PWfind_ID").val().trim();
            var b= $("#PWfind_NAME").val().trim();
            var x= $("#PWfind_PW1").val().trim();
            var y= $("#PWfind_PW2").val().trim();
            if(x.length < 1){
                alert("비밀번호를 입력하세요");
                return;
            }else if(y.length<1){
                alert("비밀번호를 입력해주세요");
            }else if(x!=y){
                alert("비밀번호를 똑같이 입력해주세요");
            }
            $.ajax({
                url : "../UpdatePwServlet",
                data : {
                    "userpw1" :x,
                    "userid" :a,
                    "username" :b
                },
                type : "POST",
                success : function(responseData) {


                    $('#myModal4').hide();
                    alert("비밀먼호가  재설정 되었습니다.");



                }


            });





        }

    </script>
</head>

<body>

<div class="clearfix" id="page">
    <div class="position_content" id="page_position_content">
        <div class="browser_width colelem" id="u1966-bw">
            <div id="u1966">
                <div class="clearfix" id="u1966_align_to_page">
                    <div class="position_content" id="u1966_position_content">


                        <!-- 동물친구들이미지 -->
                        <div class="clip_frame colelem" id="u2010">
                            <img class="block" id="u2010_img" src="../images/index-animalfriends.png?crc=414174054"
                                 alt="" width="677" height="125"/>
                        </div>
                        <!-- 여기까지가 Header -->

                        <!-- 여기서부터 Navigator -->
                        <div class="clearfix colelem" id="u2954">
                            <!-- 나의정보버튼 -->
                            <a class="nonblock nontext Button rounded-corners transition clearfix grpelem"
                               id="buttonu2060" href="../myinform/myinformation">
                                <img class="grpelem" id="u2061" alt="나의정보" src="../images/blank.gif?crc=4208392903"/>
                            </a>
                            <!-- 유기동물조회버튼 -->
                            <a class="nonblock nontext Button rounded-corners transition clearfix grpelem"
                               id="buttonu2062" href="../animal/animalsFirst">
                                <img class="grpelem" id="u2063" alt="유기동물조회" src="../images/blank.gif?crc=4208392903"/>
                            </a>
                            <!-- 멍냥멍냥로고 -->
                            <a class="nonblock nontext grpelem" id="u2059-4" href="../index.jsp">
                                <img id="u2059-4_img" alt="멍냥멍냥" width="212" height="60"
                                     src="../images/u2059-4.png?crc=347814851"/>
                            </a>
                            <!-- 커뮤니티버튼 -->
                            <a class="nonblock nontext Button rounded-corners transition clearfix grpelem"
                               id="buttonu2064" href="../board/boardlist">
                                <img class="grpelem" id="u2065" alt="커뮤니티" src="../images/blank.gif?crc=4208392903"/>
                            </a>
                            <!-- QnA버튼 -->
                            <a class="nonblock nontext Button rounded-corners transition clearfix grpelem"
                               id="buttonu2066" href="../board/qnalist">
                                <img class="grpelem" id="u2067" alt="Q &amp; A"
                                     src="../images/blank.gif?crc=4208392903"/>
                            </a>
                        </div>
                        <!-- 여기까지가 Nav -->

                        <!-- 여기서부터 Content -->
                        <div class="shadow clearfix colelem" id="u2013">
                            <div class="rounded-corners clearfix grpelem" id="u2511-3">

                                <!-- 회원유형선택 -->
                                <img class="grpelem" id="u2234-4" alt="회원 유형 선택" width="180" height="36"
                                     src="../images/u2234-4.png?crc=421627513"/>
                                <div class="clip_frame grpelem" id="u2985">
                                    <img class="block" id="u2985_img" src="../images/dogul.png?crc=3768580682" alt=""
                                         width="29" height="51"/>
                                </div>

                                <!-- 유형선택 개인or보호소 -->
                                <div class="TabbedPanelsWidget clearfix grpelem" id="tab-panelu2860">
                                    <div class="TabbedPanelsTabGroup clearfix colelem" id="u2874">
                                        <div class="TabbedPanelsTab clearfix grpelem" id="u2879">
                                            <img class="NoWrap grpelem" id="u2882" alt="개인"
                                                 src="../images/blank.gif?crc=4208392903"/>
                                        </div>
                                        <div class="TabbedPanelsTab clearfix grpelem" id="u2875">
                                            <img class="NoWrap grpelem" id="u2878" alt="보호소"
                                                 src="../images/blank.gif?crc=4208392903"/>
                                        </div>
                                    </div>

                                    <!-- 로그인FORM -->
                                    <div class="TabbedPanelsContentGroup clearfix colelem" id="u2861">
                                        <div class="TabbedPanelsContent grpelem" id="u2866">
                                            <div id="loginform">
                                                <form id="loginfrm" action="LoginCheckServlet" method="post"
                                                      onsubmit="return checkValue()">
                                                    <c:choose>
                                                        <c:when test="${check == -1}">
                                                            <p style="color:red">아이디가 존재하지 않습니다.</p><br>
                                                        </c:when>
                                                        <c:when test="${check == 0}">
                                                            <p style="color:red">비밀번호가 올바르지 않습니다.</p><br>
                                                        </c:when>
                                                    </c:choose>
                                                    <input type="text" name="userID" maxlength="50" placeholder="아이디"
                                                           required><br><br>
                                                    <input type="password" name="userPW" maxlength="50"
                                                           placeholder="비밀번호"
                                                           required><br><br><br>
                                                    <input type="submit" value="로그인">
                                                </form>

                                                <form name="naverLogin" action="../NaverCallbackServlet" method="post">
                                                    <button id="naverlogin" type="submit"><img width="100%"
                                                                                               src="../images/naver_button1.png">
                                                    </button>
                                                </form>

                                                <form name="kakaoLogin" action="../KakaoCallbackServlet" method="post">
                                                    <button id="kakaologin" type="submit">
                                                        <img id="kakaobtn" height="38px" src="../images/kakao_button.png"/>
                                                    </button>
                                                </form>
                                                <br><br>
                                                <p>아직 계정이 없으신가요?&nbsp;&nbsp;<a href="../RegisterCheckServlet">회원가입</a>
                                                </p>
                                                <p>ID를 잊어버리셨나요?&nbsp;&nbsp;<a href="javascript:SelectID();">ID찾기</a>
                                                <p>비밀번호를 잊어버리셨나요?&nbsp;&nbsp;<a href="javascript:SelectPW();">PW찾기</a><br>
                                                    <!-- The Modal -->
                                                    <!--start   -->
                                                <div id="myModal" class="modal">
                                                    <!-- Modal content -->
                                                    <div class="modal-content">
                                                        <div style="text-align: center;">
                                                            <span style="font-size: 14pt;"><b><span style="font-size: 20pt; font-family: 'a타이틀고딕4';">★아이디찾기★</span></b></span>
                                                        </div><br>
                                                        <div style="text-align: center; font-family: 'a타이틀고딕4';">

                                                            <br>이름&nbsp;&nbsp;<input id="idfind_name" type="text" style="border: 1px solid black;"><br>

                                                        </div>
                                                        <br><br>
                                                        <div  align="center"> <!--onClick="close_pop();"  -->
                                                            <button class="btn" style="font-size: 13pt;" onclick="idfind();">확인</button>
                                                            <button class="btn" style="font-size: 13pt;" onclick="close_pop();">취소</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--End Modal-->
                                                <!--start   -->
                                                <div id="myModal2" class="modal">
                                                    <!-- Modal content -->
                                                    <div class="modal-content">
                                                        <div style="text-align: center;">
                                                            <span style="font-size: 14pt;"><b><span style="font-size: 20pt; font-family: 'a타이틀고딕4';">★아이디를 찾았습니다.★</span></b></span>
                                                        </div><br>
                                                        <div style="text-align: center; font-family: 'a타이틀고딕4';">

                                                            <br>아이디:&nbsp;&nbsp;<input id="idfind_name2" type="text" ><br>

                                                        </div>
                                                        <br><br>
                                                        <div  align="center"> <!--onClick="close_pop();"  -->
                                                            <button class="btn" style="font-size: 13pt;" onclick="close_pop2();">확인</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--End Modal-->
                                                <!--start   -->
                                                <div id="myModal3" class="modal">
                                                    <!-- Modal content -->
                                                    <div class="modal-content">
                                                        <div style="text-align: center;">
                                                            <span style="font-size: 14pt;"><b><span style="font-size: 20pt; font-family: 'a타이틀고딕4';">★비밀번호찾기★</span></b></span>
                                                        </div><br>
                                                        <div style="text-align: center; font-family: 'a타이틀고딕4';">

                                                            <br>아이디&nbsp;&nbsp;<input id="PWfind_ID" type="text" style="border: 1px solid black;"><br>
                                                            <br>이름&nbsp;&nbsp;<input id="PWfind_NAME" type="text" style="border: 1px solid black;"><br>

                                                        </div>
                                                        <br><br>
                                                        <div  align="center"> <!--onClick="close_pop();"  -->
                                                            <button class="btn" style="font-size: 13pt;" onclick="PWfind();">확인</button>
                                                            <button class="btn" style="font-size: 13pt;" onclick="close_pop3();">취소</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--End Modal-->
                                                <!--start   -->
                                                <div id="myModal4" class="modal">
                                                    <!-- Modal content -->
                                                    <div class="modal-content">
                                                        <div style="text-align: center;">
                                                            <span style="font-size: 14pt;"><b><span style="font-size: 20pt; font-family: 'a타이틀고딕4';">★비밀번호를 재설정.★</span></b></span>
                                                        </div><br>
                                                        <div style="text-align: center; font-family: 'a타이틀고딕4';">

                                                            <br>비밀번호:&nbsp;&nbsp;<input id="PWfind_PW1" type="text" style="border: 1px solid black;" ><br>
                                                            <br>비밀번호 확인:&nbsp;&nbsp;<input id="PWfind_PW2" type="text" style="border: 1px solid black;" ><br>

                                                        </div>
                                                        <br><br>
                                                        <div  align="center"> <!--onClick="close_pop();"  -->
                                                            <button class="btn" style="font-size: 13pt; " onclick="settingpw();" >비밀번호 재설정</button>
                                                            <button class="btn" style="font-size: 13pt;  " onclick="close_pop4();">취소</button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--End Modal-->
                                                </p>
                                            </div>
                                        </div>

                                        <div class="TabbedPanelsContent invi grpelem" id="u2862">
                                            <div id="loginform2">
                                                <form id="loginfrm2" action="LoginCheckServlet" method="post"
                                                      onsubmit="return checkValue()">
                                                    <input type="text" name="userID" maxlength="50"
                                                           placeholder="아이디"><br><br>
                                                    <input type="password" name="userPW" maxlength="50"
                                                           placeholder="비밀번호"><br><br><br>
                                                    <input type="submit" value="로그인"><br><br><br>
                                                </form>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- 여기까지가 Content -->
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer(회색뒷배경) -->
        <div class="browser_width colelem" id="u1965-bw">
            <div id="u1965"></div>
        </div>
        <div class="verticalspacer" data-offset-top="1235" data-content-above-spacer="1300"
             data-content-below-spacer="0">
        </div>
    </div>
</div>


<div class="preload_images">
    <img class="preload" src="../images/u2061-r.png?crc=4100690000" alt=""/>
    <img class="preload" src="../images/u2063-r.png?crc=196503113" alt=""/>
    <img class="preload" src="../images/u2065-r.png?crc=79327677" alt=""/>
    <img class="preload" src="../images/u2067-r.png?crc=258751846" alt=""/>
    <img class="preload" src="../images/u2882-r.png?crc=290301145" alt=""/>
    <img class="preload" src="../images/u2882-a.png?crc=205142701" alt=""/>
    <img class="preload" src="../images/u2878-r.png?crc=416687771" alt=""/>
    <img class="preload" src="../images/u2878-a.png?crc=3785110063" alt=""/>
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
        require(["jquery", "museutils", "whatinput", "webpro", "musewpdisclosure", "jquery.watch"], function (d) {
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
                    Muse.Utils.initWidget('#tab-panelu2860', ['#bp_infinity'], function (elem) {
                        return new WebPro.Widget.TabbedPanels(elem, {event: 'click', defaultIndex: 0});
                    });/* #tab-panelu2860 */
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

</body>
</html>