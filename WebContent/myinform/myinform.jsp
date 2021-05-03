<%@page import="model.user.UserVO"%>
<%@page import="model.user.UserDAO"%>
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
<meta name="viewport" content="width-device-width">

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
	<link rel="stylesheet" type="text/css" href="../css/myinform.css" id="pagesheet"/>
	<link rel="stylesheet" type="text/css" href="../css/modal.css" />
	
<title>마이페이지</title>

<style>
	/* The Modal (background) */
	.modal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0,0,0); /* Fallback color */
		background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}

	.modal2 {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0,0,0); /* Fallback color */
		background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	.modal3 {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0,0,0); /* Fallback color */
		background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
	}
	/* Modal Content/Box */
	.modal-content {
		background-color: white;
		margin: 15% auto; /* 15% from the top and centered */
		padding: 30px;
		/* border: 5px solid black; */
		width: 30%; /* Could be more or less, depending on screen size */                          
	}
 	
 	.message {
 		text-align: center;
 	}




	#boxALL {
		display: flex;
		padding: 10px;
		position: relative;
		/* border: 1px solid red; */
		width: 900px; height: 300px;
		margin: 0 auto;
	}
	
	.box {
		width: 250px; height: 255px;
		position: relative;
		float: left;
		border: 1px solid lightgray;
		background-color: #fff;
		box-shadow: 0 0 5px gray;
		margin-top: 5px;
		margin-left: 15px;
		margin-right: 15px;
		flex: 1;
	}
	
	.box input[type=button] {
		font-size: 12px; font-family: 'a타이틀고딕1';
		background-color: #eee;
		border: 1px outset #eee;
		border-radius: 5px;
		padding: 3px;
		float: right;
		margin-right: 20px;
	}
	
	section {
		text-align: center;
	}
	
	section img {
		margin: 0 auto;
	}

	.container2 {
		width: 350px; height: 55px;
		background-color: transparent;
		/* border: 2px solid purple; */
		position: relative;
		left: 70px;
		padding: 10px;
		margin-top: 15px;
	}
	
	#catFoot {
		position: relative;
		margin-top: 8px;
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
		width: 90%;
		border: 1px dashed gray;
		border-top: none;
	}

	#copyright {
		margin-top: 30px;
		position: relative;
		/* border: 1px solid red; */
	}

	h2:first-of-type{
		font-family: 'a타이틀고딕1';
		padding-top: 10px;
	}
	
	#ex1 {
		border: 1px solid black;
		border-radius: 5px;
		width: 300px; height: 40px; 
		padding-left: 10px;
	}
	
	#ex2 {
		border: 1px solid black;
		border-radius: 5px;
		width: 300px; height: 40px; 
		padding-left: 10px;
	}
	
	a:link {
		text-decoration: none;
		color : blue;
	}
	
	a:visited {
		text-decoration: none;
		color : blue;
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
</style>



<script type="text/javascript">
	$(function(){
		$('#myModal3').hide();
	});
	
	//팝업 Close 기능
	function close_pop(flag) {
		$('#myModal').hide();
	};
	
	function update() {
     	 if(!$("#ex1").val()) {
     		
     	 } else if(!$("#ex2").val()) {
     		
     	 } else {
     		alert("회원정보가 수정되었습니다.");
     	 }
	};
	
	function updateno(){
		$('#myModal3').hide();
	}
	function exit() {
		$('#myModal2').hide();
		$('#myModal3').show();
		
	}
	
	function changeForm(val) {
		if (val == "-2") {
			$('#myModal').show();
		}
		else if (val == "0") { //회원정보 변경               	
			$('#myModal2').show();
		} else if (val == "1") { //회원탈퇴
			var delete_test = confirm("회원 탈퇴하시겠습니까?");
			if (delete_test == true) {
				$.ajax({
					url : "../Delete",
					data : {
						"userid" : "${userID}"
					},
					type : "POST",
					success : function(responseData) {
						alert("삭제되었습니다.");
						location.href = "../index.jsp";
					}
				});
			} else if (delete_test == false) {
				alert("회원탈퇴를 취소하셨습니다.");
			}
		}
	}
</script>


</head>


<body>
	<div class="clearfix" id="page"><!-- column -->
	   <div class="position_content" id="page_position_content">
	    <div class="browser_width colelem" id="u1966-bw">
	     <div id="u1966"><!-- column -->
	      <div class="clearfix" id="u1966_align_to_page">
	       <div class="position_content" id="u1966_position_content">
	       
	       <!-- 로그인버튼 -->
	       <div class="clearfix colelem" id="loginheader">
	     	
	     	<c:if test="${userName != null}">
				<p class="loginICON">${userName}님 환영합니다!&nbsp;&nbsp;<a href="../LogoutServlet">로그아웃</a></p>
			</c:if>
			<c:if test="${userName == null}">
				<p class="loginICON"><a href="../login/LoginCheckServlet">로그인</a></p>
			</c:if>
			
	       </div>
	       
	        <div class="clip_frame colelem" id="u3456">
	         <img class="block" id="u3456_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125"/>
	        </div>
	        
	        <!-- NAV -->
	        <div class="clearfix colelem" id="u3513"><!-- group -->
	         <div class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3461">
	         <img class="grpelem" id="u3462" alt="내 정보" src="../images/blank.gif?crc=4208392903"/></div>
	         
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3463" href="../animal/animalsFirst">
	         <img class="grpelem" id="u3464" alt="유기동물조회" src="../images/blank.gif?crc=4208392903"/></a>
	         
	         <a class="nonblock nontext grpelem" id="u3469-4" href="../index.jsp">
	         <img id="u3469-4_img" alt="멍냥멍냥" width="212" height="60" src="../images/u3469-4.png?crc=347814851"/></a>
	         
	         <a class="nonblock nontext Button ButtonSelected rounded-corners clearfix grpelem" id="buttonu3465" href="../board/boardlist">
	         <img class="grpelem" id="u3466-4" alt="커뮤니티" width="65" height="20" src="../images/u3466-4-a.png?crc=4069860665"/></a>
	         
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3467" href="../board/qnalist">
	         <img class="grpelem" id="u3468" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/></a>
	        </div>
	        
	        
	        <div class="shadow clearfix colelem" id="u3821">
	         <div class="rounded-corners clearfix grpelem" id="u3822-3">
	         
	        <!-- 게시판 메인 페이지 영역 시작 -->
			<br><br>
      <div id="container">
		<div id="content" class="section_home" >
			<div class="column" >
				
			<div class="container2">
				<img id="catFoot" src="../images/catUL.png" width="32" height="56"/>
				<h2 id="boardTITLE">마이 페이지</h2>
			</div>
			<br><hr><br>
				
				<!-- 프로필 설정 -->
				<div id="boxALL">
				<div class="box">
					<section>
						<h2>${userName }님의 프로필 입니다.</h2>
						<hr>
						 <img class="block" id="u3456_img" src="../images/Icon.png" alt="" width="200" height="165"/>
						<hr>
						<input type="button" value="회원정보 보기" onclick="changeForm(-2)">
					</section>
				</div>
				<div class="box">
					<section>
						<h2>회원정보 수정하기</h2>
						<hr>
						 <img class="block" id="u3456_img" src="../images/Icon.png" alt="" width="200" height="165"/>
						<hr>
						<input type="button" value="수정" onclick="changeForm(0)">
				</section>
				</div>
				<div class="box">
				<section>
					<h2>회원탈퇴</h2>
					<hr>
					 <img class="block" id="u3456_img" src="../images/Icon.png" alt="" width="200" height="165"/>
					<hr>
					<input type="button" value="탈퇴" onclick="changeForm(1)">
				</section>
		  		</div>
		 </div>
		</div>
	   </div>
	<div id="copyright" align="center">
		<img src="../images/bowmeowLOGO.png" width="7%" />
		<p>Copyright © <b>BOWMEOW Corp.</b> All Rights Reserved.</p>
	</div>
		<!-- 게시판 메인 페이지 영역 끝 -->
		
	        <!-- The Modal -->
										<!-- 회원정보 보기  -->
										<div id="myModal" class="modal">
											<!-- Modal content -->
											<div class="modal-content">
												<div style="text-align: center;">
													<span style="font-size: 14pt;">
														<b><span style="font-size: 20pt; 
															font-family: 'a타이틀고딕4';">★회원정보★</span></b>
													</span>
												</div><br>
												<div style="text-align: center; font-family: 'a타이틀고딕4';">
													<br>아이디 : ${userID }<br>
													<br>이름 : ${userName }<br>
													<br>개인/보호소 : ${userDiv }<br>
													<br>비밀번호 : ${userPW }<br>
												</div>
												<br><br>
												<div onClick="close_pop();" align="center">
													<button class="btn" style="font-size: 13pt;">확인</button>
												</div>
											</div>
										</div>
										<!--End Modal-->
										
										
										<!-- The Modal -->
										<!-- 회원정보 수정  -->
										
										<div id="myModal2" class="modal2">
											<!-- Modal content -->
											<div class="modal-content">
												<div class="TabbedPanelsContentGroup clearfix colelem" id="u2861">
													<div class="TabbedPanelsContent grpelem" id="u2866" align="center">
														<form id="loginfrm" action="../UpdateServlet" method="post">
															<p class="message">회원정보 수정창</p>
															<input type="text" name="userID" maxlength="50"	
																placeholder="${userID }" value="${userID }" required hidden="">
															<input id="ex1" type="text" name="userName" maxlength="50" 
																placeholder="이름" required><br><br>
															<input id="ex2" type="password" name="userPW" maxlength="50" 
																placeholder="비밀번호" required><br><br>
															<input id="ex3" class="btn" type="submit" value="수정" 
																onclick="update();">
															<button class="btn"	onclick="exit();">취소</button>
														</form>
													</div>
												</div>
												<div id="message"></div>
											</div>
										</div>
										
										<div id="myModal3" class="modal3">
											<!-- Modal content -->
											<div class="modal-content">
												<div class="TabbedPanelsContentGroup clearfix colelem"
													id="u2861">
													<div style="text-align: center;">
														<p class="message">회원정보 수정 취소하였습니다.</p>
														<button class="btn" onclick="updateno();">확인</button>
													</div>
												</div>
											</div>
										</div>
										
										
										<!--End Modal-->   


	        </div>
	       </div>
	       
	       
	      </div>
	     </div>
	    </div>
	    
	    <div class="browser_width colelem" id="u1965-bw">
	     <div id="u1965"><!-- simple frame --></div>
	    </div>
	    <div class="verticalspacer" data-offset-top="1199" data-content-above-spacer="1300" data-content-below-spacer="0"></div>
	   </div>
	  </div>
	 </div>
	</div>
	
​
</body>
</html>