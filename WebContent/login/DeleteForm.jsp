<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html>
<head>
    <title>회원정보 삭제 화면</title>

    <script type="text/javascript">

    
    
       

        // 취소 버튼 클릭시 로그인 화면으로 이동
        function goLoginForm() {
            location.href = "../index.jsp";
        }
    </script>

</head>
<body>
<!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
<div id="wrap">
    <br>
    <h2>회원정보 삭제</h2>
    <br>


    <!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
    <!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 RegisterCheck.jsp -->
    <form method="post" action="../DeleteServlet" name="userInfo">
             <input type="text" name="userID"  value="${userID }" hidden="hidden">
    
        <input type="submit" value="삭제" />
        <input type="button" value="취소" onclick="goLoginForm()">
    </form>
</div>
</body>
</html>