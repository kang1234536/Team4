<%-- <%@page import="com.sun.org.apache.xpath.internal.functions.Function"%> --%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width">
<title>멍냥멍냥 게시판 글쓰기</title>
<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="../css/site_global.css?crc=444006867" />
<link rel="stylesheet" type="text/css"
	href="../css/master_b-___.css?crc=4037835255" />
<link rel="stylesheet" type="text/css"
	href="../css/board.css?crc=346539564" id="pagesheet" />
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
<div class="clearfix" id="page">
	<!-- column -->
	<div class="position_content" id="page_position_content">
	<div class="browser_width colelem" id="u1966-bw">
	<div id="u1966">
		<!-- column -->
		<div class="clearfix" id="u1966_align_to_page">
			<div class="position_content" id="u1966_position_content">

			<!-- 로그인버튼 -->
			<div class="clearfix colelem" id="loginheader">
				<c:if test="${userName != null}">
					<p class="loginICON">${userName}님
						환영합니다!<a href="../LogoutServlet">로그아웃</a>
					</p>
				</c:if>
				<c:if test="${userName == null}">
					<p class="loginICON">
						<a href="../login/LoginForm.jsp">로그인</a>
					</p>
				</c:if>
			</div>

			<div class="clip_frame colelem" id="u3456">
				<img class="block" id="u3456_img"
					src="../images/index-animalfriends.png?crc=414174054" alt=""
					width="677" height="125" />
			</div>

			<!-- NAV -->
			<div class="menubar">
				<!-- group -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3461" href="../myinform/myinform.jsp"> 
				<img class="grpelem" id="u3462" alt="내 정보" src="../images/blank.gif?crc=4208392903" /></a> 
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3463" href="../animal/animalsList"> 
				<img class="grpelem" id="u3464" alt="유기동물조회" src="../images/blank.gif?crc=4208392903" /></a> 
				<a class="nonblock nontext grpelem" id="u3469-4" href="../index.jsp"> <img id="u3469-4_img" alt="멍냥멍냥" width="212" height="60" src="../images/u3469-4.png?crc=347814851" /></a>

				<div class="nonblock nontext Button ButtonSelected rounded-corners clearfix grpelem" id="buttonu3465">
					<a class="nonblock nontext grpelem" id="u3231" href="boardlist">
					<img class="grpelem" id="u3466-4" alt="커뮤니티" width="65" height="20" src="../images/u3466-4-a.png?crc=4069860665" /></a>
				</div>

				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3467" href="qnalist"> 
				<img class="grpelem" id="u3468" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903" /></a>
			</div>


			<div class="shadow clearfix colelem" id="u3821">
				<!-- group -->

				<div class="rounded-corners clearfix grpelem" id="u3822-3">

					<br> <br> <br>
					<!-- 게시판 글쓰기 양식 영역 시작 -->
					<div class="container">
					<div class="row">
						<form action="boardUpdate" method="post">
						<input type="hidden" name="boardID" value="${param.board_ID }">
							<table class="table table-striped" style="text-align: center;  width: 1000px;">
								<tbody>
									<tr>
										<td class="td1">제목</td>
										<td><input type="text" class="form-control" name="Title" maxlength="50" style="width: 900px;" value="${board.board_title }"></td>
									</tr>
									<tr>
										<td class="td1">내용</td>
										<td><textarea class="form-control" name="Content" maxlength="2048" style="height: 500px; width: 900px;">${board.board_content }</textarea></td>
									</tr>
								</tbody>
							</table>
							<!-- 수정 버튼 생성 -->
							<input type="submit" class="btn1" value="수정">  
						</form>
					</div>
					</div>
					</div>
				</div>
			</div>
		</div>

		<div class="browser_width colelem" id="u1965-bw">
			<div id="u1965">
				<!-- simple frame -->
			</div>
		</div>
		<div class="verticalspacer" data-offset-top="1199"
			data-content-above-spacer="1300" data-content-below-spacer="0"></div>
	</div>
	</div>
	</div>
</div>

	<!-- 게시판 글쓰기 양식 영역 끝 -->
</body>
</html>