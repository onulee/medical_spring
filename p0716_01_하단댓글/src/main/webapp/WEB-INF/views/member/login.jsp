<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<!DOCTYPE html>
<html>
<head>
<title> JARDIN SHOP </title>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="description" content="JARDIN SHOP" />
<meta name="keywords" content="JARDIN SHOP" />
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scaleable=no" />
<link rel="stylesheet" type="text/css" href="../css/reset.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/layout.css?v=Y" />
<link rel="stylesheet" type="text/css" href="../css/content.css?v=Y" />
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<style>a{cursor: pointer;}</style>
<!--[if lt IE 9]>
<script type="text/javascript" src="../js/html5.js"></script>
<script type="text/javascript" src="../js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript">
$(document).ready(function() {
	


});
</script>
</head>
<body>



<!--익스레이어팝업-->
<div id="ieUser" style="display:none">
	<div class="iewrap">	
		<p class="img"><img src="../images/ico/ico_alert.gif" alt="알림" /></p>
		<p class="txt">IE버전이 낮아 홈페이지 이용에 불편함이 있으므로 <strong>IE9이상이나 다른 브라우저</strong>를 이용해 주세요. </p>
		<ul>
			<li><a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank"><img src="../images/ico/ico_ie.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="https://www.google.com/intl/ko/chrome/browser" target="_blank"><img src="../images/ico/ico_chrome.gif" alt="IE 최신브라우저 다운" ></a></li>
			<li><a href="http://www.mozilla.org/ko/firefox/new" target="_blank"><img src="../images/ico/ico_mozila.gif" alt="MOZILA 최신브라우저 다운" ></a></li>
			<li><a href="http://www.apple.com/safari" target="_blank"><img src="../images/ico/ico_safari.gif" alt="SAFARI 최신브라우저 다운" ></a></li>
			<li><a href="http://www.opera.com/ko/o/ie-simple" target="_blank"><img src="../images/ico/ico_opera.gif" alt="OPERA 최신브라우저 다운" ></a></li>		
		</ul>
		<p class="btn" onclick="msiehide();"><img src="../images/ico/ico_close.gif" alt="닫기" /></p>
	</div>
</div>
<!--//익스레이어팝업-->
<!--IE 6,7,8 사용자에게 브라우저 업데이터 설명 Div 관련 스크립트-->
 <script type="text/javascript">

     var settimediv = 200000; //지속시간(1000= 1초)
     var msietimer;

     $(document).ready(function () {
         msiecheck();
     });

     var msiecheck = function () {
         var browser = navigator.userAgent.toLowerCase();
         if (browser.indexOf('msie 6') != -1 ||
                browser.indexOf('msie 7') != -1 ||
				 browser.indexOf('msie 8') != -1) {
             msieshow();			 
         }
         else {
             msiehide();
         }
     }

     var msieshow = function () {
        $("#ieUser").show();
        msietimer = setTimeout("msiehide()", settimediv);
     }

     var msiehide = function () {
		$("#ieUser").hide();
        clearTimeout(msietimer);
     }
</script>

<div id="allwrap">
<div id="wrap">

	<%@ include file="../top/top.jsp" %>

	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="#">HOME</a></li>
				<li><a href="#">MEMBERSHIP</a></li>
				<li class="last">로그인</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title2">MEMBERSHIP<span>멤버쉽</span></div>
				<ul>	
					<li><a href="#" id="leftNavi1">로그인</a></li>
					<li><a href="#" id="leftNavi2">회원가입</a></li>
					<li><a href="#" id="leftNavi3">아이디/<span>비밀번호 찾기</span></a></li>
					<li><a href="#" id="leftNavi4">회원약관</a></li>
					<li><a href="#" id="leftNavi5">개인정보<span>취급방침</span></a></li>
					<li class="last"><a href="#" id="leftNavi6">이메일무단<span>수집거부</span></a></li>
				</ul>			
			</div><script type="text/javascript">initSubmenu(1,0);</script>

            <script>
              $(function(){
            	 $(".sbtn").click(function(){
            		//alert("로그인 진행"); 
            		if($("#id").val()==""){
            			alert("아이디를 입력하셔야 합니다.");
            			$("#id").focus();
            			return false;
            		}
            		if($("#pw").val()==""){
            			alert("패스워드를 입력하셔야 합니다.");
            			$("#pw").focus();
            			return false;
            		}
            		//MemberController 전송
            		loginFrm.submit();
            		
            	 }); 
              });
            </script>

			<!-- contents -->
			<div id="contents">
				<div id="member">
					<h2><strong>로그인</strong><span>로그인 후 주문하시면 다양한 혜택을 받으실 수 있습니다.</span></h2>
					<h3>회원 로그인</h3>
					<div class="informbox">
						<div class="inform">
							<form action="/member/login" name="loginFrm" method="post">
							<ul>
								<li><input type="text" name="id" id="id" class="loginType" onfocus="this.className='mfocus'" onblur="if (this.value.length==0) {this.className='loginType'}else {this.className='mfocusnot'}" style="ime-mode:inactive;" /></li>
								<li><input type="password" name="pw" id="pw" class="passType" onfocus="this.className='mfocus'" onblur="if (this.value.length==0) {this.className='passType'}else {this.className='mfocusnot'}" style="ime-mode:inactive;" /></li>
							</ul>

							<div class="btn"><a class="sbtn">로그인</a></div>
							
							<div class="chk"><input type="checkbox" id="idsave"/><label for="idsave">아이디 저장</label></div>							
							</form>

							<div class="point">
								<p>아이디와 비밀번호를 잊으셨나요?</p>
								<a href="#" class="nbtn">아이디/비밀번호 찾기</a>
							</div>
						</div>
					</div>



					<h3>비회원 주문 조회</h3>
					<div class="informbox">
						<div class="inform">
							<ul>
								<li><input type="text" class="ordererType" onfocus="this.className='mfocus'" onblur="if (this.value.length==0) {this.className='ordererType'}else {this.className='mfocusnot'}" /></li>
								<li><input type="text" class="ordernumType" onfocus="this.className='mfocus'" onblur="if (this.value.length==0) {this.className='ordernumType'}else {this.className='mfocusnot'}" /></li>
							</ul>

							<div class="btn"><a href="#" class="gbtn">조회하기</a></div>
							<div class="point">
								<p>아직 JARDIN 회원이 아니신가요? <span>회원가입하시고 다양한 혜택을 받으세요.</span></p>
								<a href="#" class="nbtn">회원가입</a>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- //contents -->


		</div>
	</div>
	<!-- //container -->


    <%@ include file="../footer/footer.jsp" %>

	


</div>
</div>
</body>
</html>