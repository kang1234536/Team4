<!doctype html>
<html lang="ko">
<head>
    <script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<script type="text/javascript">
    var naver_id_login = new naver_id_login("S6NizWUvfrEyNSDHC2IS", "http://3.34.139.44/Team4_war/oauth/naverCallback.jsp");
    // ���� ��ū �� ���
    alert(naver_id_login.oauthParams.access_token);
    // ���̹� ����� ������ ��ȸ
    naver_id_login.get_naver_userprofile("naverSignInCallback()");
    // ���̹� ����� ������ ��ȸ ���� ������ ������ ó���� callback function
    function naverSignInCallback() {
        alert(naver_id_login.getProfileData('email'));
        alert(naver_id_login.getProfileData('nickname'));
        alert(naver_id_login.getProfileData('age'));
    }
</script>
</body>
</html>