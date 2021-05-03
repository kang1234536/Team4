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
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
	<link rel="stylesheet" type="text/css" href="../css/notice.css" id="pagesheet"/>

<style>
	.menubar {
		position:absolute;
		z-index: 30;
		width: 1115px;
		background-color: #FFFCEC;
		padding-top: 49px;
		padding-bottom: 49px;
		/* border: 1px solid red; */
		margin-left: 182px;
		transition: 0.3s;
	}
	.menubar.sticky {
		position: fixed; 
		top:0;
		z-index: 30;
		background-color: #FFFCEC;
		box-shadow: 0 2px 5px rgba(0,0,0,0.1);
		height: 65px;
		padding-top: 28px;
		padding-bottom: 14px;
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
	     	<c:if test="${userName != null}">
				<p class="loginICON">${userName}님 환영합니다!&nbsp;&nbsp;<a id="loginoutbtn" href="../LogoutServlet">로그아웃</a></p>
			</c:if>
			<c:if test="${userName == null}">
				<p class="loginICON"><a id="loginoutbtn" href="../login/LoginForm.jsp">로그인</a></p>
			</c:if>
	       </div>
	       
	        <div class="clip_frame colelem" id="u3456">
	         <img class="block" id="u3456_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125"/>
	        </div>
	        
	        <!-- NAV -->
	        <div class="menubar"><!-- group -->
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3461" href="../myinform/myinform.jsp">
	         <img class="grpelem" id="u3462" alt="내 정보" src="../images/blank.gif?crc=4208392903"/></a>
	         
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3463" href="../animal/animalsFirst">
	         <img class="grpelem" id="u3464" alt="유기동물조회" src="../images/blank.gif?crc=4208392903"/></a>
	         
	         <a class="nonblock nontext grpelem" id="u3469-4" href="../index.jsp">
	         <img id="u3469-4_img" alt="멍냥멍냥" width="212" height="60" src="../images/u3469-4.png?crc=347814851"/></a>
	         
	         <a class="nonblock nontext Button ButtonSelected rounded-corners clearfix grpelem" id="buttonu3465" href="../board/boardlist">
	         <img class="grpelem" id="u3466-4" alt="커뮤니티" width="65" height="20" src="../images/u3466-4-a.png?crc=4069860665"/></a>
	         
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3467" href="../board/qnalist">
	         <img class="grpelem" id="u3468" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/></a>
	        </div>
	        
	        
	        <div class="shadow clearfix colelem" id="u3821"><!-- group -->
	         
	         <div class="rounded-corners clearfix grpelem" id="u3822-3">
	         <!-- content -->
	         <!-- 게시판 메인 페이지 영역 시작 -->
			<div class="container2">
				<img id="catFoot" src="../images/catUL.png" width="32" height="56"/>
				<h2 id="boardTITLE">자주묻는 질문</h2>
			</div>
			<br><br><br>
			
			<!-- 게시판 메인 페이지 영역 시작 -->
				<div class="container">
					<div class="row" style="width: 800px;">
						<table class="boardTable">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody>
							<tr id="notice">
								<td>Q & A</td>
								<td><a href="https://www.animal.go.kr/front/community/show.do?boardId=contents&seq=53&menuNo=1000000058" target="_blank" id="noticeA">[답변] 입양 안내 </a></td>
								<td>관리자</td>
								<td>2021-04-26</td>
							</tr>
							<tr id="notice">
								<td>Q & A</td>
								<td><a href="https://www.animal.go.kr/front/community/show.do?boardId=contents&seq=209&menuNo=1000000056" target="_blank" id="noticeA">[답변] 습득시 안내 </a></td>
								<td>관리자</td>
								<td>2021-04-26</td>
							</tr>
							<tr id="notice">
								<td>Q & A</td>
								<td><a href="https://m.blog.naver.com/PostView.nhn?blogId=maelson&logNo=220076734719&proxyReferer=https:%2F%2Fwww.google.com%2F" target="_blank" id="noticeA">[답변] (소형견)강아지들의 종별 특성은 어떤가요?</a></td>
								<td>관리자</td>
								<td>2021-04-26</td>
							</tr>
							<tr id="notice">
								<td>Q & A</td>
								<td><a href="https://m.blog.naver.com/maelson/220078423354" target="_blank" id="noticeA">[답변] (중형견)강아지들의 종별 특성은 어떤가요?</a></td>
								<td>관리자</td>
								<td>2021-04-26</td>
							</tr>
							<tr id="notice">
								<td>Q & A</td>
								<td><a href="https://namu.wiki/w/%EA%B3%A0%EC%96%91%EC%9D%B4/%EC%8A%B5%EC%84%B1" target="_blank" id="noticeA">[답변] 고양이들의 특성은 어떤가요?</a></td>
								<td>관리자</td>
								<td>2021-04-26</td>
							</tr>
						</tbody>
					</table>
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
	  
</body>
</html>