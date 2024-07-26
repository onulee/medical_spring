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
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script>
		$(function(){
		  //등록버튼 클릭
		  $("#mbtn").click(function(){
			 alert("등록버튼 클릭"); 
             const allData = {"id":$("#id").val(),"pw":$("#pw").val(),"name":$("#name").val()};
			 $.ajax({
				 url:"/doForm",
				 type:"post",
				 //data:{"id":$("#id").val(),"pw":$("#pw").val(),"name":$("#name").val()},
				 //data:$("#mfrm").serialize(), //form전체를 보낼때
				 data:JSON.stringify(allData), //Json형태로 보낼때
				 contentType:"application/json; charset-utf-8",
				 dataType:"text",
				 success:function(data){
					 alert("성공");
					
				 },
				 error:function(){
					 alert("실패");
				 }
			 });//ajax
			 
		  });//replyBtn
			
		});//jquery
		
		
		</script>
	</head>
	<body>
	  <h1>메인페이지</h1>
		  <form name="mfrm" id="mfrm" >
		    <label>아이디</label>
		    <input type="text" name="id" id="id"><br>
		    <label>비밀번호</label>
		    <input type="text" name="pw" id="pw"><br>
		    <label>이름</label>
		    <input type="text" name="name" id="name"><br>
		    <button type="button" id="mbtn" >회원가입</button>
		  </form>
		  <div></div>
		
	 
	
	
	
	
	
	
	
	
	</body>
</html>