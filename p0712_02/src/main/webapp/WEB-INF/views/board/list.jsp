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
  <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/notice_list.css">
  <script>
    function sBtn(){
    	if($("#searchWord").val().length<1){
	    	alert("검색어를 입력하세요.");
	    	return false;
    	}
    	
    	search.submit();
    }
  </script>
</head>
<body>
<section>
    <h1>NOTICE</h1>
    <div class="wrapper">
      <form action="/board/list" name="search" method="post">
        <select name="category" id="category">
          <option value="all">전체</option>
          <option value="btitle">제목</option>
          <option value="bcontent">내용</option>
        </select>

        <div class="title">
          <input type="text" size="16" name="searchWord" id="searchWord">
        </div>
  
        <button type="button" onclick="sBtn()"><i class="fas fa-search"></i></button>
      </form>
    </div>
    <table>
      <colgroup>
        <col width="18%">
        <col width="50%">
        <col width="18%">
        <col width="10%">
      </colgroup>
      <tr>
        <td colspan="4">총개수 : ${map.countAll} 개</td>
      </tr>
      <!-- 제목부분 -->
      <tr>
        <th>No.</th>
        <th>제목</th>
        <th>작성일</th>
        <th>조회수</th>
      </tr>
      <!-- 내용부분 시작 -->
      <c:forEach items="${map.list}" var="bdto">
	      <tr>
	        <td><span class="table-notice">${bdto.bno}</span></td>
	        <td class="table-title">
	        <a href="/board/view?bno=${bdto.bno}&page=${map.page}&category=${map.category}&searchWord=${map.searchWord}">
	        <c:forEach var="i" begin="1" end="${bdto.bindent}" step="1">▶</c:forEach>
	        ${bdto.btitle }
	        </a>
	        </td>
	        <td>${bdto.id }</td>
	        <td>${bdto.bhit }</td>
	      </tr>
      </c:forEach>
      <!-- 내용부분 끝 -->
      
    </table>

    <ul class="page-num">
      <!-- first 부분 -->
      <c:if test="${map.page<=1}">
      	<li class="first" ></li> 
      </c:if>
      <c:if test="${map.page>1}">
      	<a href="list?page=1"><li class="first" ></li></a> 
      </c:if>
      <!-- prev 부분 -->
      <c:if test="${map.page<=1}">
      	<li class="prev"></li>
      </c:if>
      <c:if test="${map.page>1}">
      	<a href="list?page=${map.page-1}"><li class="prev"></li></a>
      </c:if>
      
      <c:forEach var="i" begin="${map.startPage}" end="${map.endPage}" step="1">
      	<c:if test="${map.page == i}">
      		<li class="myNum num"><div>${i}</div></li>
      	</c:if>
      	<c:if test="${map.page != i}">
      		<a href="list?page=${i}"><li class="num"><div>${i}</div></li></a> 
      	</c:if>
      </c:forEach>
      
      <c:if test="${map.page<map.maxPage}">
      	<a href="list?page=${map.page+1}"><li class="next"></li></a>
      </c:if>
      <c:if test="${map.page>=map.maxPage}">
      	<li class="next"></li>
      </c:if>
      <c:if test="${map.page<map.maxPage}">
      	<a href="list?page=${map.maxPage}"><li class="last"></li></a>
      </c:if>
      <c:if test="${map.page>=map.maxPage}">
      	<li class="last"></li>
      </c:if>
    </ul>
    

    <a href="/board/write"><div class="write">쓰기</div></a>
  </section>

</body>
</html>