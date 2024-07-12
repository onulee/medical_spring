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
	  <h2>메인페이지</h2>
	  <ul>
	    <li><a href="member/login">로그인</a></li>
	    <li><a href="form">회원가입</a></li>
	    <li><a href="/logout">로그아웃</a></li>
	    <li><a href="board/list">게시판</a></li>
	    <li>회원정보</li>
	    
	  </ul>
	
	</body>
</html>