<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../resources/bs/css/bootstrap.min.css">
<script src="../resources/jquery.js" type="text/javascript"></script>
<script src="../resources/bs/js/bootstrap.min.js" type="text/javascript">
</script>


<style type="text/css">

.jumbotron{
margin-top:1%;
margin-left:38%;
width: 450px;
height:600px;
}

.join{

width: 300px;
height:300px;


}

#memberId{

width: 80px;
height: 30px; 

}


#navWrap{
background-color: #000000;
}

#top_bird{

width: 40px;
height: 40px;

}

nav{

height: 10%;

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
	href="/resources/bs/css/bootstrap.min.css">
<script src="../resources/jquery.js" type="text/javascript"></script>
<script src="../resources/bs/js/bootstrap.min.js" type="text/javascript">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js" type="text/javascript"></script>
<meta charset="UTF-8">

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="navbar navbar-static-top">
<div id="navWrap"class="navbar navbar">
  <div class="container-fluid">
    <div class="navbar-header">
    <img id="top_bird" src="bird.png">
    </div>&nbsp;
    <a class="navbar-brand" style=" font-size:30px; font-family:휴먼모음T; color: white; margin-left: 1px;" href="#" >BookMarket</a>
    <ul class="nav navbar-nav" style="margin-left: 61%;">
      <li class="active"><a href="../users/membership"><b><font color="white">회원가입</font></b></a></li>
      <li><a href="../users/login"><b><font color="white">로그인</font></b></a></li>
      <li><a href="#"><b><font color="white">주문배송</font></b></a></li>
   	</ul>
    
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

<h2 style="text-align:center; font-size:40px; font-family:fantasy; font-style:inherit;"><B>BookMarket 계정만들기</B></h2>

<form action="membership" method="post" role="form" >

<div class="jumbotron">
<div class="join">
 
   
 
  <table border="1" style="border: none">
   <tr>
   <td>
  <strong style="margin-left: 9%;">ID </strong><strong style="color: red">*</strong><br>
  <div class="userid" style="float: left;">
  <input type="text" id="user_id" style=" margin-left: 7%; width: 350px;"> 
  </div>
  </td>
  <td><button id="userid_check" type="button" class="btn" style="color:white; background-color:black; font-size:10px; width:65px; margin: 30px; margin-right: 2px; margin-bottom: 10px;">중복체크</button>
  </td>
  </tr>
  </table>

  <div class="userpw"> 
  <strong style="margin-left: 10%;">PASSWORD </strong><br> 
  <input type="password" id="password" style="margin-left: 8%; width: 350px;" name="password"> <br></br>
  </div>
  
  <div class="userpw"> 
  <strong style="margin-left: 10%;">NAME </strong><br> 
  <input type="text" id="name" style="margin-left: 8%; width: 350px;" name="name"> <br></br>
  </div>
  
  <div class="userage"> 
  <strong style="margin-left: 10%;">AGE </strong> 
  <input type="text" id="age" style="margin-left: 8%; width: 350px;" name="age"> <br></br>
  </div>
  <div class="useremail"> 
  <strong style="margin-left: 10%;">EMAIL </strong> 
  <input type="email" id="email" style="margin-left: 8%; width: 350px;" name="email"> <br></br>
  </div>
  <div class="userphone"> 
  <strong style="margin-left: 10%;">PHONE </strong> 
  <input type="text" id="phone_num" style="margin-left: 8%; width: 350px;" name="phone_num"> <br></br>
  </div>
  <div class="useraddress"> 
  <strong style="margin-left: 10%;">ADDRESS </strong> 
  <input type="text" id="user_address" style="margin-left: 8%; width: 350px;" name="address"> <br></br>
  </div>
  <br></br>
   <button type="button" id ="b" class="btn" style="margin-left: 39%; margin-right: 1%;">회원가입</button> <button type="button" class="btn" id="back">돌아가기</button>
</div>
 </div>
 </form>



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
	
	var $form = $("form[role='form']");
		
	$("#b").click(function() {
		if($('#user_id').val()==""){
			alert("아이디를 입력하세요");
			$('#user_id').focus();
			return;
		}
		if($('#password').val()==""){
			alert("비밀번호를 입력하세요");
			$('#password').focus();
			return;
		}
		if($('#name').val()==""){
			alert("이름을 입력하세요");
			$('#name').focus();
			return;
		}
		if($('#age').val()==""){
			alert("나이를");
			$('#age').focus();
			return;
		}
		if($('#email').val()==""){
			alert("아이디를 입력하세요");
			$('#email').focus();
			return;
		}
		alert("회원가입 성공");
		$form.submit();
	});
	
});
</script>
<script type="text/javascript">
$("#back").on("click", function(){
    location.href="../category/main";
});

$("#userid_check").on("click" , function(){
	
	alert('이미 사용중인 ID입니다.');
	
})

</script>

</body>
</html>
