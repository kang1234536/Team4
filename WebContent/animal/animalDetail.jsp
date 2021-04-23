<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<img src="${animal.popfile}" width="100" height="100">
<br>
${animal.animalID }
<br>
${animal.color}
<br>
${animal.age}
<br>
${animal.sex}
<br>
${animal.weight}
<br>
${animal.neuter}
<br>
${animal.happenDate}
<br>
${animal.happenPlace}
<br>
${animal.spacialMark}
<br>
${animal.state}
<br>
${animal.careName}
<br>
${animal.careTel}
<br>
${animal.careAddr}
<br>
${animal.bookNum}

<%@ include file="/map/carePlaceSearch.jsp" %>


</body>
</html>