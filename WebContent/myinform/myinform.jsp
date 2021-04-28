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
	
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
	<link rel="stylesheet" type="text/css" href="../css/board.css" id="pagesheet"/>
	
<title>마이페이지</title>

<style>

#boxALL {
	padding: 10px;
	position: relative;
	/* border: 1px solid red; */
	width: 700px; height: 600px;
	margin: 0 auto;
}

.box {
	width: 250px; height: 250px;
	position: relative;
	float: left;
	border: 1px solid lightgray;
	background-color: transparent;
	margin-top: 30px;
	margin-left: 30px;
	margin-right: 30px;
}
</style>

</head>
<script type="text/javascript">
        function changeForm(val){
            if(val == "-2"){
                location.href="../user/userList.jsp";
            }else if(val=="-1"){
            	
            }
            else if(val == "0"){ //회원정보 변경
               	var test =confirm("회원정보를 변경하시겠습니까?");
            if(test==true){
            	location.href="../login/UpdateForm.jsp";
            }
            else if(test==false){
            	alert("회원정보 변경을 취소하셨습니다.");
            }
            	
            }else if(val == "1"){ //회원탈퇴
                var delete_test = confirm("회원 탈퇴하시겠습니까?");
                if(delete_test==true){
                	location.href="../login/DeleteForm.jsp";
                }
                else if(delete_test==false){
                	alert("회원탈퇴를 취소하셨습니다.");
                }
            }
        }
    </script>





<body>
	<div class="clearfix" id="page"><!-- column -->
	   <div class="position_content" id="page_position_content">
	    <div class="browser_width colelem" id="u1966-bw">
	     <div id="u1966"><!-- column -->
	      <div class="clearfix" id="u1966_align_to_page">
	       <div class="position_content" id="u1966_position_content">
	        <div class="clip_frame colelem" id="u3456">
	         <img class="block" id="u3456_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125"/>
	        </div>
	        
	        <!-- NAV -->
	        <div class="clearfix colelem" id="u3513"><!-- group -->
	         <div class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3461">
	         <img class="grpelem" id="u3462" alt="내 정보" src="../images/blank.gif?crc=4208392903"/></div>
	         
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3463" href="../animal/animalsList">
	         <img class="grpelem" id="u3464" alt="유기동물조회" src="../images/blank.gif?crc=4208392903"/></a>
	         
	         <a class="nonblock nontext grpelem" id="u3469-4" href="../index.jsp">
	         <img id="u3469-4_img" alt="멍냥멍냥" width="212" height="60" src="../images/u3469-4.png?crc=347814851"/></a>
	         
	         <a class="nonblock nontext Button ButtonSelected rounded-corners clearfix grpelem" id="buttonu3465" href="../board/boardlist">
	         <img class="grpelem" id="u3466-4" alt="커뮤니티" width="65" height="20" src="../images/u3466-4-a.png?crc=4069860665"/></a>
	         
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3467" href="../qna.html">
	         <img class="grpelem" id="u3468" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/></a>
	        </div>
	        
	        
	        <div class="shadow clearfix colelem" id="u3821"><!-- group -->
	         
	         
	         
	         <!-- 여기를 flex박스로만들어보자 -->
	         <div class="rounded-corners clearfix grpelem" id="u3822-3">
	         <!-- content -->
	    
			
			<!-- 게시판 메인 페이지 영역 시작 -->
	



			<br><br>
      <div id="container">
		<!-- CONTENTS -->
		<!-- CONTENTS -->
		<div id="content" class="section_home" >
			<div class="column" >
				<!-- 프로필 설정 -->
				<div id="boxALL">
				<div class="box">
					<div class="sh_header">
					 
						<center><h2>멍냥멍냥 프로필</h2>
						<hr>
						 <img class="block" id="u3456_img" src="images/index-animalfriends.png?crc=414174054" alt="" width="200" height="150"/>
						<hr>
						<h2>${username }님의 프로필 입니다.</h2>
						<hr>
						<input type="button" value="회원정보 보기" onclick="changeForm(-2)">
						</center>
				
					</div>
					
				</div>
				<div class="box">
				<center><h2>멍냥멍냥 프로필</h2>
						<hr>
						 <img class="block" id="u3456_img" src="images/index-animalfriends.png?crc=414174054" alt="" width="200" height="150"/>
						<hr>
						<h2>${username }님의 프로필 입니다.</h2>
						<hr>
						<input type="button" value="회원정보 추가하기" onclick="changeForm(-1)">
						</center>
				</div>
				<div class="box">
					<center><h2>멍냥멍냥 프로필</h2>
						<hr>
						 <img class="block" id="u3456_img" src="images/index-animalfriends.png?crc=414174054" alt="" width="200" height="150"/>
						<hr>
						<h2>${username }님의 프로필 입니다.</h2>
						<hr>
						<input type="button" value="회원정보 변경" onclick="changeForm(0)">
						</center>
				</div>
				<div class="box">
				<center><h2>멍냥멍냥 프로필</h2>
						<hr>
						 <img class="block" id="u3456_img" src="images/index-animalfriends.png?crc=414174054" alt="" width="200" height="150"/>
						<hr>
						<h2>${username }님의 프로필 입니다.</h2>
						<hr>
						<input type="button" value="회원정보 삭제" onclick="changeForm(1)">
						</center>
				</div>
				
				</div>
				
				<br>
				
				
			
					
				
		</div>
       
        <br>
				<!-- 게시판 메인 페이지 영역 끝 -->
	       
	         </div>
	       
	       
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
	
	
​
</body>
</html>