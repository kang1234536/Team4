<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="nojs html css_verticalspacer" lang="ko-KR">
<head>
  <meta http-equiv="Content-type" content="text/html;charset=UTF-8"/>
  <meta name="generator" content="2018.0.0.379"/>

  
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
     	
     	<c:if test="${username != null}">
			<p class="loginICON">${username}님 환영합니다!<a href="LogoutServlet">로그아웃</a></p>
		</c:if>
		<c:if test="${username == null}">
			<p class="loginICON"><a href="login/LoginForm.jsp">로그인</a></p>
		</c:if>
		
       </div>
       
       <!-- 동물친구들 -->
       <div class="clip_frame colelem" id="u1461">
        <img class="block" id="u1461_img" src="images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125"/>
       </div>
       
       <!-- NAVI -->
       <div class="clearfix colelem" id="u1609"><!-- group -->
       
        <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3226" href="myinform/myInform">
        <img class="grpelem" id="u3227" alt="내 정보" src="images/blank.gif?crc=4208392903"/></a>
        <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3228" href="animal/animalsList">
        <img class="grpelem" id="u3229" alt="유기동물조회" src="images/blank.gif?crc=4208392903"/></a>
        <div class="clearfix grpelem" id="pu3260-4"><!-- column -->
         <a href="index.jsp">
         <img class="colelem" id="u3260-4" alt="멍냥멍냥" width="212" height="60" src="images/u3260-4.png?crc=347814851"/></a>
         <div class="clip_frame colelem" id="u1463">
          <!-- 고양이사진 -->
          <img class="block" id="u1463_img" src="images/%ea%b3%a0%ec%96%91%ec%9d%b41.png?crc=22901423" alt="" width="270" height="241"/>
         </div>
        </div>
        <div class="pointer_cursor Button rounded-corners transition clearfix grpelem" id="buttonu3230">
         <a class="nonblock nontext grpelem" id="u3231" href="board/boardlist">
         <img id="u3231_states" alt="커뮤니티" src="images/blank.gif?crc=4208392903"/></a>
        </div>
        <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3232" href="qna.html">
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
      <img class="colelem" id="u1465-4" alt="&lt; 멍냥멍냥 &gt;" width="130" height="30" src="images/u1465-4.png?crc=4231403855"/>
      <img class="colelem" id="u1466-7" alt="&quot; 사지말고 입양하세요 &quot; 작은 관심이 많은 생명을 살립니다." width="290" height="62" src="images/u1466-7.png?crc=3923293643"/>
     </div>
    </div>
    <div class="verticalspacer" data-offset-top="845" data-content-above-spacer="999" data-content-below-spacer="0"></div>
   </div>
  </div>
  
  
<div class="preload_images">
   <img class="preload" src="images/u3227-r.png?crc=333767328"/>
   <img class="preload" src="images/u3229-r.png?crc=196503113"/>
   <img class="preload" src="images/u3231_states-r.png?crc=258751846"/>
   <img class="preload" src="images/u3233-r.png?crc=4001421722"/>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</body>
</html>