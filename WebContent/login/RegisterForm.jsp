<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR" %>
<html>
<head>
<title>ȸ������ ȭ��</title>

	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
 	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
  	<link rel="stylesheet" type="text/css" href="../css/userinsert.css" id="pagesheet"/>

<script type="text/javascript">

        // �ʼ� �Է������� ���̵�, ��й�ȣ�� �ԷµǾ����� Ȯ���ϴ� �Լ�
        function checkValue() {
            if (!document.userInfo.userID.value) {
                alert("���̵� �Է��ϼ���.");
                return false;
            }

            if (!document.userInfo.userPW.value) {
                alert("��й�ȣ�� �Է��ϼ���.");
                return false;
            }

            // ��й�ȣ�� ��й�ȣ Ȯ�ο� �Էµ� ���� �������� Ȯ��
            if (document.userInfo.userPW.value !== document.userInfo.passwordcheck.value) {
                alert("��й�ȣ�� �����ϰ� �Է��ϼ���.");
                return false;
            }
        }

        // ��� ��ư Ŭ���� �α��� ȭ������ �̵�
        function goLoginForm() {
            location.href = "LoginForm.jsp";
        }
    </script>

</head>
<body>
<!-- div ����, ������ �ٱ������� auto�� �ָ� �߾����ĵȴ�.  -->
<div id="wrap">
    <br>
    <h2>ȸ������</h2>
    <br>


    <!-- �Է��� ���� �����ϱ� ���� form �±׸� ����Ѵ� -->
    <!-- ��(�Ķ����) ������ POST ���, ������ �������� RegisterCheck.jsp -->
    <form method="post" action="../RegisterCheckServlet" name="userInfo"
          onsubmit="return checkValue()">
        <table>
            <tr>
                <td>���̵�</td>
                <td>
                    <input type="text" name="userID" maxlength="50">
                    <input type="button" value="�ߺ�Ȯ��">
                </td>
            </tr>

            <tr>
                <td>��й�ȣ</td>
                <td>
                    <input type="password" name="userPW" maxlength="50">
                </td>
            </tr>

            <tr>
                <td>��й�ȣ Ȯ��</td>
                <td>
                    <input type="password" name="passwordcheck" maxlength="50">
                </td>
            </tr>

            <tr>
                <td>�̸�</td>
                <td>
                    <input type="text" name="userName" maxlength="50">
                </td>
            </tr>

        </table>
        <br>
        <input type="submit" value="����"/>
        <input type="button" value="���" onclick="goLoginForm()">
    </form>
</div>
</body>
</html>