<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>


<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../resources/bs/css/bootstrap.min.css">
<script src="../resources/jquery.js" type="text/javascript"></script>
<script src="../resources/bs/js/bootstrap.min.js" type="text/javascript">
</script>




<style type="text/css">

.top_menu{

list-style: none;
display: inline;
position: relative;
top: -10px;


}

#list-group-left{
position: fixed;
float:left;
margin-top:1%;
margin-left: 1%;
width: 7%;
height: 10%;
font-size: 12px;
}

#list-group-right{
position: fixed;
float: right;
margin-top:1%;
margin-right: 1%;
width: 6%;
height: 4%;
font-size: 11px;
text-align: center;

}

#navWrap{
background-color: #000000;
height: 10px;
}

#top_bird{

width: 40px;
height: 40px;
margin-top: 5px;
}


#count{

	column-width:100px;
	column-gap: 25px;
    column-count: 1;
   
}

#count figure{
        display: inline-block;
        border:1px solid rgba(0,0,0,0.0);
        width:210px;
        height:330px;
        margin:0;
        margin-left: 16px;
        padding:10px;
        box-shadow: 2px 2px 5px rgba(0,0,0,0.0);
      }
       
#count figure img{
	  width:160px;
      height:230px;
      }
  
      #count figure figcaption{
        border-top:1px solid rgba(0,0,0,0.0);
        padding:10px;
        margin-top:11px;
      }
      


 footer {
      background-color: #f2f2f2;
      padding: 2px;
    }

.col-md-2 text-center{

padding: 2px;
}

</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="resources/bs/css/bootstrap.min.css">
<script src="resources/jquery.js" type="text/javascript"></script>
<script src="resources/bs/js/bootstrap.min.js" type="text/javascript">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js" type="text/javascript"></script>
<meta charset="UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body onload="InitializeStaticMenu();">
<div class="navbar navbar-static-top">
<div id="navWrap"class="navbar navbar">
			<div class="container-fluid">
				<div class="navbar-header">
					<img id="top_bird" src="../resorces/bird.png">
				</div>
				&nbsp; <a class="navbar-brand"
					style="font-size: 30px; font-family: 휴먼모음T; color: white; margin-left: 1px;"
					href="#">BookMarket</a>
				<c:choose>
					<c:when test="${userVo.user_id eq null}">
						<ul class="nav navbar-nav" style="margin-left: 61%;">
							<li class="active"><a href="../users/membership"><b><font
										color="white">회원가입</font></b></a></li>
							<li><a href="#"><strong onclick="login()"><font
										color="white">로그인</font></Strong></a></li>
							<li><a href="#"><b><font color="white">주문배송</font></b></a></li>
						</ul>
					</c:when>

					<c:otherwise>
					
						<font color="white" style="position:relative; top:10px; margin-left: 1170px;">
						  ${userVo.user_id }님 환영합니다
						 </font>
						  <a href="../users/logout"><button
			type="button" class="btn" style="position:relative; top:9px; background-color: black; color: white;">로그아웃</button></a>
						
					</c:otherwise>
				</c:choose>
 		
				<form class="navbar-form navbar-right">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
</div>


<!-- body -->
 
<span id="list-group-left" class="list-group">
  <a href="#" class="list-group-item disabled" style="color:black; background-color: skyblue;">전체 카테고리</a>
  <a href="/category/korea" class="list-group-item">국내도서</a>
  <a href="/category/foreign" class="list-group-item">해외도서</a>
  <a href="/category/used" class="list-group-item">중고도서</a>
  <a href="/category/cdanddvd" class="list-group-item">CD/DVD</a>
  <a href="/category/movieandshow" class="list-group-item">영화/공연</a>
  <a href="fashionandkids" class="list-group-item">패션/키즈</a>
  </span>
  <div style="display:inline; width:1200px; height:400px; padding-top:3px; padding-left:15px; margin-top:20px; margin-bottom:200px; margin-left:200px; background-color:white; float: left;">
	<div style="margin-top:10px; margin-bottom:-5px; font-size:18px; margin-left:5px; font-family:Arial Black"><b>금주의 베스트셀러</b></div><br>
	
	<div id="count">
	<c:forEach items="${list }" var="bookVO">
	<figure>
	<c:choose>
	<c:when test="${bookVO.book_name eq '언어의 온도'}">
	<img alt="" src="resource/img_best/language-T.jpeg">
	</c:when>
	<c:when test="${bookVO.book_name eq '잠1'}">
	<img alt="" src="../img_best/sleepOne.jpg">
	</c:when>
	<c:when test="${bookVO.book_name eq '오직 두 사람'}">
	<img alt="" src="../img_best/TwoHuman.PNG">
	</c:when>
	<c:when test="${bookVO.book_name eq '말의 품격'}">
	<img alt="" src="../img_best/Elegance.jpg">
	</c:when>
	<c:otherwise>
	<img alt="" src="../img_best/HomoDeus.jpg">
	</c:otherwise>
	</c:choose>
	
	<figcaption style="color:#2478FF; font-size: 5px; position: relative; right: 10px; "><br>
	<b style="color: black; font-size:11px;">${bookVO.book_name }</b><br>
	<span style="color: gray; font-size: 11px;">${bookVO.writer } | ${bookVO.company }</span>
	</figcaption>
	</figure>
	</c:forEach>
	
	<!-- <figure>
	<img alt="" src="http://image.yes24.com/momo/TopCate1280/MidCate008/123777159.jpg">
	<figcaption style="color:#2478FF; font-size: 5px; position: relative; right: 10px; ">임대소득으로 평생 월급을 확보하라!<br>
	<b style="color: black; font-size:11px;">앞으로 5년! 돈되는 부동산</b><br>
	<span style="color: gray; font-size: 11px;">조건희 저 | 트러스트북스</span>
	</figcaption>
	</figure>
	
	
	<figure>
	<img alt="" src="http://image.yes24.com/momo/TopCate1287/MidCate006/128656030.jpg">
	<figcaption style="color:#2478FF; font-size: 5px; position: relative; right: 10px; ">미술사를 한 권으로 읽다!<br>
	<b style="color: black; font-size:11px;">휴식을 위한 지식</b><br>
	<span style="color: gray; font-size: 11px;">허진모 저 | 이상media</span>
	</figcaption>
	</figure>
	
	
	
	<figure>
	<img alt="" src="http://image.yes24.com/momo/TopCate1261/MidCate008/126070665.jpg">
	<figcaption style="color:#2478FF; font-size: 5px; position: relative; right: 10px; ">'지금'의 한국 소설 읽기<br>
	<b style="color: black; font-size:11px;">제7회 문지문학상 수상작품집</b><br>
	<span style="color: gray; font-size: 11px;">박민정 등저 | 문학과지성사</span>
	</figcaption>
	</figure>
	
	
	
	<figure>
	<img alt="" src="http://image.yes24.com/momo/TopCate1256/MidCate006/125553196.jpg">
	<figcaption style="color:#2478FF; font-size: 5px; position: relative; right: 10px; ">역사를 바라보는 새로운 관점! <br>
	<b style="color: black; font-size:11px;">한눈에 꿰뚫는 세계사 명장면</b><br>
	<span style="color: gray; font-size: 11px;">역사미스터리클럽 | 이다미디어 </span>
	</figcaption>
	</figure>	 -->

	</div>
 
 
 </div>


 <div style=" width:340px; height:400px; padding-top:3px; padding-left:10px; margin-left:25px; margin-top:20px; margin-bottom:100px; background-color:#D6F0FF; float: left;">
	<div style="margin-top:10px; margin-bottom:-5px; font-size:18px; margin-left:5px; font-family:Arial Black "><b>북마켓 추천도서</b></div>
	<figure>
	<img style="margin-top:15px; width:80px; height:120px; float: left;" alt="" src="http://image.yes24.com/momo/TopCate1279/MidCate008/127874052.jpg">
	<figcaption style=" text-align:center; font-size:8px; font-family:Arial Black; margin-top:30px; margin-left:10px; float: left;"><b style="font-size: 15px;">마르크스는 처음입니다만</b><br><br>이시카와 야스히로 저 / 홍상현 역 |<br>21세기에 다시 불리는 ‘슈퍼스타’ 마르크스!<br>
지금 우리에겐 마르크스가 필요하다!</figcaption>
	</figure>
	<div style=" color:black; margin-right:6px; margin-top: 165px;">
	<hr>
	<figure>
	<img style="margin-top:10px; width:80px; height:120px; float: left;" alt="" src="http://image.yes24.com/momo/TopCate1280/MidCate009/127746671.jpg">
	<figcaption style=" text-align:center; font-size:8px; font-family:Arial Black; margin-top:30px; margin-left:10px; float: left;"><b style="font-size: 15px;">소년의 레시피</b><br><br>배지영 저 / 웨일북 <br>EBS [지식채널e] 화제의 방영작 [소년의 레시피]<br>
지금 우리에겐 마르크스가 필요하다!</figcaption>
	</figure>
	</div>
	</div>
	



 
 


					
  
  
 
  <span id="list-group-right" class="list-group">
  <a href="#" class="list-group-item" style=" color:white; background-color: #484848;">최근 본 상품</a>
  <span class="list-group-item"  style="height:300px; color: white; background-color: #FFFFFF;">아ㅏ아</span>
</span>
<%-- <input type="text" value="${check }"> --%>  





<!-- footer -->

<div id="footerWrap">
<footer id="footer" >
		<div class="row">
			<div class="col-md-12">
				
				<div class="footer_header">
					<ul class="breadcrumb" style="background-color:#9E9E9E">
						<li><a href="./instroCop.html"><font color="white">회사소개</font></a></li>
						<li><a href="./accessTerm.html"><font color="white">이용약관</font></a></li>
						<li><a href="./accessTerm.html"><font color="white">개인정보취급방침</font></a></li>
						<li><a href="./MypageUserInquire.html"><font color="white">고객센터</font></a></li>
						<li style="float: right"><a href="#">▲TOP</a></li>
					</ul>
					
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2 text-center">
				<a class="navbar-brand" href="#"><span class="glyphicon">&#xe043;</span><font></font><br>
				<span style="font-size: 2rem;">BookMarket</span></a>
			</div>
			<div class="col-md-5">
				<div style="width: 50%; float: left;">
					<address style="text-align: center;">
						<strong>BookMarket</strong><br>대표이사 : 박 진 <br>
						<abbr title="Phone">전화상담 : 02) 1234-5678</abbr><br>
						<span>팩스 : 0502-987-5711 (지역번호공통)</span><br>
						<span>개인정보보호최고책임자 : privacy@green.co.kr	</span><br>
					</address>

				</div>
				<div style="width: 50%; float: left;">
					<address style="text-align: center;">
						<strong></strong><br> 고객정보보호 책임자:전진호<br>
						<span>고객님은 안전거래를 위해 현금 등으로 결제시 <br>저희 쇼핑몰에서 가입한 그린컴퓨터의 구매안전서비스를 <br>이용하실 수 있습니다.</span>
					</address>
				</div>
			</div>
			<div class="col-md-5">
				<address>
					<strong></strong><br />
					
				</address>
			</div>
		</div>
		<p class="text-center">Copyright 2017ⓒ BookMarket Inc.. All rights
			reserved. System by: green company</p>
	</footer>
</div>

<script type="text/javascript">

$(document).ready(function(){
	
/* 	var id = '${userVo.user_id}';
	
	setInterval(function (){
		if(id!= null){
			$.ajax({
				type:"post",
				url:"/users/login2",		
				dataType:"text",
				success:function(result){
					alert(result);
					
					$("#id").html(result);
				
				}
			});		
		}		
	}, 1000); */
	
});





function login(){ 
	window.open("../users/login", "login", "width=460, height=350 , scrollbars=1, menubar=1, resizable=1"); 

}

var stmnLEFT = 10; // 오른쪽 여백 
var stmnGAP1 = 100; // 위쪽 여백 
var stmnGAP2 = -250; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
var stmnBASE = 100; // 스크롤 시작위치 
var stmnActivateSpeed = 50; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
var stmnTimer; 

function RefreshStaticMenu() { 
	 var stmnStartPoint, stmnEndPoint; 
	 stmnStartPoint = parseInt(document.getElementById('list-group-left').style.top, 10); 
	 stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
	 if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
	 if (stmnStartPoint != stmnEndPoint) { 
	  stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 45 ); 
	  document.getElementById('list-group-left').style.top = parseInt(document.getElementById('list-group-left').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
	  stmnRefreshTimer = stmnScrollSpeed; 
	  }
	 stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
	 } 
	function InitializeStaticMenu1() {
	 document.getElementById('list-group-left').style.left = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
	 document.getElementById('list-group-left').style.top = document.body.scrollTop + stmnBASE + 'px'; 
	 RefreshStaticMenu();
	 }

	function RefreshStaticMenu2() { 
		 var stmnStartPoint, stmnEndPoint; 
		 stmnStartPoint = parseInt(document.getElementById('list-group-right').style.top, 10); 
		 stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
		 if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
		 if (stmnStartPoint != stmnEndPoint) { 
		  stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 45 ); 
		  document.getElementById('list-group-right').style.top = parseInt(document.getElementById('list-group-right').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
		  stmnRefreshTimer = stmnScrollSpeed; 
		  }
		 stmnTimer = setTimeout("RefreshStaticMenu2();", stmnActivateSpeed); 
		 } 
		function InitializeStaticMenu() {
		 document.getElementById('list-group-right').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
		 document.getElementById('list-group-right').style.top = document.body.scrollTop + stmnBASE + 'px'; 
		 InitializeStaticMenu1();
		 RefreshStaticMenu2();
		 }




</script>
</body>
</html>
