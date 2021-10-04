<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giga Box 로그인</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">

$(function() {
				
})// $ end */
</script>
<style type="text/css">
	.total{
	background : white;
	width : 800px;
	height : 1000px;
	position : fixed;
	left: 560px;
	}
	
	#top{
	width: 660px;
	height: 150px;
	position: fixed;
	top: 100px;
	left: 630px;
	}
	
	#logo{
	width: 170px;
	height: 35px;
	position: fixed;
	top: 70px;
	left: 880px;
	}
	
	#center{
	width: 660px;
	height: 500px;
	position: fixed;
	top: 150px;
	left: 630px;
	border-top-style : solid;
	border-top-color: #503396;
	text-align: left;
	}
	
   
   
   #piid{
	width: 250px;
	height: 40px;
	position: fixed;
	top: 250px;
	left: 835px;
	text-align: left;
	}
   #pw{
	width: 250px;
	height: 40px;
	position: fixed;
	top: 305px;
	left: 835px;
	text-align: left;
	}
   #b{
	width: 100px;
	height: 60px;
	position: fixed;
	top: 370px;
	left: 910px;
	background: #503396;
   color: white;
   font-size: medium;
	}
	li{
   list-style: none;
   float: left;
   display: inline;
   font-size: 15px;
   padding: 0px 0px 0px 0px;
   margin: 0px 20px 0px 20px;
   font-size: medium;
   }
   ul{
   width: 300px;
	height: 60px;
	position: fixed;
	top: 450px;
	left: 780px;
   }
</style>
</head>
<body bgcolor="lightgray">
<div class="total">
	<div id="top">
	<a href="index2.jsp"><img id="logo" alt="" src="resources/img/logo.png"></a>
	 </div>
	<div id="center">
	<h2>영화를 즐길 수 있는 곳, 기가박스에 오신것을 환영합니다.</h2>
	<form action = "login.gigabox" >
		<input id="piid" name="piid" placeholder="아이디를 입력해주세요.">
		<input type="password" id="pw" name="pw"  placeholder="비밀번호를 입력해주세요.">
		<button id="b">로그인</button>
	</form>
	<ul>
		<li><a href="find.jsp" id = "b2">ID/비밀번호찾기</a></li> 
		<li><a href="authentication.jsp" id = "b3">회원가입</a></li>
	</ul> 
	</div>
	</div>

</body>
</html>