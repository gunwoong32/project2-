<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Giga Box ID/비밀번호 찾기</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() {

//When page loads...
$(".tab_content").hide(); //Hide all content
$("ul.tabs li:first").addClass("active").show(); //Activate first tab
$(".tab_content:first").show(); //Show first tab content

//On Click Event
$("ul.tabs li").click(function() {

$("ul.tabs li").removeClass("active"); //Remove any "active" class
$(this).addClass("active"); //Add "active" class to selected tab
$(".tab_content").hide(); //Hide all tab content

var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
$(activeTab).fadeIn(); //Fade in the active ID content
return false;
});// ul.tabs li
            
	$('#bfindpw').click(function() {
		var IMP = window.IMP; // 생략 가능
		IMP.init("iamport"); // 예: imp00000000
		IMP.certification({ // param
		merchant_uid: "ORD20180131-0000011", // 주문 번호
		m_redirect_url : "http://www.naver.com", // 모바일환경에서 popup:false(기본값) 인 경우 필수, 예: https://www.myservice.com/payments/complete/mobile
		popup : false // PC환경에서는 popup 파라메터가 무시되고 항상 true 로 적용됨
		}, 
		            		  
			function (rsp) { // callback
				if (rsp.success) { // 인증 성공 시
				alert("인증성공!");
				location.href="resetpw.jsp"
				} 
				else {
				alert("인증에 실패하였습니다." +  rsp.error_msg);
				}
			});
	})//bfindpw end
	
	$('#bfindid').click(function() {
		nameValue = $("#name").val()
		telValue = $("#tel").val()
		$.ajax({
			url : "findid.gigabox",
			data : {
				name : nameValue,
				tel : telValue
			},
			success : function(findresult) {
					alert(findresult)
			},
			error : function(request,status,error) {
				alert("findid.gigabox 호출 실패!!")
				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		})//ajax end
	})//bfindid end

});//$
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
	.tabs{
	width : 700px;
	height : 80px;
	position : fixed;
	top: 200px;
	left: 590px;
	
	}
   li{
      list-style: none;
   float: left;
   display: inline;
   font-size: 20px;
   padding: 0px 0px 0px 0px;
   margin: 0px 20px 0px 20px;
   }
   #li1{
   background: #F8F8FF;
   width: 300px;
   height: 40px;
   position : fixed;
   top: 220px;
   left: 650px;
   text-align: center;
   }
   #li2{
   background: #FFF0F5;
   width: 300px;
   height: 40px;
   position : fixed;
   top: 220px;
   left: 930px;
   text-align: center;
   }
   a{
   text-decoration: none;
   color: black;
   }
   .tab_container{
   width : 700px;
   height : 800px;
   position : fixed;
   top: 265px;
   left: 600px;
   }
   input{
    background:	#E6E6E6;
    width : 200px;
    height : 20px;
   }
   #tab1{
   background: #F8F8FF;
   width : 580px;
   height : 800px;
   position : fixed;
   top: 263px;
   left: 670px;
   }
   #minititle{
   position : fixed;
    top: 290px;
    left: 735px;
    }
   #idtable{
    width: 450px;
    border-top: 1px solid #444444;
    border-collapse: collapse;
    position : fixed;
    top: 350px;
    left: 735px;
   }
   .idf{
    border-bottom: 1px solid #444444;
    padding: 10px;
   }
   
   #bfindid{
   width : 150px;
   height: 40px; 
   position: fixed;
   top: 480px;
   left:885px;
   background: #503396;
   color: white;
   font-size: medium;
   }
   #tab2{
   background: #FFF0F5;
   width : 580px;
   height : 800px;
   position : fixed;
   top: 263px;
   left: 670px;
   }
   #minititle2{
   position : fixed;
    top: 290px;
    left: 735px;
    }
    #findpw{
    position : fixed;
    top: 370px;
    left: 780px;
   }
   #piid{
    width : 200px;
    height : 20px;
    position : fixed;
    top: 370px;
    left: 880px;
   }
   #bfindpw{
   width : 150px;
   height: 40px; 
   position: fixed;
   top: 460px;
   left:885px;
   background: #503396;
   color: white;
   font-size: medium;
  
 </style>
</head>
<body bgcolor="lightgray">
<div class="total">
<div id="top">
	<a href="index2.jsp"><img id="logo" alt="" src="resources/img/logo.png"></a>

</div>
<div id="center">
<h2 style="color:#503396" align="center" >아이디/비밀번호 찾기</h2>
<div id="wrapper">    
    <!--탭 메뉴 영역 -->
    <ul class="tabs">
        <li id="li1"><a href="#tab1">아이디 찾기</a></li>
        <li id="li2"><a href="#tab2">비밀번호 찾기</a></li>
    </ul>
    <!--탭 콘텐츠 영역 -->
    <div class="tab_container">

        <div id="tab1" class="tab_content">
            <!--Content-->
            <h3 id="minititle">간편찾기</h3>
            <table id="idtable">
	           <tr class="idf">
		           <td class="idf">이름</td>
		           <td class="idf"><input type="text" id="name"></td>
	           </tr>
	           <tr class="idf">
		           <td class="idf">휴대폰번호</td>
		           <td class="idf"><input type="text" id="tel" placeholder="예.01015118233"></td>
	           </tr>
           </table>
           <button id="bfindid">아이디 찾기</button>

        </div>

        <div id="tab2" class="tab_content">
           <!--Content-->
           <h3 id="minititle2">본인인증으로 찾기</h3>
           
		     <div id="findpw">아이디<input type="text" id="piid"></div>
	        <button id="bfindpw">본인인증</button>
        </div>

    </div>

</div>
</div><!-- center end -->
 </div><!-- total end -->

</body>
</html>