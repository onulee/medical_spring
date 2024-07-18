<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>     
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>email</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>
		  $(function(){
			  $("#eBtn").click(function(){
				 
				 $.ajax({
					
					 url:"/email_send",
					 type:"post",
					 data:{"name":$("#name").val(),"email":$("#email").val()},
					 dataType:"text",
					 success:function(data){
						 alert("이메일이 발송되었습니다.");
						 console.log("data : "+data);
					 },
					 error:function(){
						 alert("이메일 발송실패");
					 }
					 
				 });//ajax
				 
			  });//click
		  });//jquery
		
		</script>
		
	</head>
	<body>
	   <h2>이메일 발송</h2>
	   <label>이름</label>
	   <input type="text" name="name" id="name"><br>
	   <label>이메일</label>
	   <input type="text" name="email" id="email"><br>
	   <button type="button" id="eBtn" >이메일 발송</button>
	   
	
	</body>
</html>