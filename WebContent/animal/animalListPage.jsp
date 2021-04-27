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
<div class="a_listDIV">
			<c:forEach var="animal" items="${aniList }" varStatus="status">
				<c:if test="${status.count%2 eq 1}">
					<li class="animals"><img src="${animal.popfile}" width="180" height="180">
						<ul>
							<li><span>유기번호 : </span>${animal.animalID}</li>
							<li><span>발견장소 : </span>${animal.happenPlace}</li>
							<li><span>발견날짜 : </span>${animal.happenDate}</li>
							<li><span>상태 : </span>${animal.state}</li><br>
							<li><button	class="상세보기버튼" onclick="location.href='AnimalDetailServlet?animalId=${animal.animalID}'">상세보기</button></li>
						</ul>
					</li>
				</c:if>
			</c:forEach>
		</div>

		<div class="a_listDIV">
			<c:forEach var="animal" items="${aniList }" varStatus="status">
				<c:if test="${status.count%2 eq 0}">
					<li class="animals"><img src="${animal.popfile}" width="180" height="180">
						<ul>
							<li><span>유기번호 : </span>${animal.animalID}</li>
							<li><span>발견장소 : </span>${animal.happenPlace}</li>
							<li><span>발견날짜 : </span>${animal.happenDate}</li>
							<li><span>상태 : </span>${animal.state}</li><br>
							<li><button	class="상세보기버튼" onclick="location.href='AnimalDetailServlet?animalId=${animal.animalID}'">상세보기</button></li>
						</ul>
					</li>
				</c:if>
			</c:forEach>​
		</div>
</body>
</html>