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
	   <form action="stuUpdate" method="post" name="frm">
	       <input type="hidden" name="stuNo" value="${stu.stuNo}">
	       <input type="hidden" name="name" value="${stu.name}">
	       <input type="hidden" name="kor" value="${stu.kor}">
	       <input type="hidden" name="eng" value="${stu.eng}">
	       <input type="hidden" name="math" value="${stu.math}">
	       <input type="hidden" name="rank" value="${stu.rank}">
	       <input type="hidden" name="gender" value="${stu.gender}">
	       <input type="hidden" name="hobby" value="${stu.hobby}">
		   <table>
		     <tr>
		       <th>제목</th>
		       <th>내용</th>
		     </tr>
		     <tr>
		       <td>학번</td>
		       <td>${stu.stuNo}</td>
		     </tr>
		     <tr>
		       <td>이름</td>
		       <td>${stu.name}</td>
		     </tr>
		     <tr>
		       <td>국어</td>
		       <td>${stu.kor}</td>
		     </tr>
		     <tr>
		       <td>영어</td>
		       <td>${stu.eng}</td>
		     </tr>
		     <tr>
		       <td>수학</td>
		       <td>${stu.math}</td>
		     </tr>
		     <tr>
		       <td>합계</td>
		       <td>${stu.total}</td>
		     </tr>
		     <tr>
		       <td>평균</td>
		       <td>${stu.avg}</td>
		     </tr>
		     <tr>
		       <td>등수</td>
		       <td>${stu.rank}</td>
		     </tr>
		     <tr>
		       <td>성별</td>
		       <td>${stu.gender}</td>
		     </tr>
		     <tr>
		       <td>취미</td>
		       <td>${stu.hobby}</td>
		     </tr>
		   </table>
	       <input type="submit" value="수정">
	   
	   </form>
	   
	
	</body>
</html>