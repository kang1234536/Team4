<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table class="boardTable">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<tr id="notice">
				<td>공지사항</td>
				<td><a href="" id="noticeA">[공지] 공지사항입니다. 필독</a></td>
				<td>관리자다</td>
				<td>2021-04-26</td>
				<td>0</td>
			</tr>

			<c:set var="seq" value="${list_length }" />
			<c:forEach var="board" items="${board_list}">
				<c:set var="seq" value="${seq-1 }" />
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
</body>
</html>