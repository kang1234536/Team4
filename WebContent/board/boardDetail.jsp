<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width">
<title>멍냥멍냥 게시판 상세보기</title>

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
	<link rel="stylesheet" type="text/css" href="../css/boardDetail.css" id="pagesheet"/>

<style>

table, td {
	text-align: center; border: 1px solid black; width: 800px; border-collapse: collapse;
}

.container {
	border: 1px solid red;
	width: 1000px;
	margin-top: 100px;
}

.row {
	border: 2px solid blue;
	margin: 0 auto;
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
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2062" href="../AnimalsListServlet">
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
        <div class="container">
			<div class="row">
				<form action="boardlist">
					<table class="detail">
						<tbody>
							<tr>
								<td id="td1">제목</td>
								<td>${board_detail.board_title}</td>
							</tr>
							<tr>
								<td >작성자</td>
								<td>${board_detail.user_ID}</td>
							</tr>
							<tr>
								<td>작성날짜</td>
								<td>${board_detail.board_date}</td>
							</tr>
							<tr>
								<td>내용</td>
								<td>${board_detail.board_content}</td>
							</tr>
						</tbody>
					</table>
					
					<!-- 목록 돌아가기 버튼 -->
					<input type="submit" class="btn1" value="목록">
					</form>
					
					<div>
					<!-- 수정 -->
					<button onclick="location='boardUpdate?board_ID=${param.board_ID}'">수정</button>
					<!-- 삭제 -->
					<button onclick="del()">삭제</button>
					</div>
				
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


	
</body>
</html>