<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>메인페이지</h1>
<!-- 방법1 -->
<form name="map" method="get" action="MapServlet">
<input type="submit" value="map">
</form>
<form name="anilist" method="get" action="AnimalsListServlet">
<input type="submit" value="anilist">
</form>
<!-- 방법2 -->
<a href="MapServlet">보호소위치보기</a>
<a href="http://www.animal.go.kr/files/shelter/2021/03/202103221103735.jpg">이미지</a>
<a href="http://www.animal.go.kr/files/shelter/2021/03/202104011404671.jpg">이미지2</a>
<a href="http://www.animal.go.kr/files/shelter/2021/03/202103291603219.jpg">이미지3</a>
<!-- 방법3 -->
<table>
  <tr>
  	<td></td>
    <td>보호소위치</td>
    <td><button onclick="location.href='MapServlet?animalid=${animalid}'">지도보기</button></td>
  </tr>
</table>
</body>
</html>