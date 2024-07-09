<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>데이터 전송완료</title>
		<style>
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  th,td{width:200px; height:40px; }
		</style>
	</head>
	<body>
	   <h2>데이터 전송완료</h2>
	   <table>
	     <tr>
	       <th>제목</th>
	       <th>내용</th>
	     </tr>
	     <tr>
	       <td>번호</td>
	       <td>${stuNo}</td>
	     </tr>
	     <tr>
	       <td>이름</td>
	       <td>${name}</td>
	     </tr>
	     <tr>
	       <td>국어</td>
	       <td>${kor}</td>
	     </tr>
	     <tr>
	       <td>취미</td>
	       <td>${hobby}</td>
	     </tr>
	   </table>
	
	</body>
</html>