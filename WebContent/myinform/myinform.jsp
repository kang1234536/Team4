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
            if(val == "-1"){
                location.href="../index.jsp";
                
            } else if(val == "0"){ //회원정보 변경
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
						<center><h2>멍냥멍냥 프로필</h2></center>
						
						
					</div>
				</div>
				<div class="box"></div>
				<div class="box"></div>
				<div class="box"></div>
				</div>
				
				<br>
				<div class="sh_group">
					
					<div class="sh_content">
						<dl class="sh_lst">
						<center>
					
						<dt class="nic_tit">별명</dt>
						<dd class="nic_desc">kha0202kha</dd></center>
						</dl>
					</div>
				
				</div>

				

				
			<div class="column">
					<!-- 일반아이디 연락처 -->
					<div class="sh_group ">
						
						<div class="sh_content">
							<dl class="sh_lst2">
							<center><dt>연락처 이메일</dt>
							<dd>kh******@n*******.com</dd>
							<dt>본인확인 이메일</dt>
							<dd>등록된 이메일 없음</dd>
							<dt>휴대전화</dt>
							<dd>+82 10-2***-6***</dd></center>
							</dl>
							<dl class="sh_lst2 nudge" id="divNudge">
								<dt></dt>
								<dd>
									<div class="nudge_tooltip">
										<span class="banner_area">
										<span class="nudge_edge"></span>
										<span class="text">연락처가 맞는지 <em class="yellow_point">확인하세요.</em></span>
										<a href="javascript:closeNudge();" role="button" aria-label="닫기" class="nudge_close"></a>
									</span>
									</div>
								</dd>
							</dl>
						</div>
						<p class="btn_area_btm"><a href="/user2/help/changeUserInfo?menu=nid&lang=ko_KR" onclick="clickcr(this,'imn.cntmodify','','',event);" class="btn_model"><b class="btn2">수정</b></a></p>
					</div>
				<!-- 지역 설정 -->
				<div class="sh_group">
					<div class="sh_header">
						<h2>지역 설정</h2>
						<a href="javascript:toggle('region');" onclick="clickcr(this,'imn.reghelp','','',event);" class="link_help"><i id="i_region" class="spico ico_arr3_dn">도움말</i></a>
						<p id="p_region" class="contxt" style="display:none">
						     	  네이버 서비스에서 <em>공통으로 사용되는 지역 정보</em>입니다.
						     <br>
							설정되어 있는 모든 지역을 보거나 수정하시려면 설정하기를 클릭하세요.</p>
					</div>
					<div class="sh_content">
							<p class="contxt">
						     	  설정된 지역이 없습니다.<br>지금 내 주변의 관심지역을 설정하세요!
						     </p>
					</div>
					<p class="btn_area_btm"><a href="/user2/help/region?menu=nid&lang=ko_KR" onclick="clickcr(this,'imn.regmodify','','',event);" class="btn_model"><b class="btn2">설정하기</b></a></p>
				</div>
			</div>

				<p class="desc_sub">소중한 개인정보 이용내역이 궁금하다면 <a href="/user2/help/privacyInfo" class="more" target="_blank" onclick="clickcr(this,'imn.privacychk','','',event);">개인정보 이용내역 보기</a></p>
			<p class="desc_sub">네이버를 더 이상 이용하지 않는다면 <a href="/user2/help/leaveId?menu=nid&lang=ko_KR" onclick="clickcr(this,'imn.memberout','','',event);" class="more">회원탈퇴 바로가기</a></p>
		
		</div>
        
        
       <%--  <table>
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
                   
            <tr>
                <td id="title">개인/보호소</td>
                <td><%=users.getUserDiv()%></td>
            </tr> 
                    
        </table> --%>
        
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