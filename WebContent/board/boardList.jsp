<%@page import="java.util.List"%>
<%@page import="model.board.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>멍냥멍냥 게시판</title>

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css?crc=444006867"/>
	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css?crc=4037835255"/>
	<link rel="stylesheet" type="text/css" href="../css/board.css?crc=346539564" id="pagesheet"/>

<style>
	#loginoutbtn:link {
		text-decoration: none;
		color : blue;
	}
	
	#loginoutbtn:visited {
		text-decoration: none;
		color : blue;
	}
	
	a:link {
		text-decoration: none;
		color : black;
	}
	
	a:visited {
		text-decoration: none;
		color : black;
	}
	
	noticeA:link {
		color : red;
	}
	
	th {
		background-color: #F6C95E; 
		text-align: center;
		font-size: 18px; font-family: 'a타이틀고딕2';
		padding: 15px;
	}
	
	td {
		background-color: transparent; 
		text-align: center;
		font-size: 14px; font-family: 'a타이틀고딕1';
		padding: 10px;
		border-bottom: 1px dotted gray;
	}
	
	table {
		text-align: center;
		width: 800px;
	
	}
	
	.btn1 {
		float: right;
	}
		
	.container {
		margin-top: 50px;
		margin-bottom: 10px;
	}
	.container2 {
		width: 350px;
		background-color: transparent;
		position: relative;
		margin-top: 40px;
		left: 150px;
		padding: 10px;
		float: left;
	}
	
	.row {
		margin: 0 auto;
		padding-top: 30px;
	}
	
	.btn1 {
		width: 90px; height: 30px;
		font-size: 15px; font-family: 'a타이틀고딕2';
		text-shadow: 0.5px 0.5px 0.5px gray;
		background-color: #F6C95E;
		border-radius: 3px;
	}
	
	.a {
		text-align: center;
	}
	#notice {
		background-color: lightgray;
	}
	
	#notice td {
		color: red;
		font-family: 'a타이틀고딕3';
	}
	
	#catFoot {
		position: relative;
		margin-top: 10px;
	}
	
	#boardTITLE {
		font-size: 40px;
		font-family: 'a타이틀고딕3';
		display: inline;
		position: absolute;
		margin-left: 20px;
		margin-top: 35px;
		text-align: center;
	}
	
	.loginICON {
		font-size: 15px;
		text-decoration: none;
		font-family: 'a타이틀고딕2';
		float: right;
	}


</style>
</head>

<body>
	<div class="clearfix" id="page"><!-- column -->
	   <div class="position_content" id="page_position_content">
	    <div class="browser_width colelem" id="u1966-bw">
	     <div id="u1966"><!-- column -->
	      <div class="clearfix" id="u1966_align_to_page">
	       <div class="position_content" id="u1966_position_content">
	       
	       <!-- 로그인버튼 -->
	       <div class="clearfix colelem" id="loginheader">
	     	<c:if test="${username != null}">
				<p class="loginICON">${username}님 환영합니다!&nbsp;&nbsp;<a id="loginoutbtn" href="../LogoutServlet">로그아웃</a></p>
			</c:if>
			<c:if test="${username == null}">
				<p class="loginICON"><a id="loginoutbtn" href="../login/LoginForm.jsp">로그인</a></p>
			</c:if>
	       </div>
	       
	        <div class="clip_frame colelem" id="u3456">
	         <img class="block" id="u3456_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125"/>
	        </div>
	        
	        <!-- NAV -->
	        <div class="clearfix colelem" id="u3513"><!-- group -->
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3461" href="../myinform/myinform.jsp">
	         <img class="grpelem" id="u3462" alt="내 정보" src="../images/blank.gif?crc=4208392903"/></a>
	         
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3463" href="../animal/animalsList">
	         <img class="grpelem" id="u3464" alt="유기동물조회" src="../images/blank.gif?crc=4208392903"/></a>
	         
	         <a class="nonblock nontext grpelem" id="u3469-4" href="../index.jsp">
	         <img id="u3469-4_img" alt="멍냥멍냥" width="212" height="60" src="../images/u3469-4.png?crc=347814851"/></a>
	         
	         <a class="nonblock nontext Button ButtonSelected rounded-corners clearfix grpelem" id="buttonu3465" href="../board/boardlist">
	         <img class="grpelem" id="u3466-4" alt="커뮤니티" width="65" height="20" src="../images/u3466-4-a.png?crc=4069860665"/></a>
	         
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3467" href="">
	         <img class="grpelem" id="u3468" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/></a>
	        </div>
	        
	        
	        <div class="shadow clearfix colelem" id="u3821"><!-- group -->
	         
	         <div class="rounded-corners clearfix grpelem" id="u3822-3">
	         <!-- content -->
	         <!-- 게시판 메인 페이지 영역 시작 -->
			<div class="container2">
				<img id="catFoot" src="../images/catUL.png" width="32" height="56"/>
				<h2 id="boardTITLE">커뮤니티 게시판</h2>
			</div>
			<br><br><br>
			
			<!-- 게시판 메인 페이지 영역 시작 -->
				<div class="container">
					<div class="row" style="width: 800px;">
						<div id="boardTable"></div>
						<br>
						<c:set var="page" value="${totalData}"/>
						<div class="a">
						<c:forEach var="pageNum" begin="1" end="${page}" step="1">
							<a href="javascript:paging(${pageNum});">${pageNum}&nbsp;&nbsp;&nbsp;</a>
						</c:forEach>
						</div>
						<!-- 글쓰기 버튼 생성 -->
						<br>
						<button class="btn1" onclick="location='boardWrite'">WRITE</button>
					</div>
				</div>
				<!-- 게시판 메인 페이지 영역 끝 -->
	         
	         </div>
	         
	        </div>
	       </div>
	      </div>
	     </div>
	    </div>
	    
	    <div class="browser_width colelem" id="u1965-bw">
	     <div id="u1965"><!-- simple frame --></div>
	    </div>
	    <div class="verticalspacer" data-offset-top="1199" data-content-above-spacer="1300" data-content-below-spacer="0"></div>
	   </div>
	  </div>
	  
	  <script>
	  function paging(page){
		  $.ajax({
			  url:"boardListPage",
			  data: {"page":page},
			  success: function(responseData){
				  $("#boardTable").html(responseData);
			  }
		  });
	  }
	  paging(1);
	  </script>
</body>
</html>