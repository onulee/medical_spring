<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>map</title>
	</head>
	<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d6a3e4e63ce6514f39f88e53f8535e7e&libraries=services"></script>
<script>
var addressArr = ['서울특별시 구로구 디지털로34길 27','서울특별시 구로구 디지털로34길 43','서울특별시 구로구 디지털로26길 111'];
var positionsData = [];

	var aTemp;
	for(var i = 0; i<addressArr.length;i++){
		console.log("addressArr : "+addressArr[i]);
		//주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(addressArr[i], function(result, status) {
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        console.log("result[0].y : "+result[0].y);
		        console.log("result[0].x : "+result[0].x);
		        // 주소좌표 추가
		        aTemp = { title: addressArr[i], latlng: coords };
		        //여러개 마커 부분에 추가
		        positionsData.push(aTemp);
	            console.log("positionsData : "+positionsData);
		    } 
		    
		     var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
		     mapOption = { 
		         center: new kakao.maps.LatLng(37.4851520949372, 126.898809246391), // 지도의 중심좌표
		         level: 4 // 지도의 확대 레벨
		     };

		 var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
		  
		 // 마커를 표시할 위치와 title 객체 배열입니다 
		 var positions = positionsData;
		 console.log("positions: "+positions);

		 // 마커 이미지의 이미지 주소입니다
		 var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		     
		 for (var i = 0; i < positions.length; i ++) {
		     
		     // 마커 이미지의 이미지 크기 입니다
		     var imageSize = new kakao.maps.Size(24, 35); 
		     
		     // 마커 이미지를 생성합니다    
		     var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		     
		     // 마커를 생성합니다
		     var marker = new kakao.maps.Marker({
		         map: map, // 마커를 표시할 지도
		         position: positions[i].latlng, // 마커를 표시할 위치
		         title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		         image : markerImage // 마커 이미지 
		     });
		 }//for
		});//addressSearch    
	}
	

</script>
</body>
</html>