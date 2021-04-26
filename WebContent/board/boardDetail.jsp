<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 화면 최적화 -->
<meta name="viewport" content="width-device-width">
<title>멍냥멍냥 게시판 상세보기</title>
<style>
body {
	margin: 100px 300px;
}
table, td {text-align: center; border: 1px solid black; width: 800px; border-collapse: collapse;}

</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<form action="boardlist">
				<table class="detail">
					<tbody>
						<tr>
							<td>제목</td>
							<td>${board_detail.board_title}</td>
						</tr>
						<tr>
							<td>작성자</td>
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
	<script>
	function del(){
		if(confirm('삭제하시겠습니까?')){
			location.href='boardDelete?board_ID=${param.board_ID}';
		}
	}
	</script>
</body>
</html>