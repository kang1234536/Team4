<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git
<html>
<head>

<script type="text/javascript">
   // Update the 'nojs'/'js' class on the html node
document.documentElement.className = document.documentElement.className.replace(/\bnojs\b/g, 'js');

// Check that all required assets are uploaded and up-to-date
if(typeof Muse == "undefined") window.Muse = {}; window.Muse.assets = {"required":["museutils.js", "museconfig.js", "webpro.js", "musewpdisclosure.js", "jquery.watch.js", "require.js", "login.css"], "outOfDate":[]};
</script>

    <%
        // ì¸ì½”ë”© ì²˜ë¦¬
        request.setCharacterEncoding("euc-kr");
    %>
<<<<<<< HEAD
    <title>ë¡œê·¸ì¸ í™”ë©´</title>
=======
    
    <title>·Î±×ÀÎ È­¸é</title>
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
	<link rel="stylesheet" type="text/css" href="../css/login.css" id="pagesheet"/>

    <script type="text/javascript">
<<<<<<< HEAD
        function checkValue() {
            inputForm = eval("document.loginInfo");
            if (!inputForm.userID.value) {
                alert("ì•„ì´ë””ë¥¼ ì…ë ¥í•˜ì„¸ìš”");
                inputForm.userID.focus();
                return false;
            }
            if (!inputForm.userPW.value) {
                alert("ë¹„ë°€ë²ˆí˜¸ë¥¼ ì…ë ¥í•˜ì„¸ìš”");
                inputForm.userPW.focus();
                return false;
            }
        }
=======
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git

        // íšŒì›ê°€ì… ë²„íŠ¼ í´ë¦­ì‹œ íšŒì›ê°€ì… í™”ë©´ìœ¼ë¡œ ì´ë™
        function goRegisterForm() {
            location.href = "RegisterForm.jsp";
        }
    </script>
</head>

<body>

<div class="clearfix" id="page">
		<div class="position_content" id="page_position_content">
		<div class="browser_width colelem" id="u1966-bw">
		<div id="u1966">
		<div class="clearfix" id="u1966_align_to_page">
		<!-- ·Î±×ÀÎ¹öÆ° -->
       <div class="clearfix colelem" id="loginheader">
     	<c:if test="${userID != null}">
			<p class="loginICON">${username}´Ô È¯¿µÇÕ´Ï´Ù!<a href="LogoutServlet">·Î±×¾Æ¿ô</a></p>
		</c:if>
		<c:if test="${userID == null}">
			<p class="loginICON"><a href="login/LoginForm.jsp">·Î±×ÀÎ</a></p>
		</c:if>
		   <div><p>${msg}</p></div>
       </div>
		
		
		<div class="position_content" id="u1966_position_content">
				
				
		<!-- µ¿¹°Ä£±¸µéÀÌ¹ÌÁö -->
		<div class="clip_frame colelem" id="u2010">
		<img class="block" id="u2010_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125" />
		</div>
		<!-- ¿©±â±îÁö°¡ Header -->
				
			<!-- ¿©±â¼­ºÎÅÍ Navigator -->
			<div class="clearfix colelem" id="u2954">
				<!-- ³ªÀÇÁ¤º¸¹öÆ° -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2060" href="">
				<img class="grpelem" id="u2061" alt="³ªÀÇÁ¤º¸"	src="../images/blank.gif?crc=4208392903" />
				</a>
				<!-- À¯±âµ¿¹°Á¶È¸¹öÆ° -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2062" href="AnimalsListServlet">
				<img class="grpelem" id="u2063" alt="À¯±âµ¿¹°Á¶È¸" src="../images/blank.gif?crc=4208392903" />
				</a>
				 <!-- ¸Û³É¸Û³É·Î°í -->
				<a class="nonblock nontext grpelem" id="u2059-4" href="../index.jsp">
				<img id="u2059-4_img" alt="¸Û³É¸Û³É" width="212" height="60" src="../images/u2059-4.png?crc=347814851" />
				</a>
				<!-- Ä¿¹Â´ÏÆ¼¹öÆ° -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2064" href="../board/boardlist">
		        <img class="grpelem" id="u2065" alt="Ä¿¹Â´ÏÆ¼" src="../images/blank.gif?crc=4208392903"/>
		        </a>
				<!-- QnA¹öÆ° -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2066" href="../qna.html">
         		<img class="grpelem" id="u2067" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/>
         		</a>
			</div>
			<!-- ¿©±â±îÁö°¡ Nav -->

<<<<<<< HEAD
        <table>
            <tr>
                <td>ì•„ì´ë””</td>
                <td><input type="text" name="userID" maxlength="50"></td>
            </tr>
            <tr>
                <td>ë¹„ë°€ë²ˆí˜¸</td>
                <td><input type="password" name="userPW" maxlength="50"></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="ë¡œê·¸ì¸"/>
        <input type="button" value="íšŒì›ê°€ì…" onclick="goRegisterForm()"/>
    </form>
=======
		<!-- ¿©±â¼­ºÎÅÍ Content -->
        <div class="shadow clearfix colelem" id="u2013">
         <div class="rounded-corners clearfix grpelem" id="u2511-3"></div>
        
        <!-- È¸¿øÀ¯Çü¼±ÅÃ -->
         <img class="grpelem" id="u2234-4" alt="È¸¿ø À¯Çü ¼±ÅÃ" width="180" height="36" src="../images/u2234-4.png?crc=421627513"/>
         <div class="clip_frame grpelem" id="u2985">
          <img class="block" id="u2985_img" src="../images/dogul.png?crc=3768580682" alt="" width="29" height="51"/>
         </div>
        
        <!-- À¯Çü¼±ÅÃ °³ÀÎorº¸È£¼Ò -->
         <div class="TabbedPanelsWidget clearfix grpelem" id="tab-panelu2860">
          <div class="TabbedPanelsTabGroup clearfix colelem" id="u2874">
           <div class="TabbedPanelsTab clearfix grpelem" id="u2879">
            <img class="NoWrap grpelem" id="u2882" alt="°³ÀÎ" src="../images/blank.gif?crc=4208392903"/>
           </div>
           <div class="TabbedPanelsTab clearfix grpelem" id="u2875">
            <img class="NoWrap grpelem" id="u2878" alt="º¸È£¼Ò" src="../images/blank.gif?crc=4208392903"/>
           </div>
          </div>
          
          <!-- ·Î±×ÀÎFORM -->
          <div class="TabbedPanelsContentGroup clearfix colelem" id="u2861">
           <div class="TabbedPanelsContent grpelem" id="u2866">
			
			<form id="loginfrm" action="LoginCheckServlet" method="post" onsubmit="return checkValue()">
				<input type="text" name="userID" maxlength="50" placeholder="¾ÆÀÌµğ" required><br><br>
				<input type="password" name="userPW" maxlength="50" placeholder="ºñ¹Ğ¹øÈ£" required><br><br><br>
				<input type="submit" value="·Î±×ÀÎ"><br><br><br>
				<p>¾ÆÁ÷ °èÁ¤ÀÌ ¾øÀ¸½Å°¡¿ä? <a href="RegisterForm.jsp">È¸¿ø°¡ÀÔ</a></p>
			</form>
			
		   </div>
           <div class="TabbedPanelsContent invi grpelem" id="u2862">
			<form id="loginfrm2" action="LoginCheckServlet" method="post" onsubmit="return checkValue()">
				<input type="text" name="userID" maxlength="50" placeholder="¾ÆÀÌµğ"><br><br>
				<input type="password" name="userPW" maxlength="50" placeholder="ºñ¹Ğ¹øÈ£"><br><br><br>
				<input type="submit" value="·Î±×ÀÎ"><br><br><br>
			</form>
		   </div>
          </div>
          
         </div>
        </div>
        <!-- ¿©±â±îÁö°¡ Content -->
        
       </div>
      </div>
     </div>
    </div>
    
    <!-- footer(È¸»öµŞ¹è°æ) -->
    <div class="browser_width colelem" id="u1965-bw">
     <div id="u1965"></div>
    </div>
    <div class="verticalspacer" data-offset-top="1235" data-content-above-spacer="1300" data-content-below-spacer="0"></div>
    
   </div>
  </div>
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git

<<<<<<< HEAD
    <%
        // ì•„ì´ë””, ë¹„ë°€ë²ˆí˜¸ê°€ í‹€ë¦´ê²½ìš° í™”ë©´ì— ë©”ì‹œì§€ í‘œì‹œ
        // LoginCheck.jspì—ì„œ ë¡œê·¸ì¸ ì²˜ë¦¬ ê²°ê³¼ì— ë”°ë¥¸ ë©”ì‹œì§€ë¥¼ ë³´ë‚¸ë‹¤.
        String msg = request.getParameter("msg");
=======
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git

<<<<<<< HEAD
        if (msg != null && msg.equals("0")) {
            out.println("<br>");
            out.println("<font color='red' size='5'>ë¹„ë°€ë²ˆí˜¸ë¥¼ í™•ì¸í•´ ì£¼ì„¸ìš”.</font>");
        } else if (msg != null && msg.equals("-1")) {
            out.println("<br>");
            out.println("<font color='red' size='5'>ì•„ì´ë””ë¥¼ í™•ì¸í•´ ì£¼ì„¸ìš”.</font>");
        }
    %>
=======

<div class="preload_images">
   <img class="preload" src="images/u2061-r.png?crc=4100690000" alt=""/>
   <img class="preload" src="images/u2063-r.png?crc=196503113" alt=""/>
   <img class="preload" src="images/u2065-r.png?crc=79327677" alt=""/>
   <img class="preload" src="images/u2067-r.png?crc=258751846" alt=""/>
   <img class="preload" src="images/u2882-r.png?crc=290301145" alt=""/>
   <img class="preload" src="images/u2882-a.png?crc=205142701" alt=""/>
   <img class="preload" src="images/u2878-r.png?crc=416687771" alt=""/>
   <img class="preload" src="images/u2878-a.png?crc=3785110063" alt=""/>
>>>>>>> branch 'master' of https://github.com/kang1234536/Team4.git
</div>


<!-- Other scripts -->
<script type="text/javascript">
	// Decide weather to suppress missing file error or not based on preference setting
	var suppressMissingFileError = false
</script>
<script type="text/javascript">
	window.Muse.assets.check=function(d){if(!window.Muse.assets.checked){window.Muse.assets.checked=!0;var b={},c=function(a,b){if(window.getComputedStyle){var c=window.getComputedStyle(a,null);return c&&c.getPropertyValue(b)||c&&c[b]||""}if(document.documentElement.currentStyle)return(c=a.currentStyle)&&c[b]||a.style&&a.style[b]||"";return""},a=function(a){if(a.match(/^rgb/))return a=a.replace(/\s+/g,"").match(/([\d\,]+)/gi)[0].split(","),(parseInt(a[0])<<16)+(parseInt(a[1])<<8)+parseInt(a[2]);if(a.match(/^\#/))return parseInt(a.substr(1),
	16);return 0},g=function(g){for(var f=document.getElementsByTagName("link"),h=0;h<f.length;h++)if("text/css"==f[h].type){var i=(f[h].href||"").match(/\/?css\/([\w\-]+\.css)\?crc=(\d+)/);if(!i||!i[1]||!i[2])break;b[i[1]]=i[2]}f=document.createElement("div");f.className="version";f.style.cssText="display:none; width:1px; height:1px;";document.getElementsByTagName("body")[0].appendChild(f);for(h=0;h<Muse.assets.required.length;){var i=Muse.assets.required[h],l=i.match(/([\w\-\.]+)\.(\w+)$/),k=l&&l[1]?
	l[1]:null,l=l&&l[2]?l[2]:null;switch(l.toLowerCase()){case "css":k=k.replace(/\W/gi,"_").replace(/^([^a-z])/gi,"_$1");f.className+=" "+k;k=a(c(f,"color"));l=a(c(f,"backgroundColor"));k!=0||l!=0?(Muse.assets.required.splice(h,1),"undefined"!=typeof b[i]&&(k!=b[i]>>>24||l!=(b[i]&16777215))&&Muse.assets.outOfDate.push(i)):h++;f.className="version";break;case "js":h++;break;default:throw Error("Unsupported file type: "+l);}}d?d().jquery!="1.8.3"&&Muse.assets.outOfDate.push("jquery-1.8.3.min.js"):Muse.assets.required.push("jquery-1.8.3.min.js");
	f.parentNode.removeChild(f);if(Muse.assets.outOfDate.length||Muse.assets.required.length)f="¼­¹öÀÇ ÀÏºÎ ÆÄÀÏÀÌ ´©¶ôµÇ¾ú°Å³ª ¿Ã¹Ù¸£Áö ¾Ê½À´Ï´Ù. ºê¶ó¿ìÀú Ä³½Ã¸¦ Áö¿ì°í ´Ù½Ã ½ÃµµÇÏ½Ê½Ã¿À. ¹®Á¦°¡ Áö¼ÓµÇ¸é À¥»çÀÌÆ® ÀÛ¼ºÀÚ¿¡°Ô ¹®ÀÇÇÏ½Ê½Ã¿À.",g&&Muse.assets.outOfDate.length&&(f+="\nOut of date: "+Muse.assets.outOfDate.join(",")),g&&Muse.assets.required.length&&(f+="\nMissing: "+Muse.assets.required.join(",")),suppressMissingFileError?(f+="\nUse SuppressMissingFileError key in AppPrefs.xml to show missing file error pop up.",console.log(f)):alert(f)};location&&location.search&&location.search.match&&location.search.match(/muse_debug/gi)?
	setTimeout(function(){g(!0)},5E3):g()}};
	var muse_init=function(){require.config({baseUrl:""});require(["jquery","museutils","whatinput","webpro","musewpdisclosure","jquery.watch"],function(d){var $ = d;$(document).ready(function(){try{
	window.Muse.assets.check($);/* body */
	Muse.Utils.transformMarkupToFixBrowserProblemsPreInit();/* body */
	Muse.Utils.prepHyperlinks(true);/* body */
	Muse.Utils.resizeHeight('.browser_width');/* resize height */
	Muse.Utils.requestAnimationFrame(function() { $('body').addClass('initialized'); });/* mark body as initialized */
	Muse.Utils.makeButtonsVisibleAfterSettingMinWidth();/* body */
	Muse.Utils.initWidget('#tab-panelu2860', ['#bp_infinity'], function(elem) { return new WebPro.Widget.TabbedPanels(elem, {event:'click',defaultIndex:0}); });/* #tab-panelu2860 */
	Muse.Utils.fullPage('#page');/* 100% height page */
	Muse.Utils.showWidgetsWhenReady();/* body */
	Muse.Utils.transformMarkupToFixBrowserProblems();/* body */
	}catch(b){if(b&&"function"==typeof b.notify?b.notify():Muse.Assert.fail("Error calling selector function: "+b),false)throw b;}})})};
</script>
<!-- RequireJS script -->
<script src="scripts/require.js?crc=4157109226" type="text/javascript" async data-main="scripts/museconfig.js?crc=4153641093" onload="if (requirejs) requirejs.onError = function(requireType, requireModule) { if (requireType && requireType.toString && requireType.toString().indexOf && 0 <= requireType.toString().indexOf('#scripterror')) window.Muse.assets.check(); }" onerror="window.Muse.assets.check();"></script>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</body>
</html>