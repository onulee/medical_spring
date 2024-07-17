<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>챠트</title>
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
		<style>
		    #wrap{width:60%; height:500px; margin:20px auto;
		          border:3px solid black;
		    }
		</style>
		
	</head>
	<body>
	  <h1>차트만들기</h1>
	  <form action="">
	     <label>데이터</label>
	     <input type="text" name="data" id="data">
	     <button id="btn">검색</button>
	  </form>
	  <br>
	  <div id="wrap">
	     <div>
		   <canvas id="myChart"></canvas>
		 </div>
	  </div>
	   
	  <script>
		  const ctx = document.getElementById('myChart');
		
		  new Chart(ctx, {
		    type: 'bar',
		    data: {
		      labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
		      datasets: [{
		        label: '색상별 데이터',
		        data: [12, 19, 3, 5, 2, 3],
		        borderWidth: 1
		      }]
		    },
		    options: {
		      scales: {
		        y: {
		          beginAtZero: true
		        }
		      }
		    }
		  });
		</script> 
	   
	   
	    
	</body>
</html>