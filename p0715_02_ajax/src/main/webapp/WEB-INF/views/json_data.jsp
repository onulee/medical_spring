<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>게시판</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/notice_list.css">
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script>
    function jsonBtn(){
    	alert("json 불러오기");
    	console.log("category : "+$("#category").val());
    	console.log("sword : "+$("#sword").val());
    	
    	//ajax
    	$.ajax({
    		url:"/ajaxSend",
    		type:"post",
    		data:{"category":$("#category").val(),"sword":$("#sword").val()},
    		dataType:"json",
    		success:function(data){
    			alert("성공");
    			let hData = "";
    			for(var i=0;i<data.length;i++){
	    			hData += '<tr>';
	    			hData += '<td>'+data[i].bno+'</td>';
	    			hData += '<td class="table-title">'+data[i].btitle+'</td>';
	    			hData += '<td>'+data[i].id+'</td>';
	    			hData += '<td>'+data[i].bdate+'</td>';
	    			hData += '<td>'+data[i].bhit+'</td>';
	    			hData += '</tr>';
    			}
    			
    			$("#tbody").html(hData);
    			
    			
    			
    		},
    		error:function(){
    			alert("실패");
    		}
    		
    	});//ajax
    	
    }
  </script>
  
</head>
<body>
<section>
    <h1>NOTICE</h1>
    <div class="wrapper">
      <form action="" name="search" method="post">
        <select name="category" id="category">
          <option value="all">전체</option>
          <option value="btitle">제목</option>
          <option value="bcontent">내용</option>
        </select>

        <div class="title">
          <input type="text" name="sword" id="sword" size="16">
        </div>
  
        <button type="button" onclick="jsonBtn()"><i class="fas fa-search"></i></button>
      </form>
    </div>

    <table>
      <colgroup>
        <col width="15%">
        <col width="35%">
        <col width="20%">
        <col width="20%">
        <col width="10%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
        <th>조회수</th>
      </tr>
      <!-- 내용부분 -->
      <tbody id="tbody">
	      <!-- json데이터 전달 -->
      </tbody>
    </table>

    <ul class="page-num">
      <li class="first"></li>
      <li class="prev"></li>
      <li class="num"><div>1</div></li>
      <li class="next"></li>
      <li class="last"></li>
    </ul>

    <a href="write_view.jsp"><div class="write">쓰기</div></a>
  </section>

</body>
</html>