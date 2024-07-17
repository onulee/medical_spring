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
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6a3e4e63ce6514f39f88e53f8535e7e"></script>
  
  
</head>
<body>
<section>
    <script>
	    $(function(){
	    	$("#sBtn").click(function(){
	       	 	alert("검색버튼 클릭");
	       	 	
	       	    $.ajax({
	       	 		url:"public_data",
	       	 		type:"post",
	       	 		data:{},
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
    <h1>관광사진갤러리 목록</h1>
    <div class="wrapper">
      <form action="/search" name="search" method="post">
        <select name="category" id="category">
          <option value="all">페이지</option>
          <option value="title">제목</option>
          <option value="content">내용</option>
        </select>

        <div class="title">
          <input type="text" name="page" size="16">
        </div>
  
        <button type="button" id="sBtn"><i class="fas fa-search"></i></button>
      </form>
    </div>
    <!-- 다음지도 -->
    <!-- 지도를 표시할 div 입니다 -->
	<div id="mapBody">
		<div id="map" style="width:100%;height:350px;"></div>
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
  <script>
  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
  mapOption = { 
      center: new kakao.maps.LatLng(37.48540818554381, 126.89810347238074), // 지도의 중심좌표
      level: 3 // 지도의 확대 레벨
  };

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
	//지도를 클릭한 위치에 표출할 마커입니다
	var marker = new kakao.maps.Marker({ 
	  // 지도 중심좌표에 마커를 생성합니다 
	  position: map.getCenter() 
	}); 
	//지도에 마커를 표시합니다
	marker.setMap(map);
	
	//지도에 클릭 이벤트를 등록합니다
	//지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
	  
	  // 클릭한 위도, 경도 정보를 가져옵니다 
	  var latlng = mouseEvent.latLng; 
	  
	  // 마커 위치를 클릭한 위치로 옮깁니다
	  marker.setPosition(latlng);
	  
	  var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
	  message += '경도는 ' + latlng.getLng() + ' 입니다';
	  
	  var resultDiv = document.getElementById('clickLatlng'); 
	  resultDiv.innerHTML = message;
	  
	});
	</script>
</body>
</html>