<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width">
<title>멍냥멍냥 게시판 상세보기</title>

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
	<link rel="stylesheet" type="text/css" href="../css/boardDetail.css" id="pagesheet"/>

<style>
	a:link {
		text-decoration: none;
		color : blue;
	}
	
	a:visited {
		text-decoration: none;
		color : blue;
	}
	
	
	table, td {
		text-align: center; 
		border-bottom: 1px dotted gray;
		/* border-collapse: collapse; */
	}
	
	.td1 {
		background-color: #F6C95E; 
		text-align: center;
		font-size: 18px; font-family: 'a타이틀고딕2';
		padding: 20px;
		width: 150px;
	}
	
	.td2 {
		background-color: transparent; 
		text-align: left;
		font-size: 15px; font-family: 'a타이틀고딕1';
		padding: 10px;
		width: 800px;
	}
	
	.container {
		/* border: 1px solid red; */
		width: 1050px;
		margin-top: 100px;
	}
	
	.container2 {
		width: 350px;
		background-color: transparent;
		/* border: 1px solid red; */
		position: relative;
		margin-top: 40px;
		left: 150px;
		padding: 10px;
		float: left;
	}
	
	.row {
		/* border: 2px solid blue; */
		margin: 0 auto;
		width: 800px;
	}
	
	#td3 {
		background-color: transparent; 
		text-align: left;
		font-size: 15px; font-family: 'a타이틀고딕1';
		padding: 10px;
		width: 600px;
		height: 250px;
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
	
	.btn1 {
		width: 90px;
		height: 30px;
		font-size: 15px;
		font-family: 'a타이틀고딕2';
		text-shadow: 0.5px 0.5px 0.5px gray;
		background-color: #F6C95E;
		border-radius: 3px;
		float: right;
		margin-left: 5px;
		margin-top: 20px;
	}
	
	.loginICON {
		font-size: 15px;
		text-decoration: none;
		font-family: 'a타이틀고딕2';
		float: right;
	}
	
	#loginheader {
		z-index: 5;
		width: 1115px;
		/* border: 2px solid red; */
		left: 182.5px;
		position: relative;
	}
	
</style>

</head>

<body>
	<div class="clearfix" id="page">
		<div class="position_content" id="page_position_content">
		<div class="browser_width colelem" id="u1966-bw">
		<div id="u1966">
		<div class="clearfix" id="u1966_align_to_page">
		<div class="position_content" id="u1966_position_content">
		
		 <!-- 로그인버튼 -->
	       <div class="clearfix colelem" id="loginheader">
	     	<c:if test="${userName != null}">
				<p class="loginICON">${userName}님 환영합니다!&nbsp;&nbsp;<a href="../LogoutServlet">로그아웃</a></p>
			</c:if>
			<c:if test="${userName == null}">
				<p class="loginICON"><a href="../login/LoginForm.jsp">로그인</a></p>
			</c:if>
	       </div>
				
				
		<!-- 동물친구들이미지 -->
		<div class="clip_frame colelem" id="u2010">
		<img class="block" id="u2010_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125" />
		</div>
		<!-- 여기까지가 Header -->
				
			<!-- 여기서부터 Navigator -->
			<div class="clearfix colelem" id="u2954">
				<!-- 나의정보버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2060" href="../login/myinform.jsp">
				<img class="grpelem" id="u2061" alt="나의정보"	src="../images/blank.gif?crc=4208392903" />
				</a>
				<!-- 유기동물조회버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2062" href="../animal/animalsList">
				<img class="grpelem" id="u2063" alt="유기동물조회" src="../images/blank.gif?crc=4208392903" />
				</a>
				 <!-- 멍냥멍냥로고 -->
				<a class="nonblock nontext grpelem" id="u2059-4" href="../index.jsp">
				<img id="u2059-4_img" alt="멍냥멍냥" width="212" height="60" src="../images/u2059-4.png?crc=347814851" />
				</a>
				<!-- 커뮤니티버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2064" href="../board/boardlist">
		        <img class="grpelem" id="u2065" alt="커뮤니티" src="../images/blank.gif?crc=4208392903"/>
		        </a>
				<!-- QnA버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2066" href="">
         		<img class="grpelem" id="u2067" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/>
         		</a>
			</div>
			<!-- 여기까지가 Nav -->

		<!-- 여기서부터 Content -->
        <div class="shadow clearfix colelem" id="u2013">
         <div class="rounded-corners clearfix grpelem" id="u2511-3">
        
        <!-- 컨텐츠 들어갈공간 -->
        
        <!-- BOARD DETAIL -->
        <div class="container2">
			<img id="catFoot" src="../images/catUL.png" width="32" height="56"/>
			<h2 id="boardTITLE">커뮤니티 게시판</h2>
		</div>
		<br><br><br>
		<div class="container">
			<div class="row">
				<form action="boardlist">
					<table class="detail">
						<tbody>
							<tr>
								<td class="td1">제 목</td>
								<td class="td2">${board_detail.board_title}</td>
							</tr>
							<tr>
								<td class="td1">작성자</td>
								<td class="td2">${board_detail.user_ID}</td>
							</tr>
							<tr>
								<td class="td1">작성날짜</td>
								<td class="td2">${board_detail.board_date}</td>
							</tr>
							<tr>
								<td class="td1">내 용</td>
								<td class="td2" id="td3">${board_detail.board_content}</td>
							</tr>
						</tbody>
					</table>
					
					<!-- 목록 돌아가기 버튼 -->
					<input type="submit" class="btn1" value="목록">
					</form>
					
					<div>
					<!-- 삭제 -->
					<button class="btn1" onclick="del()">삭제</button>
					<!-- 수정 -->
					<button class="btn1" onclick="location='boardUpdate?board_ID=${param.board_ID}'">수정</button>
					</div>
				
			</div>
		</div>
	</div>
	
	
	<script>
	function del(){
		if(confirm('삭제하시겠습니까?')){
			location.href='boardDelete?board_ID=${param.board_ID}';
		}
	}
	</script>
          
          
           
          </div>
          
         </div>
        </div>
        <!-- 여기까지가 Content -->
        
       </div>
      </div>
     </div>
    </div>
    
    <!-- footer(회색뒷배경) -->
    <div class="browser_width colelem" id="u1965-bw">
     <div id="u1965"></div>
    </div>
    <div class="verticalspacer" data-offset-top="1235" data-content-above-spacer="1300" data-content-below-spacer="0"></div>


	
</body>
</html>