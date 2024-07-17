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
</head>
<body>
<section>
    <script>
	    $(function(){
	    	$("#sBtn").click(function(){
	       	 	alert("검색버튼 클릭");
	       	 	
	       	    $.ajax({
	       	 		url:"public_data2",
	       	 		type:"post",
	       	 		data:{"keyword":$("#keyword").val()}, //controller로 keyword변수값을 전달
	       	 		dataType:"json",
	       	 		success:function(data){
	       	 			alert("성공");
	       	 			console.log("controller data : "+data);
	       	 			let arr = data.response.body.items.item;
	       	 			
	       	 			let htmlData = "";
	    	      
	       	 			for(let i=0;i<arr.length;i++){
		       	 			htmlData += '<tr>';
		       	 			htmlData += '<td><span class="table-notice">'+ arr[i].galContentId +'</span></td>';
		       	 			htmlData += '<td class="table-title">'+ arr[i].galTitle +'</td>';
		       	 			htmlData += '<td>'+ arr[i].galPhotographyLocation +'</td>';
		       	 			htmlData += '<td>'+ arr[i].galPhotographer +'</td>';
		       	 			htmlData += '<td>'+ arr[i].galModifiedtime +'</td>';
		       	 			htmlData += '<td>';
		       	 			htmlData += '<img style="width:20%;" src="'+ arr[i].galWebImageUrl +'">';
		       	 			htmlData += '</td>';
		       	 			htmlData += '</tr>';
	       	 			}
	       	 			
	       	 			$("#tbody").html(htmlData);
	       	 		},
	       	 		error:function(){
	       	 			alert("실패");
	       	 		}
	       	    });//ajax
	         });//sBtn
	    });//jquery
      
    </script>
    <h1>관광사진갤러리 검색</h1>
    <div class="wrapper">
      <form action="/search" name="search" method="post">
        <select name="category" id="category">
          <option value="all">검색</option>
          <option value="title">제목</option>
          <option value="content">내용</option>
        </select>

        <div class="title">
          <input type="text" name="keyword" id="keyword" size="16">
        </div>
  
        <button type="button" id="sBtn"><i class="fas fa-search"></i></button>
      </form>
    </div>

    <table>
      <colgroup>
        <col width="15%">
        <col width="*">
        <col width="15%">
        <col width="15%">
        <col width="15%">
        <col width="15%">
      </colgroup>
      <!-- 제목부분 -->
      <tr>
        <th>사진번호</th>
        <th>제목</th>
        <th>위치</th>
        <th>작가</th>
        <th>촬영일</th>
        <th>이미지</th>
      </tr>
      <!-- 내용부분 -->
      <tbody id="tbody">
	      
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