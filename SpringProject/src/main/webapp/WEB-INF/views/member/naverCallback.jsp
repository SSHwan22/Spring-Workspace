<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
<div id="display">

</div>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("ioJQ7789PB_x4igIXcRS", "http://localhost:8080/spring/member/naverCallback");
  // 접근 토큰 값 출력
  alert(naver_id_login.oauthParams.access_token);
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
	  let display = document.getElementById("display");

    let conetent = document.createElement("p");

    conetent.innerHTML =  naver_id_login.getProfileData('email');
    conetent.innerHTML += naver_id_login.getProfileData('nickname');
    conetent.innerHTML += naver_id_login.getProfileData('age');

    display.appendChild(conetent);
  }
</script>
</body>
</html>