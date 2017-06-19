<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

<script type="text/javascript">
$(document).ready(function(){
		var id ='${userVo.user_id}';		
		if(id != ""){
			alert("로그인완료");
			
			opener.document.location.href = '../category/main';
			self.close();
			 /* window.close(); */ 
		}
})
</script>
</head>
<body>

<h1 style="margin-left:2%; color: #565656;">LOGIN</h1>
<form action="login" method="post">
<div class="form-group">
  <label for="user_id" style="margin-left: 2%;">ID:</label>
  <input type="text" class="form-control" name="user_id" style="margin-left:2%; width: 360px;">
</div>
<div class="form-group">
  <label for="password" style="margin-left: 2%;">PASSWORD:</label>
  <input type="password" class="form-control" name="password" style="margin-left:2%; width: 360px;">
</div>
<button class="btn" style="margin-left: 30%;"><strong>아이디/패스워드 찾기</strong></button>
<button class="btn" type="submit" style="margin-left: 5px;">로그인</button>
<button class="btn" style="margin-left: 1%;">닫기</button>
</form>

</body>
</html>