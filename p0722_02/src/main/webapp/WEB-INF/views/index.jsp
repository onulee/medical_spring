<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index</title>
	</head>
	<body>
	  <h2>카카오로그인</h2>
	  <form>
	    <label>아이디</label>
	    <input type="text" name="id" id="id">
	    <br>
	    <button type="button">로그인</button>
	  </form>
	  <a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=5cd9d50739c717c1e72916e86302bc30&redirect_uri=http://localhost:8181/kakao/oauth">
	    <img src="/images/kakao_login_medium_narrow.png">
	  </a>
	  
	
	</body>
</html>