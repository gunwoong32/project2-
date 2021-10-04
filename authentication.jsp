<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giga Box 회원가입</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script type="text/javascript">
   $(function() {
      $('#b1').click(function() {
    	  var IMP = window.IMP; // 생략 가능
    	  IMP.init("iamport"); // 예: imp00000000
    	  IMP.certification({ // param
    		    merchant_uid: "ORD20180131-0000011", // 주문 번호
    		    m_redirect_url : "http://www.naver.com", // 모바일환경에서 popup:false(기본값) 인 경우 필수, 예: https://www.myservice.com/payments/complete/mobile
    		    popup : false // PC환경에서는 popup 파라메터가 무시되고 항상 true 로 적용됨
    		  }, 
    		  
    		  function (rsp) { // callback
    			  if (rsp.success) { // 인증 성공 시
    				  //alert("인증성공!");
    			      location.href="term.jsp"
    			    } else {
    			      alert("인증에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
    			    }
    			  });
    		 
      })//b1 end
   })//$ end
</script>
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
   
   li{
   list-style: none;
   float: left;
   display: inline;
   font-size: 15px;
   padding: 0px 0px 0px 0px;
   margin: 0px 20px 0px 20px;
   }
   
   #l1{
   background:#503396;
   color: white;
   font-weight: 900;
   }
   
   #b1{
   position: fixed;
   top: 230px;
   left: 800px;
   }
   #b1:hover{
   cursor: pointer;
   }
</style>
</head>
<body bgcolor="lightgray">
<div class="total">
	<div id="top">
	<a href="index2.jsp"><img id="logo" alt="" src="resources/img/logo.png"></a>
		<ul>
			<li id="l1"> Step.1 본인인증 </li>
			<li id="l2"> Step.2 약관동의 </li>
			<li id="l3"> Step.3 정보입력 </li>
			<li id="l4"> Step.4 가입완료 </li>
		</ul>
	 
	 </div>
	<div id="center">
	<h2>회원가입을 위한 본인인증 단계입니다.</h2><br><br><br><br><br>
    <img id="b1" alt="" src="resources/img/authentication.png"><br><br><br><br><br><br>
	* 본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수집하며,
	<br> 인증 이외의 용도로 이용 또는 저장되지 않습니다.
	</div>
</div><!-- total end -->	
</body>
</html>
</html>