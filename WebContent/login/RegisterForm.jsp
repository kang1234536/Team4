<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR" %>
<html>
<head>
<title>ȸ������ ȭ��</title>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

	<%
		response.setCharacterEncoding("UTF-8");
	%>


	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="../css/site_global.css"/>
 	<link rel="stylesheet" type="text/css" href="../css/master_b-___.css"/>
  	<link rel="stylesheet" type="text/css" href="../css/userinsert.css" id="pagesheet"/>

<script>
		function dCheck(){
			$.ajax({
				url:"idCheck",
				data:{"userid":$("#userid").val()},
				success:function(responseData){
					if(responseData=="true"){
						alert("�ߺ�");
						$("#userid").val("");
						$("#userid").focus();
					}else{
						alert("����");
					}
				}
			});
				
		}


        // �ʼ� �Է������� ���̵�, ��й�ȣ�� �ԷµǾ����� Ȯ���ϴ� �Լ�
        function checkValue() {
            if (!document.userInfo.userID.value) {
                alert("���̵� �Է��ϼ���.");
                return false;
            }
            else   if (!document.userInfo.userPW.value) {
                alert("��й�ȣ�� �Է��ϼ���.");
                return false;
            }
            else   if (!document.userInfo.passwordcheck.value) {
                alert("��й�ȣ�� �Է��ϼ���.");
                return false;
            }
            // ��й�ȣ�� ��й�ȣ Ȯ�ο� �Էµ� ���� �������� Ȯ��
            else if (document.userInfo.userPW.value !== document.userInfo.passwordcheck.value) {
                alert("��й�ȣ�� �����ϰ� �Է��ϼ���.");
                return false;
            }
            else   if (!document.userInfo.userName.value) {
                alert("�̸��� �Է��ϼ���.");
                return false;
            }
            else{
            	alert("ȸ�����Կ� �����Ͽ����ϴ�.");
            	return true;
            }
        }

        // ��� ��ư Ŭ���� �α��� ȭ������ �̵�
        function goLoginForm() {
            location.href = "../LoginForm.jsp";
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
		font-size: 33px; font-family:'aŸ��Ʋ���2';
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
				
				
		<!-- ����ģ�����̹��� -->
		<div class="clip_frame colelem" id="u2010">
		<!-- image -->
		<img class="block" id="u2010_img" src="../images/index-animalfriends.png?crc=414174054" alt="" width="677" height="125" />
		</div>
		<!-- ��������� Header -->
				
			<!-- ���⼭���� Navigator -->
			<div class="clearfix colelem" id="u2954">
				<!-- group -->
				
				<!-- ����������ư -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2060" href="../myinform/myInform">
                <img class="grpelem" id="u2061" alt="��������" src="../images/blank.gif?crc=4208392903"/></a>
				
				<!-- ���⵿����ȸ��ư -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2062" href="../animal/animalsList">
				<img class="grpelem" id="u2063" alt="���⵿����ȸ" src="../images/blank.gif?crc=4208392903"/></a>
				 <!-- �۳ɸ۳ɷΰ� -->
				<a class="nonblock nontext grpelem" id="u2059-4" href="../index.jsp">
				<img id="u2059-4_img" alt="�۳ɸ۳�" width="212" height="60" src="../images/u2059-4.png?crc=347814851"/></a>
				
				<!-- �������׹�ư -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2064" href="../board/boardlist">
                <img class="grpelem" id="u2065" alt="Ŀ�´�Ƽ" src="../images/blank.gif?crc=4208392903"/></a>
				
				<!-- Ŀ�´�Ƽ��ư -->
				<a class="nonblock nontext Button rounded-corners transition clearfix grpelem" id="buttonu2066" href="../qna.html">
                <img class="grpelem" id="u2067" alt="Q &amp; A" src="../images/blank.gif?crc=4208392903"/></a>
			</div>
			<!-- ��������� Nav -->

		<!-- ���⼭���� Content -->
        <div class="shadow clearfix colelem" id="u2013"><!-- group -->
         <div class="rounded-corners clearfix grpelem" id="u2511-3"><!-- inner �׵θ� --></div>
        
        <!-- ȸ���������� -->
         <div class="clip_frame grpelem" id="u2183">
          <img class="block" id="u2183_img" src="../images/dogul.png?crc=4094454044" alt="" width="29" height="51"/>
         </div>
         <h1 class="grpelem" id="u2234-4">ȸ�� ����</h1>
        
         <div id="tab-panelu2860" class="clearfix grpelem">
          <!-- ȸ������ FORM -->
          <div class="TabbedPanelsContentGroup clearfix colelem" id="u2861"><!-- stack box -->
           <div class="TabbedPanelsContent grpelem" id="u2866">
			
			<form method="post" action="../RegisterCheckServlet" id="regfrm" name="userInfo" onsubmit="return checkValue()">
				<div>
				<label id="reginfo">���̵� : </label>
				<input id="userid" type="text" name="userID" maxlength="50"> <div id="btn1BUTTON"><input id="btn1" type="button" value="�ߺ�Ȯ��" onclick="dCheck();"></div><br><br>
		        <label id="reginfo">��й�ȣ : </label>
		        <input type="password" name="userPW" maxlength="50"><br><br>
		        <label id="reginfo">��й�ȣ Ȯ�� : </label>
		        <input type="password" name="passwordcheck" maxlength="50"><br><br>
		        <label id="reginfo">�̸� : </label>
		        <input type="text" name="userName" maxlength="50">
		        <br><br><br><br>
		        <input type="submit" value="����"/>
		        <input id="btn2" type="button" value="���" onclick="goLoginForm()">
		        </div>
			</form>
			
			
		   </div>
          </div>
         </div>
         
         
         
        </div>
        <!-- ��������� Content -->
        
       </div>
      </div>
     </div>
    </div>
    
    <!-- footer(ȸ���޹��) -->
    <div class="browser_width colelem" id="u1965-bw">
     <div id="u1965"><!-- simple frame --></div>
    </div>
    <div class="verticalspacer" data-offset-top="1235" data-content-above-spacer="1300" data-content-below-spacer="0"></div>
    
   </div>
  </div>




<!-- div ����, ������ �ٱ������� auto�� �ָ� �߾����ĵȴ�.  -->
<!-- <div id="wrap">
    <br>
    <h2>ȸ������</h2>
    <br>


    �Է��� ���� �����ϱ� ���� form �±׸� ����Ѵ�
    ��(�Ķ����) ������ POST ���, ������ �������� RegisterCheck.jsp
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
</div> -->


</body>
</html>