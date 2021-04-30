<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>멍냥멍냥 게시판 상세보기</title>

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
	<link rel="stylesheet" type="text/css" href="../css/boardDetail.css" id="pagesheet"/>

<style>
	a:link {
		text-decoration: none;
		color : blue;
	}
	
	a:visited {
		text-decoration: none;
		color : blue;
	}
	
	.detail, .detail td {
		text-align: center;
		border-bottom: 1px dotted gray;
		border-collapse: collapse;
	}
	
	.detail .td1 {
		background-color: #F6C95E; 
		text-align: center;
		font-size: 18px; font-family: 'a타이틀고딕2';
		padding: 20px;
		width: 150px;
	}
	
	.detail .td2 {
		background-color: transparent; 
		text-align: left;
		font-size: 15px; font-family: 'a타이틀고딕1';
		padding: 10px;
		width: 800px;
	}
	
	.container {
		/* border: 1px solid red; */
		width: 1050px;
		margin-top: 100px;
	}
	
	.container2 {
		width: 350px;
		background-color: transparent;
		/* border: 1px solid red; */
		position: relative;
		margin-top: 40px;
		left: 150px;
		padding: 10px;
		float: left;
	}
	
	.row {
		/* border: 2px solid blue; */
		margin: 0 auto;
		width: 800px;
	}
	
	#td3 {
		background-color: transparent; 
		text-align: left;
		font-size: 15px; font-family: 'a타이틀고딕1';
		padding: 10px;
		width: 600px;
		height: 200px;
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
	
	.btn1 {
		width: 90px;
		height: 30px;
		font-size: 15px;
		font-family: 'a타이틀고딕2';
		text-shadow: 0.5px 0.5px 0.5px gray;
		background-color: #F6C95E;
		border-radius: 3px;
		float: right;
		margin-left: 5px;
		margin-top: 20px;
	}
	
	.btn2 {
		width: 90px;
		height: 30px;
		font-size: 15px;
		font-family: 'a타이틀고딕2';
		text-shadow: 0.5px 0.5px 0.5px gray;
		background-color: #F6C95E;
		border-radius: 3px;
		float: right;	
		margin-right: 6px;
		margin-bottom: 2px;
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
	.reply textarea{
		border-top: 1px dotted gray;
		border-left: 1px dotted gray;
		border-right: 1px dotted gray;
	}
	#regist {
		border-bottom: 1px dotted gray;
		border-left: 1px dotted gray;
		border-right: 1px dotted gray;
	}
	
	#replyContent{
		padding-left: 13px;
		text-align: left;
		height: 40px;
	}
	
	#date{
		padding-right: 10px;
		text-align: right;
		border-top-right-radius: 3px;
		border-bottom-right-radius: 3px;
	}
	
	#userID{
		padding-left: 10px;
		text-align: left;
		font-weight: bold;
		border-top-left-radius: 3px;
		border-bottom-left-radius: 3px;
	}
	
	#userID, #date {
		background-color: lightgray;
		height:3	0px;
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
	     	<c:if test="${username != null}">
				<p class="loginICON">${username}님 환영합니다!&nbsp;&nbsp;<a href="../LogoutServlet">로그아웃</a></p>
			</c:if>
			<c:if test="${username == null}">
				<p class="loginICON"><a href="../login/LoginForm.jsp">로그인</a></p>
			</c:if>
	       </div>
				
				
		<!-- 동물친구들이미지 -->
		<div class="clip_frame colelem" id="u2010">
		<img class="block" id="u2010_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125" />
		</div>
		<!-- 여기까지가 Header -->
				
			<!-- 여기서부터 Navigator -->
			<div class="clearfix colelem" id="u2954">
				<!-- 나의정보버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2060" href="../login/myinform.jsp">
				<img class="grpelem" id="u2061" alt="나의정보"	src="../images/blank.gif?crc=4208392903" />
				</a>
				<!-- 유기동물조회버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2062" href="../animal/animalsList">
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
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2066" href="">
         		<img class="grpelem" id="u2067" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/>
         		</a>
			</div>
			<!-- 여기까지가 Nav -->

		<!-- 여기서부터 Content -->
        <div class="shadow clearfix colelem" id="u2013">
         <div class="rounded-corners clearfix grpelem" id="u2511-3">
        
        <!-- 컨텐츠 들어갈공간 -->
        
        <!-- BOARD DETAIL -->
        <div class="container2">
			<img id="catFoot" src="../images/catUL.png" width="32" height="56"/>
			<h2 id="boardTITLE">커뮤니티 게시판</h2>
		</div>
		<br><br><br>
		
		<div class="container">
			<div class="row">
				<table class="detail">
					<tbody>
						<tr>
							<td class="td1">제 목</td>
							<td class="td2">${board_detail.board_title}</td>
						</tr>
						<tr>
							<td class="td1">작성자</td>
							<td class="td2">${board_detail.user_ID}</td>
						</tr>
						<tr>
							<td class="td1">작성날짜</td>
							<td class="td2">${board_detail.board_date}</td>
						</tr>
						<tr>
							<td class="td1">내 용</td>
							<td class="td2" id="td3">${board_detail.board_content}</td>
						</tr>
					</tbody>
				</table>
				<br>			
				<form>
					<input type="hidden" name="boardID" value="${param.board_ID }">
					<div id="replyTable">
					<c:choose>
						<c:when test="${userID==null }">
							<table class="reply">
							<c:forEach var="replylist" items="${reply_list}">
								<tr>
									<td id="userID">${replylist.user_id }</td>
									<td id="date">${replylist.reply_date }</td>
								</tr><tr>
									<td id="replyContent" colspan="2">${replylist.reply }</td>
								</tr>
							</c:forEach>
							<tr>
								<td colspan="2"><textarea placeholder="댓글을 작성하려면 로그인 해주세요" readonly style="height: 50px; width: 780px;padding: 10px 10px;" onclick="location='../login/LoginCheckServlet'"></textarea></td>
							</tr>
							</table>
						</c:when>
						
						<c:when test="${userID!=null }">
							<table class="reply">
							<c:forEach var="replylist" items="${reply_list}">
								<tr>
									<td id="userID">${replylist.user_id }</td>
									<td id="date">${replylist.reply_date }</td>
								</tr>
								<tr>
									<c:choose>
									<c:when test="${userID==replylist.user_id }">
										<td id="replyContent">${replylist.reply }</td>
										<td align="right"><button onclick="del2('${replylist.reply_id}');">삭제</button></td>
									</c:when>
									<c:when test="${userID!=replylist.user_id }">
										<td id="replyContent" colspan="2">${replylist.reply }</td>
									</c:when>
									</c:choose>
								</tr>
								
							</c:forEach>
							
							<tr>
								<td colspan="2">
								   <textarea placeholder="네티켓을 지켜주세요! 비방및 욕설 댓글은 무통보 삭제됩니다" style="height: 100px; width: 780px;padding: 10px 10px;" name="reply" id="reply2"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2" id="regist"><input type="button" class="btn2" value="등록" onclick="godata('${userID}','${param.board_ID }');"></td>
							</tr>
							</table>
						</c:when>
						
					</c:choose>
					</div>
				</form>
				
				<!-- 목록 돌아가기 버튼 -->
				<button class="btn1" onclick="location='boardlist'">목록</button>
				<c:choose>
				<c:when test="${userID==boardWriter }">
				<!-- 삭제 -->
				<button class="btn1" onclick="del()">삭제</button>
				<!-- 수정 -->
				<button class="btn1" onclick="location='boardUpdate?board_ID=${param.board_ID}'">수정</button>
				</c:when>
				</c:choose>
				
			</div>
		</div>
	</div>
	
	
	<script>
	function del(){
		if(confirm('삭제하시겠습니까?')){
			location.href='boardDelete?board_ID=${param.board_ID}';
		}
	}
	</script>
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

<script>
function godata(user, bid){
	
	var d = new Date();
	var month = d.getMonth()+1;
	var hours = d.getHours();
	if(hours<10) hours= "0"+d.getHours();
	if(month<10) month = "0"+month;
	
	var date = d.getFullYear()+"."+month+"."+d.getDate()+" "+hours+":"+d.getMinutes();
	var r = $("#reply2").val();
	
	var str = 
	"<tr>"+
	"<td id='userID'>"+user+"</td>"+
	"<td id='date'>"+date+"</td>"+
	"</tr>"+
	"<tr>"+
	"<td id='replyContent' colspan='2'>"+r+"</td>"+
	"</tr>";
	 
	$("#reply2").parent().parent().before(str);
	replywrite(user, bid, r);
}
function replywrite(user, bid, r){
	  $.ajax({
		  url:"replyWrite",
		  data: {"uid":user, "bid":bid, "reply":r},
		  success: function(responseData){
			  $("#reply2").val("");
		  }
	  });
}
</script>
</body>
</html>