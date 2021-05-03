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
	.menubar {
		position:absolute;
		z-index: 6;
		width: 1115px;
		background-color: #FFFCEC;
		padding-top: 49px;
		padding-bottom: 49px;
		margin-left: 182px;
		transition: 0.3s;
	}
	.menubar.sticky {
		position: fixed; 
		top:0;
		z-index: 6;
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
   <div class="position_content" id="page_position_content">
    <div class="browser_width colelem" id="u1442-bw">
     <div id="u1442">
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
        <div class="menubar">
         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3263" href="../myinform/myInform">
         <img class="grpelem" id="u3264" alt="내 정보" src="../images/blank.gif?crc=4208392903"/></a>
         <a class="nonblock nontext Button ButtonSelected rounded-corners clearfix grpelem" id="buttonu3265" href="animalsFirst">
         <img class="grpelem" id="u3266-4" alt="유기동물조회" width="103" height="20" src="../images/u3266-4-a.png?crc=155739993"/></a>
         <a class="nonblock nontext grpelem" id="u3271-4" href="../index.jsp">
         <img id="u3271-4_img" alt="멍냥멍냥" width="212" height="60" src="../images/u3271-4.png?crc=347814851"/></a>
         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3267" href="../board/boardlist">
         <img class="grpelem" id="u3268" alt="커뮤니티" src="../images/blank.gif?crc=4208392903"/></a>
         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3269" href="../board/qnalist">
         <img class="grpelem" id="u3270" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/></a>
        </div>
        
        <div class="shadow clearfix colelem" id="u1522">
         <div class="rounded-corners clearfix grpelem" id="u2957-3">
         <section id="a_safe">
         <img src="../images/animal-safe-img.gif"/>
         </section>

         <div id="searchBar">
         	<h2>유기동물 검색</h2><hr id="searchHR">
         	<span>시도&nbsp;&nbsp;</span>
	         	<select name="local1Select"  onchange="localSave(this.value);">
	         	<option>전체</option>
		         	<c:forEach var="local1" items="${local1 }" varStatus="status">
		         	<option>${local1}</option>
		         	</c:forEach>
	         	</select>
         	<span>시군구&nbsp;&nbsp;</span>
	         	<select name="local2Select" onchange="slocalSave(this.value);">
	         	<option>전체</option>
		         	<c:forEach var="local2" items="${local2 }" varStatus="status">
		         	<option>${local2}</option>
		         	</c:forEach>
	         	</select>
         	<span>품종&nbsp;&nbsp;</span>
         	
	         	<select name="kind" onchange="call(this.value);">
	         		<option>전체</option>
	         		
	         		<c:forEach var="kindSet" items="${kindSet }" varStatus="status">
		         		<option>${kindSet}</option>
		         	</c:forEach>
	         	</select>
	         	<div id="klist">
	         		<select name="detailSelect" onchange="call2(this.value);">
						<option>전체</option>
						<c:forEach var="detailSet" items="${detailSet }">
						    	<option>${detailSet}</option>
						</c:forEach>
					</select>
	         	</div>
	         	<br>
	         	<div>
			       	<button	name="searchBtn" id="btn">검색</button>
			    </div>
         
         	
         </div>
         <div class="container2">
				<img id="catFoot" src="../images/catUL.png" width="32" height="56"/>
				<h2 id="boardTITLE">동물 리스트</h2>
		 </div>
		 <hr><br>
		 
		 
		 
          <div align="center">
          <div class="animalList" id="alist">
	         <div class="a_listDIV">
		<c:forEach var="animal" items="${aniList }" varStatus="status">
			<c:if test="${status.count%2 eq 1}">
				<li class="animals"><img src="${animal.popfile}" width="150" height="150">
					<!-- <div align="left" style="border: 1px solid red; width:279px; height: 204px;"> -->
					<ul>
						<li><span>유기번호 : </span>${animal.animalID}</li>
						<li><span>발견장소 : </span>${animal.happenPlace}</li>
						<li><span>발견날짜 : </span>${animal.happenDate}</li>
						<li><span>상태 : </span>${animal.state}</li><br>
						<li><button	class="상세보기버튼" onclick="location.href='AnimalDetailServlet?animalId=${animal.animalID}'">상세보기</button></li>
					</ul>
					<!-- </div> -->
				</li>
			</c:if>
		</c:forEach>
	</div>

	<div class="a_listDIV">
		<c:forEach var="animal" items="${aniList }" varStatus="status">
			<c:if test="${status.count%2 eq 0}">
				<li class="animals"><img src="${animal.popfile}" width="150" height="150">
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
			<br><br><br>
			
	      	  <div id="paging">
					<c:set var="page" value="${totalPage}"/>
					<div>
					<c:forEach var="pageNum" begin="1" end="${page}" step="1">
						<a id="animalPaging" href="javascript:pageChange(${pageNum});">${pageNum}&nbsp;&nbsp;&nbsp;</a>
					</c:forEach>
					</div>
			</div><!-- paging -->
			</div><!-- list -->
			</div>
      	  
        </div>
       </div>
      </div>
     </div>
    </div>
    <!-- FOOTER -->
    <div class="browser_width colelem" id="u1441-bw">
     <div id="u1441"></div>
    </div>
    <div class="verticalspacer" data-offset-top="2129" data-content-above-spacer="2313" data-content-below-spacer="0"></div>
   </div>
  </div>
  <div class="preload_images">
   <img class="preload" src="../images/u3264-r.png?crc=333767328" alt=""/>
   <img class="preload" src="../images/u3268-r.png?crc=258751846" alt=""/>
   <img class="preload" src="../images/u3270-r.png?crc=4001421722" alt=""/>
  </div>
  </div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
var searchVal;
var searchVal2;
var page;
var kindA;
var kindB;
function localSave(local){
	searchVal = local;
	//alert(searchVal)
}
function slocalSave(slocal){
	searchVal2 = slocal;
	
}
function pageChange(p){
	page = p;
	//alert(page);
	animalSearch(searchVal,page,searchVal2,kindA,kindB);
}


$(function(){
	$("#btn").on("click", function(){
		//$("#kind").trigger("change");
		animalSearch(searchVal,page,searchVal2,kindA,kindB);
		
		
	});
});

function animalSearch(loc1,pp,loc2,k1,k2){
	$.ajax({
		url:"animalsList",
		data:{"searchVal":loc1,
			  "page":pp,
			  "searchVal2":loc2,
			  "kindA":k1,
			  "kindB":k2
			  },
	   success: function(responseData){
			$(".animalList").html(responseData)
		 }
	});
}

function call(kind){
	kindA = kind;
	$.ajax({
		url:"animalKind",
		data:{"kind":kind},
		success: function(responseData){
			$("#klist").html(responseData);
		}
	});
}

function call2(kind){
	kindB = kind;
}

/* 스크롤을 내리면 메뉴바가 상단에 고정 */
$(function(){
	var wind = $(window),
		header = $('.menubar'),
		headerOffsetTop = header.offset().top;
	console.log(headerOffsetTop);
	wind.scroll(function(){
		if($(this).scrollTop() >= headerOffsetTop) {
			header.addClass('sticky');
		} else {
			header.removeClass('sticky');
		}
	});
});


</script>

</body>
</html>