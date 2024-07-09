<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form</title>
	</head>
	<body>
	  <h2>회원가입</h2>
	  <form action="doMember" name="mfrm" method="post">
	    <label>아이디</label>
	    <input type="text" name="id"><br>
	    <label>패스워드</label>
	    <input type="text" name="pw"><br>
	    <label>이름</label>
	    <input type="text" name="name"><br>
	    <label>전화번호</label>
	    <input type="text" name="phone"><br>
	    <label>성별</label><br>
	    <input type="radio" name="gender" id="male" value="male">
	    <label for="male">남자</label>
	    <input type="radio" name="gender" id="female" value="female">
	    <label for="female">여자</label>
	    <br>
	    <label>취미</label><br>
	    <input type="checkbox" name="hobbys" id="game" value="game">
	    <label for="game">게임</label>
	    <input type="checkbox" name="hobbys" id="golf" value="golf">
	    <label for="golf">골프</label>
	    <input type="checkbox" name="hobbys" id="run" value="run">
	    <label for="run">조깅</label>
	    <input type="checkbox" name="hobbys" id="swim" value="swim">
	    <label for="swim">수영</label>
	    <input type="checkbox" name="hobbys" id="book" value="book">
	    <label for="book">독서</label>
	    <br>
	    <input type="submit" value="회원가입">
	   
	  
	  </form>
	
	</body>
</html>