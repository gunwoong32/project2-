<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giga Box 비밀번호 변경</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">

$(function() {
	$('#beditpw').click(function() {
		pwValue = $("#pw2").val()
		piidValue = $("#piid").val()
		$.ajax({
			url : "editpw.gigabox",
			data : {
				piid : piidValue,
				pw : pwValue,
			},
			success : function(editpwresult2) {
				alert(editpwresult2)
			}
		})//ajax end
	})//editpw end
	
})//$ end
</script>	
</head>
<style type="text/css">
	.total{
	background : white;
	width : 800px;
	height : 1080px;
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
	top: 40px;
	left: 860px;
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
    
   #beditpw{
   width : 150px;
   height: 40px; 
   position: fixed;
   top: 420px;
   left:885px;
   background: #503396;
   color: white;
   font-size: medium;
   }
   #beditpw:hover{
   cursor: pointer;
   }
   input{
    width : 250px;
    height : 30px;
   }
   #pw{
   position: fixed;
   top: 280px;
   left:835px;
   }
   #pw2{
   position: fixed;
   top: 325px;
   left:835px;
   }
</style>
</head>
<body bgcolor="lightgray">
<div class="total">
	<div id="top">
	<a href="index2.jsp"><img id="logo" alt="" src="resources/img/logo.png"></a>
	</div>
	<div id="center">
		<h1>비밀번호 재설정</h1>
		새로 사용하실 비밀번호를 입력해주세요.<br>
		<input type="password" id="pw" placeholder="비밀번호입력"><br>
		<input type="password" id="pw2" placeholder="비밀번호를 한번 더 입력해주세요."><br>
		<button id="beditpw">비밀번호 변경하기</button>
		<input type="hidden" name="piid" id="piid" value="쟈스민">
	</div>
</div> <!-- total -->
</body>
</html>