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
<title>멍냥멍냥 게시판</title>
<style>
body {margin: 100px 300px;}
th {background-color: #eeeeee; text-align: center;}
table {text-align: center; border: 1px solid black; width: 800px;}
.btn1 {float: right;}
</style>
</head>
<body>
	<!-- 게시판 메인 페이지 영역 시작 -->
	<div class="container">
		<div class="row" style="width: 800px;">
			<table class="boardTable">
				<thead>
					<tr>
						<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th>
					</tr>
				</thead>
				<tbody>
				<c:set var="seq" value="${list_length }"/>
				<c:forEach var="board" items="${board_list}">
				    <c:set var="seq" value="${seq-1 }"/>
					<c:url value="boardDetail" var="board_ID">
						<c:param name="board_ID" value="${board.board_ID}"></c:param>
					</c:url>
				<tr>  
					<td>${seq}</td>
					<td><a href="${board_ID}">${board.board_title }</a></td>
					<td>${board.user_ID }</td>
					<td>${board.board_date }</td>
					<td>${board.board_count}</td>
				</tr>
				</c:forEach>
				</tbody>
			</table>
			<!-- 글쓰기 버튼 생성 -->
			<br>
			<button class="btn1" onclick="location='boardWrite'">WRITE</button>
		</div>
	</div>
	<!-- 게시판 메인 페이지 영역 끝 -->

</body>
</html>