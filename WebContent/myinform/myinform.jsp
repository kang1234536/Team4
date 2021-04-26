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
<title>마이페이지</title>


	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css?crc=444006867"/>
	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css?crc=4037835255"/>
	<link rel="stylesheet" type="text/css" href="../css/board.css" id="pagesheet"/>
	
</head>

<script type="text/javascript">
    
        function changeForm(val){
            if(val == "-1"){
                location.href="index.jsp";
                
            }/* else if(val == "0"){ //회원정보 변경
                location.href="MainForm.jsp?contentPage=member/view/ModifyFrom.jsp";
            }else if(val == "1"){ //회원탈퇴
                location.href="MainForm.jsp?contentPage=member/view/DeleteForm.jsp";
            } */
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
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3461" href="">
	         <img class="grpelem" id="u3462" alt="내 정보" src="../images/blank.gif?crc=4208392903"/></a>
	         
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3463" href="AnimalsListServlet">
	         <img class="grpelem" id="u3464" alt="유기동물조회" src="../images/blank.gif?crc=4208392903"/></a>
	         
	         <a class="nonblock nontext grpelem" id="u3469-4" href="../index.jsp">
	         <img id="u3469-4_img" alt="멍냥멍냥" width="212" height="60" src="../images/u3469-4.png?crc=347814851"/></a>
	         
	         <a class="nonblock nontext Button ButtonSelected rounded-corners clearfix grpelem" id="buttonu3465" href="">
	         <img class="grpelem" id="u3466-4" alt="커뮤니티" width="65" height="20" src="../images/u3466-4-a.png?crc=4069860665"/></a>
	         
	         <a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu3467" href="../qna.html">
	         <img class="grpelem" id="u3468" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/></a>
	        </div>
	        
	        
	        <div class="shadow clearfix colelem" id="u3821"><!-- group -->
	         
	         <div class="rounded-corners clearfix grpelem" id="u3822-3">
	         <!-- content -->
	       
			
			<!-- 게시판 메인 페이지 영역 시작 -->
	
			<br><br>
        <b><font size="6" color="gray">내 정보</font></b>
        <br><br><br>
                        <!-- 가져온 회원정보를 출력한다. -->
        <table>
            <tr>
                <td id="title">아이디</td>
                <td>${userID} </td>
            </tr>
                        
           <tr>
                <td id="title">이름</td>
                <td>${username}</td>
            </tr>
                    
              <tr>
                <td id="title">개인/보호소</td>
                <td>${userdiv }</td>
            </tr>
          <%--          
            <tr>
                <td id="title">개인/보호소</td>
                <td><%=users.getUserDiv()%></td>
            </tr> --%>
                    
        </table>
        
        <br>
        <input type="button" value="뒤로" onclick="changeForm(-1)">
        <input type="button" value="회원정보 변경" onclick="changeForm(0)">
        <input type="button" value="회원탈퇴" onclick="changeForm(1)">



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