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
          /* The Modal (background) */
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
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
        }
 




#boxALL {
	padding: 10px;
	position: relative;
	border: 1px solid red;
	width: 1000px; height: 400px;
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

section {
	text-align: center;
}
</style>

</head>
<script type="text/javascript">

/* $(function() {
    $('#myModal').show();
}); */
//팝업 Close 기능
function close_pop(flag) {
 $('#myModal').hide();
 $('#myModal2').hide();

};
function update(){
	alert("수정완료되었습니다.");
};









        function changeForm(val){
            if(val == "-2"){
               /*  location.href="../user/userList.jsp"; */
            	$('#myModal').show();
               
            }
            	
             else if(val == "0"){ //회원정보 변경
               	var test =confirm("회원정보를 변경하시겠습니까?");
            if(test==true){
            	/*  location.href="../login/UpdateForm.jsp";  */
            	 $('#myModal2').show();
            }
            else if(test==false){
            	alert("회원정보 변경을 취소하셨습니다.");
            }
            	
            }else if(val == "1"){ //회원탈퇴
                var delete_test = confirm("회원 탈퇴하시겠습니까?");
                if(delete_test==true){
                	alert("Ajax 좀 돼라!!!!!!!!!!!!!");
                	$.ajax({
            			url:"../Delete",
            			data:{"userid":"${userID}"},
            			type:"POST",
            			success:function(responseData) {
            				alert("삭제되었습니다.");
            				location.href="../index.jsp";
            			}
            		});
                } else if(delete_test==false) {
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
	         <div class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3461" href="../myinform/myinformation">
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
					 
					<section><h2>멍냥멍냥 프로필</h2>
						<hr>
						 <img class="block" id="u3456_img" src="../images/Icon.png" alt="" width="200" height="150"/>
						<hr>
						<h2>${username }님의 프로필 입니다.</h2>
						<hr>
						<input type="button" value="회원정보 보기" onclick="changeForm(-2)">
					</section>
				
					</div>
					
				</div>
				<div class="box">
					<section><h2>멍냥멍냥 프로필</h2>
						<hr>
						 <img class="block" id="u3456_img" src="../images/Icon.png" alt="" width="200" height="150"/>
						<hr>
						<h2>${username }님의 프로필 입니다.</h2>
						<hr>
						<input type="button" value="회원정보 변경" onclick="changeForm(0)">
						</section>
				</div>
				<div class="box">
				<section><h2>멍냥멍냥 프로필</h2>
						<hr>
						 <img class="block" id="u3456_img" src="../images/Icon.png" alt="" width="200" height="150"/>
						<hr>
						<h2>${username }님의 프로필 입니다.</h2>
						<hr>
						<input type="button" value="회원정보 삭제" onclick="changeForm(1)">
						</section>
				</div>
				
				</div>
				
				<br>
				
				
			
					
				
		</div>
       
        <br>
				<!-- 게시판 메인 페이지 영역 끝 -->
	       
	         </div>
	       
	        <!-- The Modal -->
	        <!-- 회원정보 보기  -->
    <div id="myModal" class="modal">
 
      <!-- Modal content -->
      <div class="modal-content">
                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">회원정보</span></b></span></p>
                <p style="text-align: center; line-height: 1.5;"><br />아이디:${userID }</p>
                <p style="text-align: center; line-height: 1.5;"><br />이름:${userName }</p>
                <p style="text-align: center; line-height: 1.5;"><br />개인/보호소:${userDiv }</p>
                <p style="text-align: center; line-height: 1.5;"><br />비밀번호:${userPW }</p>
                <p><br /></p>
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
                <span class="pop_bt" style="font-size: 13pt;" >
                     확인
                </span>
              
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
           <div class="TabbedPanelsContent grpelem" id="u2866">
			
			<form id="loginfrm" action="../UpdateServlet" method="post" >
				<input type="text" name="userID" maxlength="50" placeholder="${userID }" value="${userID }" required hidden=""><br><br>
				<input type="text" name="userName" maxlength="50" placeholder="이름" required><br><br><br>
				<input type="password" name="userPW" maxlength="50" placeholder="비밀번호" required><br><br><br>
				<input type="submit" value="수정" onclick="update();"><br><br><br>
				
			</form>
			
		   </div>
         <!--   <div class="TabbedPanelsContent invi grpelem" id="u2862">
			<form id="loginfrm2" action="LoginCheckServlet" method="post" onsubmit="return checkValue()">
				<input type="text" name="userID" maxlength="50" placeholder="아이디"><br><br>
				<input type="password" name="userPW" maxlength="50" placeholder="비밀번호"><br><br>
				<input type="text" name="aa"><br><br><br>
				<input type="submit" value="수정"><br><br><br>
			</form>
		   </div> -->
          </div>
      </div>
 
    </div>
        <!--End Modal-->


	    <%--          <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">회원정보</span></b></span></p>
                <p style="text-align: center; line-height: 1.5;"><br />아이디:${userID }</p>
                <p style="text-align: center; line-height: 1.5;"><br />이름:${userName }</p>
                <p style="text-align: center; line-height: 1.5;"><br />개인/보호소:${userDiv }</p>
                <p style="text-align: center; line-height: 1.5;"><br />ㅎㅎㅎ</p>
                <p><br /></p>
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
                <span class="pop_bt" style="font-size: 13pt;" >
                     확인
                </span>
              
            </div> --%>
	       
	       
	       
	       
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