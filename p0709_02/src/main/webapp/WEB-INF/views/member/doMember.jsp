<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입완료</title>
		<style>
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  th,td{width:200px; height:40px; }
		</style>
	</head>
	<body>
	   <h2>회원정보 확인</h2>
	   <table>
	     <tr>
	       <th>제목</th>
	       <th>내용</th>
	     </tr>
	     <tr>
	       <td>아이디</td>
	       <td>${member.id}</td>
	     </tr>
	     <tr>
	       <td>패스워드</td>
	       <td>${member.pw}</td>
	     </tr>
	     <tr>
	       <td>이름</td>
	       <td>${member.name}</td>
	     </tr>
	     <tr>
	       <td>전화번호</td>
	       <td>${member.phone}</td>
	     </tr>
	     <tr>
	       <td>성별</td>
	       <td>${member.gender}</td>
	     </tr>
	     <tr>
	       <td>취미</td>
	       <td>${member.hobby}</td>
	     </tr>
	   </table>
	
	</body>
</html>