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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript" src="../js/top_navi.js"></script>
<script type="text/javascript" src="../js/left_navi.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/idangerous.swiper-2.1.min.js"></script>
<script type="text/javascript" src="../js/jquery.anchor.js"></script>
<!-- 날짜 포맷함수 -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>

<style>
  a {cursor: pointer;}
</style>
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

	<div id="header">
		
		<div id="snbBox">
			<h1><img src="../images/txt/logo.gif" alt="JARDIN SHOP" /></h1>
			<div id="quickmenu">
				<div id="mnaviOpen"><img src="../images/btn/btn_mnavi.gif" width="33" height="31" alt="메뉴열기" /></div>
				<div id="mnaviClose"><img src="../images/btn/btn_mnavi_close.gif" width="44" height="43" alt="메뉴닫기" /></div>
				<ul>
					<li><a href="#">EVENT</a></li>
					<li><a href="#">CUSTOMER</a></li>
					<li><a href="#">COMMUNITY</a></li>
				</ul>
			</div>
			<div id="snb">
				<ul>
					<li><a href="#">LOGIN</a></li>
					<li><a href="#">JOIN</a></li>
					<li><a href="#">MY PAGE</a></li>
					<li><a href="#">CART</a></li>
				</ul>

				<div id="search">
					<input type="text" class="searchType" />
					<input type="image" src="../images/btn/btn_main_search.gif" width="23" height="20" alt="검색하기" />
				</div>
			</div>
		</div>
	</div>


	<!-- GNB -->
	<div id="gnb">
		
		<div id="top">
			<ul>
				<li class="brand t1"><a href="#" id="topNavi1">JARDIN’s BRAND</a>
					<ul id="topSubm1">
						<li><a href="#">클래스</a></li>
						<li><a href="#">홈스타일 카페모리</a></li>
						<li><a href="#">드립커피백</a></li>
						<li><a href="#">카페리얼 커피</a></li>
						<li><a href="#">오리지널커피백</a></li>
						<li><a href="#">카페리얼 음료</a></li>
						<li><a href="#">마일드커피백</a></li>
						<li><a href="#">워터커피</a></li>
						<li><a href="#">카페포드</a></li>
						<li><a href="#">모히또파티</a></li>
						<li><a href="#">테이크아웃 카페모리</a></li>
						<li><a href="#">포타제</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi2">원두</a>
					<ul id="topSubm2">
						<li><a href="#">클래스</a></li>
						<li><a href="#">로스터리샵</a></li>
						<li><a href="#">커피휘엘</a></li>
						<li><a href="#">산지별 생두</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi3">원두커피백</a>
					<ul id="topSubm3">
						<li><a href="#">드립커피 로스트</a></li>
						<li><a href="#">오리지널커피백</a></li>
						<li><a href="#">마일드커피백</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi4">인스턴트</a>
					<ul id="topSubm4">
						<li><a href="#">까페모리</a></li>
						<li><a href="#">홈스타일카페모리</a></li>
						<li><a href="#">포타제</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi5">음료</a>
					<ul id="topSubm5">
						<li><a href="#">까페리얼</a></li>
						<li><a href="#">워터커피</a></li>
						<li><a href="#">모히또</a></li>
					</ul>
				</li>
				<li class="t2"><a href="#" id="topNavi6">커피용품</a>
					<ul id="topSubm6">
						<li><a href="#">종이컵</a></li>
						<li><a href="#">커피필터</a></li>
						<li><a href="#">머신 등</a></li>
					</ul>
				</li>
				<li class="t1"><a href="#" id="topNavi7">선물세트</a></li>
				<li class="t2"><a href="#" id="topNavi8">대량구매</a></li>
			</ul>
		</div>

		<script type="text/javascript">initTopMenu();</script>
	</div>
	<!-- //GNB -->

	<!-- container -->
	<div id="container">

		<div id="location">
			<ol>
				<li><a href="#">HOME</a></li>
				<li><a href="#">CUSTOMER</a></li>
				<li class="last">NOTICE</li>
			</ol>
		</div>
		
		<div id="outbox">		
			<div id="left">
				<div id="title2">CUSTOMER<span>고객센터</span></div>
				<ul>	
					<li><a href="#" id="leftNavi1">NOTICE</a></li>
					<li><a href="#" id="leftNavi2">1:1문의</a></li>
					<li><a href="#" id="leftNavi3">FAQ</span></a></li>
					<li class="last"><a href="#" id="leftNavi4">이용안내</a></li>
				</ul>			
			</div><script type="text/javascript">initSubmenu(1,0);</script>


			<!-- contents -->
			<div id="contents">
				<div id="customer">
					<h2><strong>NOTICE</strong><span>쟈뎅샵 소식을 전해드립니다.</span></h2>

					<div class="viewDivMt">
						<div class="viewHead">
							<div class="subject">
								<ul>
									<li>${nDto.btitle }</li>
								</ul>
							</div>
							<div class="day">
								<p class="txt">작성일<span>${nDto.bdate}</span></p>
							</div>
						</div>

						<div class="viewContents">
							${nDto.bcontent }
						</div>
					</div>


					<!-- 이전다음글 -->
					<div class="pnDiv web">
						<table summary="이전다음글을 선택하여 보실 수 있습니다." class="preNext" border="1" cellspacing="0">
							<caption>이전다음글</caption>
							<colgroup>
							<col width="100px" />
							<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th class="pre">PREV</th>
									<td><a href="#">상품 재입고는 언제 되나요?</a></td>
								</tr>

								<tr>
									<th class="next">NEXT</th>
									<td>다음 글이 없습니다.</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- //이전다음글 -->
					<script>
					  $(function(){
						
						  let count = '${list.size()}';
						  console.log("댓글 개수 : "+count);
						  
						  let cno;
						  let bno;
						  let id;
						  let cpw;
						  let ccontent;
						  let cdate;
						  
						  //등록버튼 클릭
						  $(".replyBtn").click(function(){
							 //alert("등록버튼 클릭"); 
							 if(${sessionId == null}){
								 alert("로그인을 하셔야 댓글작성이 가능합니다.");
								 //location.href="/member/login";
								 $(".replyType").val("");
								 return false;
							 }
							 
							 let bno = "${nDto.bno}";
							 let id = '${sessionId}';
							 let cpw = $(".replynum").val();
							 let ccontent = $(".replyType").val();
							 console.log("bno : "+bno);
							 console.log("id : "+id);
							 console.log("cpw : "+cpw);
							 console.log("ccontent : "+ccontent);
							 
							 $.ajax({
								 url:"/customer/commentBwrite",
								 type:"post",
								 data:{"bno":bno,"id":id,"cpw":cpw,"ccontent":ccontent},
								 dataType:"json",
								 success:function(data){
									 alert("댓글이 저장되었습니다.");
									 let htmlData = "";
									 htmlData += '<ul id='+data.cno+' >';
									 htmlData += '<li class="name">'+data.id+' <span>['+moment(data.cdate).format("YYYY-MM-DD HH:mm:ss")+']</span></li>';
									 htmlData += '<li class="txt">'+data.ccontent+'</li>';
									 htmlData += '<li class="btn">';
									 htmlData += '<a class="rebtn uBtn">수정</a>&nbsp';
									 htmlData += '<a class="rebtn dBtn">삭제</a>';
									 htmlData += '</li>';
									 htmlData += '</ul>';
									 
									 if(count>0) $(".replyBox").prepend(htmlData);
									 else $(".replyBox").html(htmlData);
									//총개수 +1증가
									 $("#comment_number").text( Number($("#comment_number").text())+1 );
									 //글쓰기 초기화
									 $(".replynum").val("");
									 $(".replyType").val("");
								 },
								 error:function(){
									 alert("실패");
								 }
							 });//ajax
						  });//replyBtn
						  
						// 삭제버튼 클릭
						$(document).on("click",".dBtn",function(){
							console.log("ui cno : "+$(this).closest('ul').attr('id'));
							if(!confirm("댓글을 삭제하시겠습니까?")){
								return false;
							}
							
							let cno = $(this).closest('ul').attr('id');
							
							$.ajax({
								url:"/customer/commentBDelete",
								type:"post",
								data:{"cno":cno},
								dataType:"text",
								success:function(data){
									 alert("댓글이 삭제되었습니다.");
									 $("#"+cno).remove();
									 //총개수 -1감소
									 $("#comment_number").text( Number($("#comment_number").text())-1 );
								 },
								 error:function(){
									 alert("실패");
								 }
							});//ajax
						});//dBtn
					  
						  
						// 수정버튼 클릭
						$(document).on("click",".uBtn",function(){
						    alert("댓글 수정을 진행합니다.");
						    console.log("ui cno : "+$(this).closest('ul').attr('id'));
						    
						    cno = $(this).closest('ul').attr('id');
						    id =  '${sessionId}';
						    cdate = $(this).closest('ul').children('.name').children('span').text();
						    ccontent = $(this).closest('ul').children('.txt').text();
						    
						    console.log("cno : "+cno);
						    console.log("id : "+id);
						    console.log("cdate : "+cdate);
						    console.log("ccontent : "+ccontent);
						    
						    let htmlData = "";
						    htmlData += '<li class="name">'+id+' <span>'+cdate+'</span></li>';
						    htmlData += '<li class="txt"><textarea class="replyType">'+ccontent+'</textarea></li>';
						    htmlData += '<li class="btn">';
						    htmlData += '<a class="rebtn updateBtn">완료</a> ';
						    htmlData += '<a class="rebtn cancelBtn">취소</a>';
						    htmlData += '</li>';
						    
						    $("#"+cno).html(htmlData);
						});//uBtn
						
						// 취소버튼 클릭
						$(document).on("click",".cancelBtn",function(){
						    alert("취소버튼을 클릭하셨습니다.");
						    //데이터 확인
						    console.log("ui cno : "+$(this).closest('ul').attr('id'));
						    console.log("update cno : "+cno);
						    console.log("update id : "+id);
						    console.log("update cdate : "+cdate);
						    console.log("update ccontent : "+ccontent);
						    
						    //데이터 넣기
						    let htmlData = "";
							htmlData += '<li class="name">'+id+' <span>'+cdate+'</span></li>';
							htmlData += '<li class="txt">'+ccontent+'</li>';
							htmlData += '<li class="btn">';
							htmlData += '<a class="rebtn uBtn">수정</a>&nbsp';
							htmlData += '<a class="rebtn dBtn">삭제</a>';
							htmlData += '</li>';
							 
							$("#"+cno).html(htmlData); 
						});//cancelBtn
						
						// 수정완료버튼 클릭
						$(document).on("click",".updateBtn",function(){
							alert("댓글 수정을 하였습니다.");
							//데이터 확인
						    console.log("ui cno : "+$(this).closest('ul').attr('id'));
						    ccontent = $(this).closest('ul').children('.txt').children('.replyType').val();
							
							console.log("update cno : "+cno);
						    console.log("update id : "+id);
						    console.log("update ccontent : "+ccontent);
							
						    //수정한 내용을 controller로 전송
						    $.ajax({
								 url:"/customer/commentBUpdate",
								 type:"post",
								 data:{"cno":cno,"id":id,"ccontent":ccontent},
								 dataType:"json",
								 success:function(data){
									 alert("댓글이 수정되었습니다.");
									 let htmlData = "";
									 htmlData += '<li class="name">'+data.id+' <span>['+moment(data.cdate).format("YYYY-MM-DD HH:mm:ss")+']</span></li>';
									 htmlData += '<li class="txt">'+data.ccontent+'</li>';
									 htmlData += '<li class="btn">';
									 htmlData += '<a class="rebtn uBtn">수정</a>&nbsp';
									 htmlData += '<a class="rebtn dBtn">삭제</a>';
									 htmlData += '</li>';
									 
									 //현재위치에 수정코드 입력
									 $("#"+cno).html(htmlData);
									 
								 },
								 error:function(){
									 alert("실패");
								 }
							 });//ajax
						    
						});//updateBtn
					  
					  });//jquery
					</script>
					
					<!-- 댓글-->
					<div class="replyWrite">
						<ul>
							<li class="in">
								<p class="txt">총 <span id="comment_number" class="orange">${list.size() }</span> 개의 댓글이 달려있습니다.</p>
								<p class="password">비밀번호&nbsp;&nbsp;<input type="password" class="replynum" /></p>
								<textarea class="replyType"></textarea>
							</li>
							<li class="btn"><a class="replyBtn" id="rBtn" >등록</a></li>
						</ul>
						<p class="ntic">※ 비밀번호를 입력하시면 댓글이 비밀글로 등록 됩니다.</p>
					</div>

					<div class="replyBox">
						<c:if test="${list.size()>0 }">
							<c:forEach items="${list}" var="cDto">
							<ul id="${cDto.cno}">
								<li class="name">${cDto.id} <span>[${cDto.cdate }]</span></li>
								<c:if test="${sessionId !=cDto.id and cDto.cpw != null }">
									<li class="txt">
										<a class="passwordBtn"><span class="orange">※ 비밀글입니다.</span></a>
									</li>
								</c:if>
								
								<c:if test="${sessionId !=cDto.id and cDto.cpw == null }">
								    <li class="txt">${cDto.ccontent }</li>
								</c:if>
								
								<c:if test="${sessionId == cDto.id }">
								    <li class="txt">${cDto.ccontent }</li>
									<li class="btn">
										<a class="rebtn uBtn">수정</a>
										<a class="rebtn dBtn">삭제</a>
									</li>
								</c:if>
							</ul>
							</c:forEach>
						</c:if>
						<c:if test="${list.size() == 0 }">
						    <ul>
						      댓글이 없습니다.
						    </ul>
						</c:if>
												
						<!-- 비밀글 시작 -->
						<!-- 
						<ul>
							<li class="name">jjabcde <span>[2014-03-04&nbsp;&nbsp;15:01:59]</span></li>
							<li class="txt">
								<a href="password.html" class="passwordBtn"><span class="orange">※ 비밀글입니다.</span></a>
							</li>
						</ul>
						 -->
						<!-- 비밀글 끝 -->
					</div>
					<!-- //댓글 -->
					
					<!-- Btn Area -->
					<div class="btnArea btline">
						<div class="bRight">
							<ul>
								<li><a href="/customer/notice" class="sbtnMini mw">목록</a></li>
							</ul>
						</div>
					</div>
					<!-- //Btn Area -->
					
				</div>
			</div>
			<!-- //contents -->


		</div>
	</div>
	<!-- //container -->




	<div id="footerWrap">
		<div id="footer">
			<div id="fnb">
				<ul>
					<li class="left"><a href="#">개인정보취급방침</a></li>
					<li><a href="#">이용약관</a></li>
					<li class="left"><a href="#">이메일무단수집거부</a></li>
					<li><a href="#">고객센터</a></li>
					<li class="left brand"><a href="#">쟈뎅 브랜드 사이트</a></li>
				</ul>
			</div>
			
			<div id="finfo">
				<div id="flogo"><img src="../images/txt/flogo.gif" alt="JARDIN THE COFFEE CREATOR, SINCE 1984" /></div>
				<address>
					<ul>
						<li>㈜쟈뎅</li>
						<li>대표자 윤영노</li>
						<li class="tnone">주소 서울시 강남구 논현동 4-21번지 영 빌딩</li>
						<li class="webnone">소비자상담실 02)546-3881</li>
						<li>사업자등록번호 211-81-24727</li>
						<li class="tnone">통신판매신고 제 강남 – 1160호</li>
						<li class="copy">COPYRIGHT © 2014 JARDIN <span>ALL RIGHTS RESERVED.</span></li>
					</ul>
				</address>

				<div id="inicis"><img src="../images/ico/ico_inicis.png" alt="이니시스 결제시스템" /></div>
			</div>
		</div>
	</div>



</div>
</div>
</body>
</html>