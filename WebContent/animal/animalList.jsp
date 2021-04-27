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
	
	.a_listDIV {
		/* border: 1px solid red; */
		width: 480px;
		height: 1000px;
		float: left;
		/* margin-top: 150px; */
		margin-left: 27px;
	}

	.animals {
		float: left;
		list-style-type: none;
		position: relative;
	}

	ul {
		float: right;
		list-style-type: none;
		width: 280px; height: 200px;
		/* border: 1px solid orange; */
		position: relative;
		margin-left: 20px;
	}
	span {
		font-size: 17px; font-family: 'a타이틀고딕2';
	}
	
	li {
		font-size: 15px; font-family: 'a타이틀고딕1';
		line-height: 1.5em;	
	}
	
	.상세보기버튼 {
		width: 90px; height: 30px;
		font-size: 14px; font-family: 'a타이틀고딕1';
		background-color: lightgray;
		border-radius: 3px;
	}
	
	#a_safe {
		position : relative;
		width: 750px;
		margin: auto;
		/* border: 1px solid red; */
		margin-top: 40px;
	}
	
	#a_safe img{
		width: 100%; height: 100%;
	}
	
	#serchBar {
		position : relative;
		width: 800px; height: 150px;
		margin: auto;
		border: 2px dotted red;
		margin-top: 30px;
	}
	
	#paging {
		position: relative;
		float: inherit;
		/* border: 1px solid red; */
		top: 16px;
		left: 450px;
		
	}
	
	a {
		text-decoration: none;
	}
	
	.container2 {
		width: 350px;
		background-color: transparent;
		/* border: 2px solid purple; */
		position: relative;
		left: 50px;
		padding: 10px;
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
	
	hr {
		/* background-color: lightgray; */
		width: 95%;
	}
	
</style>

</head>
<body>
	<div class="clearfix" id="page"><!-- column -->
   <div class="position_content" id="page_position_content">
    <div class="browser_width colelem" id="u1442-bw">
     <div id="u1442"><!-- column -->
      <div class="clearfix" id="u1442_align_to_page">
       <div class="position_content" id="u1442_position_content">
        <div class="clip_frame colelem" id="u1519">
         <img class="block" id="u1519_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125"/>
        </div>
        
        
        <!-- NAV -->
        <div class="clearfix colelem" id="u1521"><!-- group -->
         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3263" href="../myinform/myInform">
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
         <div id="serchBar">
         	<p>검색바 들어갈 공간</p>
         </div>
         <div class="container2">
				<img id="catFoot" src="../images/catUL.png" width="32" height="56"/>
				<h2 id="boardTITLE">동물 리스트</h2>
		 </div>
		 <hr><br>
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
		<div id="paging">
		<c:set var="page" value="${totalPage}"/>
		<div>
		<c:forEach var="pageNum" begin="1" end="${page}" step="1">
			<a href="animalsList?page=${pageNum}">${pageNum}&nbsp;&nbsp;&nbsp;</a>
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
  <div class="preload_images">
   <img class="preload" src="../images/u3264-r.png?crc=333767328" alt=""/>
   <img class="preload" src="../images/u3268-r.png?crc=258751846" alt=""/>
   <img class="preload" src="../images/u3270-r.png?crc=4001421722" alt=""/>
  </div>
  
</body>
</html>