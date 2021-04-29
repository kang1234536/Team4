<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
	<link rel="stylesheet" type="text/css" href="../css/master_c-___.css"/>
	<link rel="stylesheet" type="text/css" href="../css/a_list.css" id="pagesheet"/>
<style>
	h2 {
		font-size: 20px; font-family: 'a타이틀고딕3';
	}
	
	a:link {
		text-decoration: none;
		color : blue;
	}
	
	a:visited {
		text-decoration: none;
		color : blue;
	}
	
	.a_listDIV {
		/* border: 2px solid purple; */
		width: 300px;
		height: 1000px;
		/* float: left; */
		/* margin-top: 150px; */
		margin-left: 35px;
		margin-right: 35px;
		flex: 1;
	}
	
	.animals {
		float: left;
		list-style-type: none;
		position: relative;
	}
	
	ul {
		float: right;
		list-style-type: none;
		width: 250px; height: 200px;
		/* border: 1px solid orange; */
		position: relative;
		margin-left: 20px;
		text-align: left;
	}
	
	span {
		font-size: 15px; font-family: 'a타이틀고딕2';
	}
	
	li {
		font-size: 13px; font-family: 'a타이틀고딕1';
		line-height: 1.7em;
		overflow: hidden;
		text-overflow: ellipsis;
  		white-space: nowrap;
		/* width: 80%; */	
	}
	
	.상세보기버튼 {
		width: 70px; height: 25px;
		font-size: 13px; font-family: 'a타이틀고딕2';
		background-color: #FDED91;
		border-radius: 5px;
		box-shadow: 2px 2px 5px #eee;
		border: 1px outset #FDED91;
		margin-top: 10px;
		position: absolute;
	}
	
	#a_safe {
		position : relative;
		width: 750px;
		margin: auto;
		/* border: 1px solid red; */
		margin-top: 30px;
	}
	
	#a_safe img{
		width: 100%; height: 100%;
	}
	
	#searchBar {
		position : relative;
		background-color: #FFF;
		box-shadow: 0 0 7px gray;
		width: 700px; height: 60px;
		margin: auto;
		margin-top: 20px;
		margin-bottom: 40px;
		padding: 20px;
	}
	
	#paging {
		position: relative;
		float: inherit;
		/* border: 1px solid red; */
		top: 30px;
		left: 450px;
	}
	
	.container2 {
		width: 350px;
		background-color: transparent;
		/* border: 2px solid purple; */
		position: relative;
		left: 70px;
		padding: 10px;
	}
	
	#catFoot {
		position: relative;
		margin-top: 10px;
	}
	
	#boardTITLE {
		font-size: 35px;
		font-family: 'a타이틀고딕3';
		display: inline;
		position: absolute;
		margin-left: 20px;
		margin-top: 30px;
		text-align: center;
	}
	
	hr {
		/* background-color: lightgray; */
		width: 90%;
		border: 1px dashed gray;
		border-top: none;
	}
	
	#searchHR {
		width: 100%;
		margin-bottom: 15px;
	}
	
	select {
		margin-right: 20px;
	}
	
	
	#klist {
		position: relative;
		float: right;
		
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
	
	#animalList {
		/* border: 1px solid red; */
		display: flex;
		min-height: 1000px;
		width: 1000px;
	}
	
	#animalPaging:link {
		text-decoration: none;
		color: black;
	}
	
	#animalPaging:visited {
		text-decoration: none;
		color: black;
	}
	
	#animalPaging:hover {
		text-decoration: none;
		color: blue;
	}
	
	#animalPaging:active {
		text-decoration: none;
		color: blue;
	}
	
</style>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
	function call(kind){
		$.ajax({
			url:"animalKind",
			data:{"kind":kind},
			success: function(responseData){
				$("#klist").html(responseData);
			}
		});
	}
</script>

</head>

<body>
	<div class="clearfix" id="page"><!-- column -->
		<div class="position_content" id="page_position_content">
			<div class="browser_width colelem" id="u1442-bw">
				<div id="u1442"><!-- column -->
					<div class="clearfix" id="u1442_align_to_page">
						<div class="position_content" id="u1442_position_content">
       
		<!-- 로그인버튼 -->
		<div class="clearfix colelem" id="loginheader">
			<c:if test="${userName != null}">
				<p class="loginICON">${userName}님 환영합니다!&nbsp;&nbsp;<a href="../LogoutServlet">로그아웃</a></p>
			</c:if>
			<c:if test="${userName == null}">
				<p class="loginICON"><a href="../login/LoginForm.jsp">로그인</a></p>
			</c:if>
		</div>
	       
        <div class="clip_frame colelem" id="u1519">
			<img class="block" id="u1519_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125"/>
        </div>
        
        <!-- NAV -->
        <div class="clearfix colelem" id="u1521"><!-- group -->
         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3263" href="../myinform/myinformation">
         <img class="grpelem" id="u3264" alt="내 정보" src="../images/blank.gif?crc=4208392903"/></a>
         <a class="nonblock nontext Button ButtonSelected rounded-corners clearfix grpelem" id="buttonu3265" href="animalsList">
         <img class="grpelem" id="u3266-4" alt="유기동물조회" width="103" height="20" src="../images/u3266-4-a.png?crc=155739993"/></a>
         <a class="nonblock nontext grpelem" id="u3271-4" href="../index.jsp">
         <img id="u3271-4_img" alt="멍냥멍냥" width="212" height="60" src="../images/u3271-4.png?crc=347814851"/></a>
         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3267" href="../board/boardlist">
         <img class="grpelem" id="u3268" alt="커뮤니티" src="../images/blank.gif?crc=4208392903"/></a>
         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3269" href="">
         <img class="grpelem" id="u3270" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/></a>
        </div>
        <div class="shadow clearfix colelem" id="u1522"><!-- group -->
         <div class="rounded-corners clearfix grpelem" id="u2957-3"><!-- content -->
         <section id="a_safe">
         <img src="../images/animal-safe-img.gif"/>
         </section>
         <div id="searchBar">
         	<h2>유기동물 검색</h2><hr id="searchHR">
         	
         	<span>시도&nbsp;</span>
	         	<select>
	         	<option>전체</option>
		         	<c:forEach var="local1" items="${local1 }" varStatus="status">
		         		<option>${local1}</option>
		         	</c:forEach>
	         	</select>
         	<span>시군구&nbsp;</span>
	         	<select>
	         	<option>전체</option>
		         	<c:forEach var="local2" items="${local2 }" varStatus="status">
		         		<option>${local2}</option>
		         	</c:forEach>
	         	</select>
         	<span>품종&nbsp;</span>
	         	<select name="kind" onchange="call(this.value);">
	         	<option>전체</option>
	         		<c:forEach var="kindSet" items="${kindSet }" varStatus="status">
		         		<option>${kindSet}</option>
		         	</c:forEach>
	         	</select>
	         	
	         	<div id="klist"></div>
	         	
         </div>
         <div class="container2">
				<img id="catFoot" src="../images/catUL.png" width="32" height="56"/>
				<h2 id="boardTITLE">동물 리스트</h2>
		 </div>
		 <hr><br>
         <div align="center"><div id="animalList"></div></div>
		<div id="paging">
		<c:set var="page" value="${totalPage}"/>
		<div>
		<c:forEach var="pageNum" begin="1" end="${page}" step="1">
			<a id="animalPaging" href="javascript:paging(${pageNum});">${pageNum}&nbsp;&nbsp;&nbsp;</a>
		</c:forEach>
		</div>
		</div>
      </div>
        </div>
       </div>
      </div>
     </div>
    </div>
    <!-- FOOTER -->
    <div class="browser_width colelem" id="u1441-bw">
     <div id="u1441"><!-- simple frame --></div>
    </div>
    <div class="verticalspacer" data-offset-top="2129" data-content-above-spacer="2313" data-content-below-spacer="0"></div>
   </div>
  </div>
  
  

<script>
	function paging(page){
		$.ajax({
			url:"animalListPage",
			data: {"page":page},
			success: function(responseData){
				$("#animalList").html(responseData);
			}
		});
	}
	paging(1);
</script>
	
</body>
</html>