<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>데이터</title>
	</head>
	<body>
	  <h2>데이터전송</h2>
	  <form action="doData" name="dfrm" method="post">
	    <label>학번</label>
	    <input type="text" name="stuNo"><br>
	    <label>이름</label>
	    <input type="text" name="name"><br>
	    <label>국어</label>
	    <input type="text" name="kor"><br>
	    
	    <label>취미</label><br>
	    <input type="checkbox" name="hobby" id="game" value="game">
	    <label for="game">게임</label>
	    <input type="checkbox" name="hobby" id="golf" value="golf">
	    <label for="golf">골프</label>
	    <input type="checkbox" name="hobby" id="run" value="run">
	    <label for="run">조깅</label>
	    <input type="checkbox" name="hobby" id="swim" value="swim">
	    <label for="swim">수영</label>
	    <input type="checkbox" name="hobby" id="book" value="book">
	    <label for="book">독서</label>
	    <br>
	    
	    <input type="submit" value="저장">
	  </form>
	
	</body>
</html>