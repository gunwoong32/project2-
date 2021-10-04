<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giga Box 회원가입</title>
<link rel="stylesheet" href="resources/css/join.css">
<style type="text/css">
	.total{
	background : white;
	width : 800px;
	height : 1500px;
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
	text-align: center;
	}
   
   li{
   list-style: none;
   float: left;
   display: inline;
   font-size: 15px;
   padding: 0px 0px 0px 0px;
   margin: 0px 20px 0px 20px;
   }
   
   #l4{
   background:#503396;
   color: white;
   font-weight: 900;
   }
   
   #b4{
   width : 400px;
   height: 60px; 
   position: fixed;
   top: 450px;
   left:760px;
   background: #503396;
   color: white;
   font-size: medium;
   }
   
   #b4:hover{
   cursor: pointer;
   }
   #giftbox{
   width : 150px;
   height: 150px; 
   position: fixed;
   top: 230px;
   left:885px;
   }
</style>
</head>
<body bgcolor="lightgray">
<div class="total">
	<div id="top">
	<a href="index.jsp"><img id="logo" alt="" src="resources/img/logo.png"></a>
		<ul>
			<li id="l1"> Step.1 본인인증 </li>
			<li id="l2"> Step.2 약관동의 </li>
			<li id="l3"> Step.3 정보입력 </li>
			<li id="l4"> Step.4 가입완료 </li>
		</ul>
	 
	 </div>
	<div id="center"><br>
	<h2>기가박스 가입을 환영합니다.</h2>
	<img id="giftbox" src="resources/img/giftbox.png"><br>
	<a href="index2.jsp">
	<button id="b4">기가박스 즐겁게 이용하러 출발~♪</button>
	 </a>
	 </div>
 </div>	
	
	
</body>
</html>