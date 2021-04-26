<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 게시판 글쓰기 양식 영역 시작 -->
	<div class="container">
		<div class="row">
			<form action="boardUpdate" method="post">
			<input type="hidden" name="boardID" value="${param.board_ID }">
				<table class="table table-striped" style="text-align: center;  width: 600px;">
					<tbody>
						<tr>
							<td><input type="text" class="form-control" name="Title" maxlength="50" style="width: 600px;" value="${board.board_title }"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" name="Content" maxlength="2048" style="height: 350px; width: 600px;">${board.board_content }</textarea></td>
						</tr>
					</tbody>
				</table>
				<!-- 글쓰기 버튼 생성 -->
				<input type="submit" class="btn1" value="수정">
			</form>
		</div>
	</div>
	<!-- 게시판 글쓰기 양식 영역 끝 -->

</body>
</html>