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
	.menubar {
		position:absolute;
		z-index: 30;
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
		z-index: 30;
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
				<!-- 내정보버튼 -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2060" href="../login/myinform.jsp">
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
								<td colspan="2" style="border: 1px dotted gray;">
								<textarea placeholder="댓글을 작성하려면 로그인 해주세요" 
								readonly style="height: 50px; width: 780px;padding: 10px 10px;" 
								onclick="location='../login/LoginCheckServlet'"></textarea></td>
							</tr>
							</table>
						</c:when>
						
						<c:when test="${userID!=null }">
							<table class="reply" style="width: 800px;">
							<c:forEach var="replylist" items="${reply_list}">
								<tr>
									<td id="userID">${replylist.user_id }</td>
									<td id="date">${replylist.reply_date }</td>
								</tr>
								<tr>
									<c:choose>
									<c:when test="${userID==replylist.user_id }">
										<td id="replyContent">${replylist.reply }</td>
										<td align="right">
											<input type="button" onclick="del2(this, '${replylist.reply_id}');" value="삭제" id="delete">
										</td>
									</c:when>
									<c:when test="${userID!=replylist.user_id }">
										<td id="replyContent" colspan="2">${replylist.reply }</td>
									</c:when>
									</c:choose>
								</tr>
								</c:forEach>
								</table>
							<table class="inputreply">
							<tr>
								<td colspan="2">
								   <textarea placeholder="네티켓을 지켜주세요! 비방및 욕설 댓글은 무통보 삭제됩니다"style="height: 100px; width: 780px;padding: 10px 10px;" name="reply" id="reply2"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2" id="regist"><input type="button" class="btn2" value="등록" 
								onclick="godata('${userID}','${param.board_ID }');"></td>
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
	"<td id='replyContent'>"+r+"</td>"+
	'<td align="right">'+
	'<input type="button" onclick="del2(this, \'${replylist.reply_id}\');" value="삭제" id="delete">'+
	"</td>"+
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

function del2(obj, reply_id){
	$(obj).parent().parent().prev().remove();
	$(obj).parent().parent().remove();
	
	replyDelete(reply_id);
}

function replyDelete(reply_id){
	  $.ajax({
		  url:"replyDelete",
		  data: {"replyid":reply_id},
		  success: function(responseData){
		  }
	  });
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