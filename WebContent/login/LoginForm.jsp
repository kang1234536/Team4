<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR" %>
<html>
<head>
    <%
        // ���ڵ� ó��
        request.setCharacterEncoding("euc-kr");
    %>
    <title>�α��� ȭ��</title>

    <script type="text/javascript">
        function checkValue() {
            inputForm = eval("document.loginInfo");
            if (!inputForm.userID.value) {
                alert("���̵� �Է��ϼ���");
                inputForm.userID.focus();
                return false;
            }
            if (!inputForm.userPW.value) {
                alert("��й�ȣ�� �Է��ϼ���");
                inputForm.userPW.focus();
                return false;
            }
        }

        // ȸ������ ��ư Ŭ���� ȸ������ ȭ������ �̵�
        function goRegisterForm() {
            location.href = "RegisterForm.jsp";
        }
    </script>

</head>
<body>
<div id="wrap">
    <form name="loginInfo" method="post" action="LoginCheckServlet" onsubmit="return checkValue()">

        <br><br>

        <table>
            <tr>
                <td>���̵�</td>
                <td><input type="text" name="userID" maxlength="50"></td>
            </tr>
            <tr>
                <td>��й�ȣ</td>
                <td><input type="password" name="userPW" maxlength="50"></td>
            </tr>
        </table>
        <br>
        <input type="submit" value="�α���"/>
        <input type="button" value="ȸ������" onclick="goRegisterForm()"/>
    </form>

    <%
        // ���̵�, ��й�ȣ�� Ʋ����� ȭ�鿡 �޽��� ǥ��
        // LoginCheck.jsp���� �α��� ó�� ����� ���� �޽����� ������.
        String msg = request.getParameter("msg");

        if (msg != null && msg.equals("0")) {
            out.println("<br>");
            out.println("<font color='red' size='5'>��й�ȣ�� Ȯ���� �ּ���.</font>");
        } else if (msg != null && msg.equals("-1")) {
            out.println("<br>");
            out.println("<font color='red' size='5'>���̵� Ȯ���� �ּ���.</font>");
        }
    %>
</div>
</body>
</html>