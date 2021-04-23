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
<meta name="viewport" content="width-device-width" , initial-scale="1">
<title>JSP 게시판 웹 사이트</title>
<style>
body {margin: 100px 300px;}
th {style=background-color: #eeeeee; text-align: center;}
table {style=text-align: center; border: 1px solid black; width: 800px;border-collapse:collapse;}
.btn1 {float: right;}
</style>
</head>
<body>
	<%
	BoardDAO boarddao = new BoardDAO();
	List<BoardVO> boardlist = boarddao.selectList();
	Date nowDate = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy/MM/dd");
	%>
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
				<%for(BoardVO board:boardlist){ %>
					<tr>
						<td><%=board.getBoard_ID() %></td>
						<td><%=board.getBoard_title() %></td>
						<td><%=board.getUser_ID() %></td>
						<td><%=board.getBoard_date() %></td>
						<td><%=board.getBoard_count() %></td>
					</tr>
				<%} %>
				</tbody>
			</table>
			<!-- 글쓰기 버튼 생성 -->
			<br>
			<button class="btn1" onclick="location='write.jsp'">WRITE</button>
		</div>
	</div>
	<!-- 게시판 메인 페이지 영역 끝 -->

</body>
</html>