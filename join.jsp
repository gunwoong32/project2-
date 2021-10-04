<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>Giga Box 회원가입</title>
 <link rel="stylesheet" href="resources/css/join.css">
 <script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(function() {
	$('#b').click(function() {
		        //alert("b1 클릭클릭")
				piidValue = $("#piid").val()
				 //alert(piidValue)
				$.ajax({
					url : "checkid.gigabox",
					data : {
						piid : piidValue
					},
					success : function(idresult) {
						//alert(idresult)
						$("#idcheckresult").text(idresult)
					},
					error : function(request,status,error) {
						alert("error발생! 다시 시도해주세요.")
					}
				})//ajax end
	})//b end
	
	
	
	$('#pw2').focusout(function() {
		//alert("확인")
			pwValue = $("#pw").val()
			pw2Value = $("#pw2").val()
			if (pwValue == pw2Value) {
				$("#pwcheckresult").text("비밀번호가 일치합니다.")
			}
			else{
				$("#pwcheckresult").text("비밀번호가 일치하지않습니다. 비밀번호를 다시 입력해주세요.")
				$("#pw").val("")
				$("#pw2").val("")	
			}
	})//pw2 end
	
})//$ end


</script>
 
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
   
   #l3{
   background:#503396;
   color: white;
   font-weight: 900;
   }
   
   #b{
   width : 70px;
   height: 30px; 
   position: fixed;
   top: 370px;
   left:1210px;
   background: #503396;
   color: white;
   font-size: small;
    font-weight: 600;
   
   }
   
   #b, #b2, #b3:hover{
   cursor: pointer;
   }
   
   #b2, #b3 {
   width : 100px;
   height: 60px; 
   position: fixed;
   top: 800px;
   background: #503396;
   color: white;
   font-size: medium;
   font-weight: 600;
   }
   
   #b2 {
   left:940px;
   }
   
   #b3 {
   left:820px;
   }
   
   #pwcheckresult{
   color:fuchsia;
   font-weight: 900;
   font-style: italic;
   }
   #idcheckresult{
   color:fuchsia;
   font-weight: 900;
   font-style: italic;
   }
   
   .in{
   width : 250px;
   height: 25px;
   }
   
   table{
   width : 90%;
   }
</style>
</head>
<body bgcolor="lightgray">

<%
    String terms = request.getParameter("terms");
    String marketing = request.getParameter("marketing");
    String method = request.getParameter("method");
    
    String terms2 = "";
    String marketing2 = "";
    String method2 = "";
    if(terms.equals("0")){
    	terms2 = "동의";
     }
     if(marketing.equals("0")){
    	 marketing2 = "동의";
     }
     else{
    	 marketing2 = "동의하지 않음";
     }
     
     if(method.equals("0")){
    	 method2 = "문자";
     }
     else if(method.equals("1")){
    	 method2 = "이메일";
     }
     else if(method.equals("2")){
    	 method2 = "선택하지 않음";
     }
    %>
    
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
			<h2>반갑습니다! 회원가입을 위해 아래의 내용을 작성해주세요.</h2>
			 <form action = "join.gigabox">			 	
			 <table align="center">
			    <tr>
			    	<td>이름</td>  
			    	<td><input class="in" id="name" name="name"></td>
			    </tr>
			    <tr>
			    	<td>생년월일</td>  
			    	<td><input class="in" id="birth" name="birth"></td>
			    </tr>
			    <tr>
			    	<td>전화번호</td>
			    	<td><input class="in" id="tel" name="tel"></td>
			    </tr>
			    <tr>
			    	<td>아이디</td>  
			    	<td><input class="in" id="piid" name="piid" minlength = "6" maxlength = "12" > 
			    	</td>
			 	</tr>
			 	<tr> 
			 		<td colspan = "2">-아이디는 6 ~ 12글자 가능, 중복확인을 해주세요!</td>	
			 	</tr>
			 	<tr>
			 		<td colspan = "2"><div id="idcheckresult"> </div><td colspan = "2"><br>
			 	</tr>
			 	<tr>
			 		<td>비밀번호</td> 
			 		<td><input class="in" id="pw" name="pw" type="password" minlength = "8" maxlength = "20"></td>
			 	</tr>
			 	<tr>	
			 		<td>비밀번호확인</td>
			 		<td><input class="in" id="pw2" type="password"></td>
				</tr>
				<tr>
					<td colspan = "2">-비밀번호는 8 ~ 20글자 가능</td>
				</tr>
				<tr>
					<td colspan = "2"><div id="pwcheckresult"></div></td> <br>
				</tr>
				<tr>
					<td>E-MAIL</td> 
					<td><input class="in" id="email" name="email"></td>
				</tr>
				<tr>
					<td>TICKETMACHINE</td>  
					<td><input type="checkbox" name="ticketmachine" value="0">사용 
					<input type="checkbox" name="ticketmachine" value="1">사용안함 </td>
				</tr>
				<tr> 
			 		<td colspan = "2">-사용하시면, 예매하신 티켓을 무인발권기에서 출력할 수 있습니다.</td>	
			 	</tr>
				<tr>
					<td>MYGIGABOX</td>
					<td>
						<select name="mygigabox" id="mygigabox">
						    <option value="강남점">강남점</option>
						    <option value="명동점">명동점</option>
						    <option value="홍대점">홍대점</option>
						    <option value="연신내점">연신내점</option>
						    <option value="고양스타필드점">고양스타필드점</option>
						    <option value="선택안함">선택안함</option>
						</select>
					</td>
				</tr>
				<tr> 
			 		<td colspan = "2">-단골 상영관을 등록합니다.</td>	
			 	</tr>
				<tr>
					<td>필수 약관동의 </td>
					<td><input type="hidden" name="terms" value="<%=terms%>"> <%=terms2%></name></td>
				</tr>
				<tr>
					<td>마케팅 수신동의</td>
					<td><input type="hidden" name="marketing" value="<%=marketing%>"> <%=marketing2%></td>
				</tr>
				<tr>
					<td>수신방법(마케팅수신동의시 체크)</td>
					<td><input type="hidden" name="method" value="<%=method%>"> <%=method2%></td>
				</tr>
				<tr>
				<td><input type="hidden" name="pin" value="0"></td>
				<td><input type="hidden" name="puse" value=" "></td>
				<td><input type="hidden" name="pdate" value="2021.09.29"></td>
				<td><input type="hidden" name="content" value="회원가입"></td>
				
		  		</table>
			<button type="submit" id="b2">회원가입</button>
	 </form>
	 <button type="button" id="b">중복확인</button>
	 <button type="button" id="b3" onclick="location.href='term.jsp'">이전으로</button>
	</div><!-- center end -->
 </div><!-- total end -->
</body>
</html>