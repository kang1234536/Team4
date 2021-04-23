<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>

 <c:forEach var="animal" items="${aniList }">
	  <tr>
	  <td>
	  	<td><img src="${animal.popfile}" width="100" height="100"></td>
	    <td>${animal.animalID}</td>
	    <td>${animal.happenPlace}</td>
	    <td>${animal.happenDate}</td>
	    <td>${animal.state}</td>
	    <td><td><button onclick="location.href='AnimalDetailServlet?animalId=${animal.animalID}'">상세보기</button></td>
	  </tr>
	  
	  
</c:forEach>
  
       


</table>
</body>
</html>