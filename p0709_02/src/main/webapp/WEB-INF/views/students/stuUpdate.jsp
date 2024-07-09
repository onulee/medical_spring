<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>form</title>
	</head>
	<body>
	  <h2>성적수정</h2>
	  <form action="doStudents" name="sfrm" method="post">
	    <label>학번</label>
	    <input type="text" name="stuNo" value="${stu.stuNo}"><br>
	    <label>이름</label>
	    <input type="text" name="name" value="${stu.name}"><br>
	    <label>국어</label>
	    <input type="text" name="kor" value="${stu.kor}"><br>
	    <label>영어</label>
	    <input type="text" name="eng" value="${stu.eng}"><br>
	    <label>수학</label>
	    <input type="text" name="math" value="${stu.math}"><br>
	    
	    <label>성별</label><br>
	    <input type="radio" name="gender" id="male" value="male" <c:if test="${stu.gender == 'male' }">checked</c:if> >
	    <label for="male">남자</label>
	    <input type="radio" name="gender" id="female" value="female" <c:if test="${stu.gender == 'female' }">checked</c:if>>
	    <label for="female">여자</label>
	    <br>
	    <label>취미</label><br>
	    <input type="checkbox" name="hobbys" id="game" value="game" <c:if test="${fn:contains(stu.hobby,'game')}">checked</c:if> >
	    <label for="game">게임</label>
	    <input type="checkbox" name="hobbys" id="golf" value="golf" <c:if test="${fn:contains(stu.hobby,'golf')}">checked</c:if>>
	    <label for="golf">골프</label>
	    <input type="checkbox" name="hobbys" id="run" value="run" <c:if test="${fn:contains(stu.hobby,'run')}">checked</c:if> >
	    <label for="run">조깅</label>
	    <input type="checkbox" name="hobbys" id="swim" value="swim" <c:if test="${fn:contains(stu.hobby,'swim')}">checked</c:if> >
	    <label for="swim">수영</label>
	    <input type="checkbox" name="hobbys" id="book" value="book" <c:if test="${fn:contains(stu.hobby,'book')}">checked</c:if> >
	    <label for="book">독서</label>
	    <br>
	    <input type="submit" value="성적저장">
	   
	  
	  </form>
	
	</body>
</html>