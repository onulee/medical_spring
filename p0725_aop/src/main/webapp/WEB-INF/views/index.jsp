<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
	  <h1>메인페이지</h1>
		  <h2>로그인전 단계입니다. 로그인을 해주세요.</h2>
		  <form action="/doLogin" name="frm">
		    <label>아이디</label>
		    <input type="text" name="id" id="id"><br>
		    <label>비밀번호</label>
		    <input type="text" name="pw" id="pw"><br>
		    <label>날짜1</label>
		    <input type="text" name="ldate" id="ldate"><br>
		    <label>날짜2</label>
		    <input type="date" name="ldate2" id="ldate2"><br>
		    <input type="submit" value="로그인">
		    <br>
		  </form>
		  <div></div>
		  
	 
	
	
	
	
	
	
	
	
	</body>
</html>