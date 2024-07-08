<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
	</head>
	<body>
	  <h2>회원가입</h2>
	  <form action="doMember" name="frm" method="post">
	    <label>아이디</label>
	    <input type="text" name="id"><br>
	    <label>패스워드</label>
	    <input type="text" name="pw"><br>
	    <label>이름</label>
	    <input type="text" name="name"><br>
	    <label>전화번호</label>
	    <input type="text" name="phone"><br>
	    <label>성별</label><br>
	    <input type="radio" name="gender" value="male" id="male">
	    <label for="male">남자</label>
	    <input type="radio" name="gender" value="female" id="female">
	    <label for="female">여자</label>
	    <br>
	    <label>취미</label><br>
	    <input type="checkbox" name="hobby" value="game" id="game">
	    <label for="game">게임</label>
	    <input type="checkbox" name="hobby" value="golf" id="golf">
	    <label for="golf">골프</label>
	    <input type="checkbox" name="hobby" value="run" id="run">
	    <label for="run">조깅</label>
	    <input type="checkbox" name="hobby" value="swim" id="swim">
	    <label for="swim">수영</label>
	    <input type="checkbox" name="hobby" value="book" id="book">
	    <label for="book">독서</label>
	    <br>
	    <input type="submit" value="전송">
	  </form>
	
	</body>
</html>