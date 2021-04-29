<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>회원가입 화면</title>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<%
response.setCharacterEncoding("UTF-8");
%>


<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/site_global.css" />
<link rel="stylesheet" type="text/css" href="css/master_b-___.css" />
<link rel="stylesheet" type="text/css" href="css/userinsert.css"
	id="pagesheet" />

<script>
	function dCheck() {

		$.ajax({
			url : "login/idCheck",
			data : {
				"userid" : $("#userid").val()
			},
			success : function(responseData) {
				if (responseData == "true") {
					alert("아이디가 중복 됩니다.");

					$("#userid").val("");
					$("#userid").focus();
				}

				else {
					if (!$("#userid").val()) {
						alert("아이디를 입력해주세요");
					}else{alert("아이디 사용가능합니다.");}
					
				}
			}
		});

	}

	// 필수 입력정보인 아이디, 비밀번호가 입력되었는지 확인하는 함수
	function checkValue() {
		if (!document.userInfo.userID.value) {
			alert("아이디를 입력하세요.");
			return false;
		} else if (!document.userInfo.userPW.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		} else if (!document.userInfo.passwordcheck.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		else if (document.userInfo.userPW.value !== document.userInfo.passwordcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		} else if (!document.userInfo.userName.value) {
			alert("이름을 입력하세요.");
			return false;
		} else {
			alert("회원가입에 성공하였습니다.");
			return true;
		}
	}

	// 취소 버튼 클릭시 로그인 화면으로 이동
	function goLoginForm() {
		location.href = "LoginForm.jsp";
	}
</script>

<style>
#u2183 {
	z-index: 46;
	width: 36px;
	background-color: transparent;
	position: relative;
	margin-right: -10000px;
	margin-top: 130px;
	left: 214px;
}

#u2234-4 {
	z-index: 48;
	display: block;
	font-size: 33px;
	font-family: 'a타이틀고딕2';
	position: relative;
	margin-right: -10000px;
	margin-top: 148px;
	left: 264px;
}
</style>


</head>
<body>

	<div class="clearfix" id="page">
		<!-- column -->
		<div class="position_content" id="page_position_content">
			<div class="browser_width colelem" id="u1966-bw">
				<div id="u1966">
					<!-- column -->
					<div class="clearfix" id="u1966_align_to_page">
						<div class="position_content" id="u1966_position_content">


							<!-- 동물친구들이미지 -->
							<div class="clip_frame colelem" id="u2010">
								<!-- image -->
								<img class="block" id="u2010_img"
									src="images/index-animalfriends.png?crc=414174054" alt=""
									width="677" height="125" />
							</div>
							<!-- 여기까지가 Header -->

							<!-- 여기서부터 Navigator -->
							<div class="clearfix colelem" id="u2954">
								<!-- group -->

								<!-- 나의정보버튼 -->
								<a
									class="nonblock nontext Button rounded-corners transition clearfix grpelem"
									id="buttonu2060" href="myinform/myinformation"> <img
									class="grpelem" id="u2061" alt="나의정보"
									src="images/blank.gif?crc=4208392903" /></a>

								<!-- 유기동물조회버튼 -->
								<a
									class="nonblock nontext Button rounded-corners transition clearfix grpelem"
									id="buttonu2062" href="animal/animalsList"> <img
									class="grpelem" id="u2063" alt="유기동물조회"
									src="images/blank.gif?crc=4208392903" /></a>
								<!-- 멍냥멍냥로고 -->
								<a class="nonblock nontext grpelem" id="u2059-4"
									href="index.jsp"> <img id="u2059-4_img" alt="멍냥멍냥"
									width="212" height="60" src="images/u2059-4.png?crc=347814851" /></a>

								<!-- 공지사항버튼 -->
								<a
									class="nonblock nontext Button rounded-corners transition clearfix grpelem"
									id="buttonu2064" href="board/boardlist"> <img
									class="grpelem" id="u2065" alt="커뮤니티"
									src="images/blank.gif?crc=4208392903" /></a>

								<!-- 커뮤니티버튼 -->
								<a
									class="nonblock nontext Button rounded-corners transition clearfix grpelem"
									id="buttonu2066" href="qna.html"> <img class="grpelem"
									id="u2067" alt="Q &amp; A"
									src="images/blank.gif?crc=4208392903" /></a>
							</div>
							<!-- 여기까지가 Nav -->

							<!-- 여기서부터 Content -->
							<div class="shadow clearfix colelem" id="u2013">
								<!-- group -->
								<div class="rounded-corners clearfix grpelem" id="u2511-3">
									<!-- inner 테두리 -->
								</div>

								<!-- 회원유형선택 -->
								<div class="clip_frame grpelem" id="u2183">
									<img class="block" id="u2183_img"
										src="images/dogul.png?crc=4094454044" alt="" width="29"
										height="51" />
								</div>
								<h1 class="grpelem" id="u2234-4">회원 가입</h1>

								<div id="tab-panelu2860" class="clearfix grpelem">
									<!-- 회원가입 FORM -->
									<div class="TabbedPanelsContentGroup clearfix colelem"
										id="u2861">
										<!-- stack box -->
										<div class="TabbedPanelsContent grpelem" id="u2866">

											<form method="post" action="RegisterCheckServlet" id="regfrm"
												name="userInfo" onsubmit="return checkValue()">
												<div>
													<label id="reginfo">아이디 : </label> <input id="userid"
														type="text" name="userID" maxlength="50">
													<div id="btn1BUTTON">
														<input id="btn1" type="button" value="중복확인"
															onclick="dCheck();">
													</div>
													<br>
													<br> <label id="reginfo">비밀번호 : </label> <input
														type="password" name="userPW" maxlength="50"><br>
													<br> <label id="reginfo">비밀번호 확인 : </label> <input
														type="password" name="passwordcheck" maxlength="50"><br>
													<br> <label id="reginfo">이름 : </label> <input
														type="text" name="userName" maxlength="50"> <br>
													<br>
													<br>
													<br> <input type="submit" value="가입" /> <input
														id="btn2" type="button" value="취소" onclick="goLoginForm()">
												</div>
											</form>


										</div>
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
				<div id="u1965">
					<!-- simple frame -->
				</div>
			</div>
			<div class="verticalspacer" data-offset-top="1235"
				data-content-above-spacer="1300" data-content-below-spacer="0"></div>

		</div>
	</div>




	<!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
	<!-- <div id="wrap">
    <br>
    <h2>회원가입</h2>
    <br>


    입력한 값을 전송하기 위해 form 태그를 사용한다
    값(파라미터) 전송은 POST 방식, 전송할 페이지는 RegisterCheck.jsp
    <form method="post" action="../RegisterCheckServlet" name="userInfo"
          onsubmit="return checkValue()">
        <table>
            <tr>
                <td>아이디</td>
                <td>
                    <input type="text" name="userID" maxlength="50">
                    <input type="button" value="중복확인">
                </td>
            </tr>

            <tr>
                <td>비밀번호</td>
                <td>
                    <input type="password" name="userPW" maxlength="50">
                </td>
            </tr>

            <tr>
                <td>비밀번호 확인</td>
                <td>
                    <input type="password" name="passwordcheck" maxlength="50">
                </td>
            </tr>

            <tr>
                <td>이름</td>
                <td>
                    <input type="text" name="userName" maxlength="50">
                </td>
            </tr>

        </table>
        <br>
        <input type="submit" value="가입"/>
        <input type="button" value="취소" onclick="goLoginForm()">
    </form>
</div> -->


</body>
</html>