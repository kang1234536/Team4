<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width">
<title>유기동물 상세정보</title>

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
	<link rel="stylesheet" type="text/css" href="../css/animalDetail.css" id="pagesheet"/>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script>
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
		
		$('#reservation').on("click", function(){
			alert('입양신청되었습니다.');
			document.location.href="../index.jsp";
		});
	});
	
	
</script>

<style>
	#u1966 {
		z-index: 3;
		min-height: 1300px;
		padding-bottom: 1px;	
	}
	
	#wingBnr{
	  	z-index:10000;
	  	position: absolute;
	  	width: 300px; height: 220px;
	  	/* border: 1px solid blue; */
	  	left: 590px;
	  	margin-top: 90px;
  	}
  
  #wingBnr div.wing_hgroup{
  	position:relative;
  	width:233px; min-height: 188px;
  	border: 0px solid #767676; 
  	z-index:1;
  }
  
  .gonggoView {
  	/* border: 1px solid red; */
  	width: 750px;
  	margin: 90px auto;
  	margin-bottom: 10px;
  }
  
  
  .viewTable{
    width:740px;
    text-align:left;
    border:0; 
    border-top:0px solid #E1E1E1;
    border-bottom: 2px solid #E1E1E1; 
    margin-bottom: 5px; 
    padding-left: 20px;
    
  }
  .viewTable th{
    padding:4px 5px; 
    border:0; 
    border-bottom: 1px solid #cfcfcf;
    background: #f7f7f7; 
    width:120px;  
    line-height: 1.5em; 
    text-align: center; 
    font-size: 1em; 
    color:#565b48;
    font-size: 15px; font-family: 'a타이틀고딕2';
  }
  .viewTable td{
    padding:4px 10px; 
    border:0; 
    border-bottom: 1px solid #cfcfcf; 
    font-size: 1em;
    font-size: 14px; font-family: 'a타이틀고딕1';
  }
  
  #map{
   padding-bottom: 35px; padding-left: 10px;
  }

.container2 {
	width: 350px;
	background-color: transparent;
	/* border: 2px solid purple; */
	position: relative;
	margin-top: 40px;
	left: 150px;
	padding: 10px;
	float: left;
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
  
#map {
	position: inherit;
	/* border: 1px solid red; */
	width: 650px; height: 390px;
	padding: 5px;
	margin: 5px auto;
}

#careLocation {
	font-size: 24px; font-family: 'a타이틀고딕2';
	line-height: 1.5em;
}

#listbtn {
	width: 60px; height: 30px;
	border-radius: 5px;
	border: 1px outset #FDED91;
	background-color: #FDED91;
	font-size: 14px; font-family: 'a타이틀고딕2';
	position: relative;
	box-shadow: 1px 1px 10px #eee;
	left: 470px;
}
#reservation {
	width: 60px; height: 30px;
	border-radius: 5px;
	border: 1px outset #FDED91;
	background-color: #FDED91;
	font-size: 14px; font-family: 'a타이틀고딕2';
	position: relative;
	box-shadow: 1px 1px 10px #eee;
	left: 480px;
}

#u2013 {
	z-index: 5;
	width: 1115px;
	height: 1150px;
	box-shadow: 0px 20px 20px rgba(127, 127, 127, 0.2);
	background-color: #FFFFFF;
	padding-top: 100px;
	left: 182px;
	position: absolute;
	margin-top: 60px;
}
  
	#loginheader {
		z-index: 5;
		width: 1115px;
		/* border: 2px solid red; */
		left: 182.5px;
		position: relative;
	}
	
	.loginICON {
		font-size: 15px;
		text-decoration: none;
		font-family: 'a타이틀고딕2';
		float: right;
	}
	
	a:link {
		text-decoration: none;
		color : blue;
	}
	
	a:visited {
		text-decoration: none;
		color : blue;
	}

	.menubar {
		position:absolute;
		z-index: 6;
		width: 1115px; 
		/* height: 105px; */
		background-color: #FFFCEC;
		padding-top: 49px;
		padding-bottom: 49px;
		/* border: 1px solid red; */
		margin-left: 182px;
		/* margin: 0 auto; */
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
		<div class="browser_width colelem" id="u1966-bw">
		
		<div id="u1966">
		<div class="clearfix" id="u1966_align_to_page">
		<div class="position_content" id="u1966_position_content">
		
		<!-- 로그인버튼 -->
		<div class="clearfix colelem" id="loginheader">
			<c:if test="${userName != null}">
				<p class="loginICON">${userName}님 환영합니다!&nbsp;&nbsp;<a href="../LogoutServlet">로그아웃</a></p>
			</c:if>
			<c:if test="${userName == null}">
				<p class="loginICON"><a href="../login/LoginForm.jsp">로그인</a></p>
			</c:if>
		</div>
				
		<!-- 동물친구들이미지 -->
		<div class="clip_frame colelem" id="u2010">
		<img class="block" id="u2010_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125" />
		</div>
		<!-- 여기까지가 Header -->
				
			<!-- 여기서부터 Navigator -->
			<div class="menubar">
				<!-- 나의정보버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2060" href="../myinform/myinformation">
				<img class="grpelem" id="u2061" alt="나의정보"	src="../images/blank.gif?crc=4208392903" />
				</a>
				<!-- 유기동물조회버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2062" href="../animal/animalsFirst">
				<img class="grpelem" id="u2063" alt="유기동물조회" src="../images/blank.gif?crc=4208392903" />
				</a>
				 <!-- 멍냥멍냥로고 -->
				<a class="nonblock nontext grpelem" id="u2059-4" href="../index.jsp">
				<img id="u2059-4_img" alt="멍냥멍냥" width="212" height="60" src="../images/u2059-4.png?crc=347814851" />
				</a>
				<!-- 커뮤니티버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2064" href="../board/boardlist">
		        <img class="grpelem" id="u2065" alt="커뮤니티" src="../images/blank.gif?crc=4208392903"/>
		        </a>
				<!-- QnA버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2066" href="../board/qnalist">
         		<img class="grpelem" id="u2067" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/>
         		</a>
			</div>
			<!-- 여기까지가 Nav -->

		<!-- 여기서부터 Content -->
        <div class="shadow clearfix colelem" id="u2013">
			<div class="rounded-corners clearfix grpelem" id="u2511-3">
		    <!-- 컨텐츠 들어갈공간 -->  
			    <div class="container2">
				<img id="catFoot" src="../images/catUL.png" width="32" height="56"/>
				<h2 id="boardTITLE">동물 상세정보</h2>
				</div><br><br><br>  
		        
		        <div id="wingBnr">
				  <div class="wing_hgroup">
				    <div id="aniPhoto">
				      <img src="${animal.popfile}" width="300" height="220">
				    </div>
				  </div>
				</div>
				<div class="gonggoView">
				  <table class="viewTable" >
				    <tbody>
				      <tr>
				        <th scope="row">유기번호</th>
				        <td colspan="3" width="600">${animal.animalID }</td>
				      </tr>
				      <tr>
				        <th scope="row">품종</th>
				        <td colspan="3" width="600">${animal.kind }</td>
				      </tr>
				      <tr>
				        <th scope="row">색상</th>
				        <td colspan="3" >${animal.color}</td>
				      </tr>
				      <tr>
				        <th scope="row">나이</th>
				        <td colspan="3" >${animal.age }</td>
				      </tr>
				      <tr>
				        <th scope="row">성별</th>
				        <td colspan="3" >${animal.sex }</td>
				      </tr>
				      <tr>
				        <th scope="row">체중</th>
				        <td colspan="3" >${animal.weight }</td>
				      </tr>
				      <tr>
				        <th scope="row">중성화 여부</th>
				        <td colspan="3" >${animal.neuter }</td>
				      </tr>
				      <tr>
				        <th scope="row">발견날짜</th>
				        <td colspan="3" >${animal.happenDate }</td>
				      </tr>
				      <tr>
				        <th scope="row">발견장소</th>
				        <td colspan="3" >${animal.happenPlace }</td>
				      </tr>
				      <tr>
				        <th scope="row">특징</th>
				        <td colspan="3" >${animal.spacialMark }</td>
				      </tr>
				      <tr>
				        <th scope="row">상태</th>
				        <td colspan="3" >${animal.state }</td>
				      </tr>
				      <tr>
				        <th scope="row">보호소이름</th>
				        <td colspan="3" >${animal.careName }</td>
				      </tr>
				      <tr>
				        <th scope="row">보호소전화번호</th>
				        <td colspan="3" >${animal.careTel }</td>
				      </tr>
				      <tr>
				        <th scope="row">보호소장소</th>
				        <td colspan="3">${animal.careAddr }</td>
				      </tr>
				      <tr>
				        <th scope="row">예약건수</th>
				        <td colspan="3" >${animal.bookNum }</td>
				      </tr>
				    </tbody>
				  </table>
				</div>
				<a href="../animal/animalsFirst">
				<button id="listbtn">목 록</button></a>
				<a href="">
				<button id="reservation">입양신청</button></a>
				<div id="map">
				  <span id="careLocation">[ 보호소 위치 ]</span>
				  <%@ include file="/map/carePlaceSearch.jsp" %>
				</div>
				
				
			</div>
			
          </div>
         </div>
        </div>
        <!-- 여기까지가 Content -->
        
       </div>
      </div>
     </div>
    </div>
    
    <!-- footer(회색뒷배경) -->
    <div class="browser_width colelem" id="u1965-bw">
     <div id="u1965"></div>
    </div>
    <div class="verticalspacer" data-offset-top="1235" data-content-above-spacer="1300" data-content-below-spacer="0"></div>

</body>
</html>