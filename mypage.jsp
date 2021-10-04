<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String piid = (String)session.getAttribute("piid"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>GigaBox 정보수정</title>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">

$(function() {
	
	piidValue = $("#piid").val()
		$.ajax({
			url : "readinform.gigabox",
			data : {
				piid : piidValue
			},
			success : function(result) {
					result = result.split(",");
					$("#name").text(result[0])
					$("#birth").text(result[1])
					$("#tel").text(result[2])
					$("#email").text(result[3])
					
			}
		})//ajax end
	
	$('#editTel').click(function() {
		telValue = $("#telin").val()
		piidValue = $("#piid").val()
		$.ajax({
			url : "edittel.gigabox",
			data : {
				piid : piidValue,
				tel : telValue
			},
			success : function(edittelresult2) {
				alert(edittelresult2)
				location.href = "mypage.jsp";
			}
		})//ajax end
	})//editTel end
	
	
	$('#editEmail').click(function() {
		piidValue = $("#piid").val()
		emailValue = $("#emailin").val()
		$.ajax({
			url : "editemail.gigabox",
			data : {
				piid : piidValue,
				email : emailValue
			},
			success : function(edittelresult2) {
				alert(edittelresult2)
				location.href = "mypage.jsp";
			}
		})//ajax end
	})//editemail end
	
	$('#withdraw').click(function() {
		piidValue = $("#piid").val()
		$.ajax({
			url : "withdraw.gigabox",
			data : {
				piid : piidValue
			},
			success : function(edittelresult2) {
				alert(edittelresult2)
				location.href="index2.jsp";
			}
		})//ajax end
	})//editemail end

	
})//$ end


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
	table{
	width : 100%;
	border-collapse: collapse;
	text-align: center;
	}
	
	tr,th{
	 border-bottom: 3px solid #ddd;
	 height: 55px;
    }
    
    th{
    height: 50px; 
    }
    
     .small{
    width : 35%;
    }
	
	#editTel, #editEmail, #editPw{
	 width : 120px;
     height: 33px; 
     background: #E1BEE7;
     color: #503396;
     font-size: small;
     font-weight: 700;
     border:none;
    }
	
	#withdraw{
	 width : 200px;
     height: 60px; 
     background: #503396;
     color: white;
     font-size: medium;
     font-weight: 700;
	 position: fixed;
     top: 700px;
     left:870px;
    }
       #telin{
     width : 250px;
     height: 35px;
     position: fixed;
     top: 560px;
     left:750px; 
    }
    #editTel{
     position: fixed;
     top: 565px;
     left:1020px; 
    }
    
    #emailin{
     width : 250px;
     height: 35px;
     position: fixed;
     top: 610px;
     left:750px; 
    }
    #editEmail{
     position: fixed;
     top: 615px;
     left:1020px; 
    }
 
    
   
    
    
}
    
</style>
</head>
<body bgcolor="lightgray">
<div class="total">
	<div id="top">
	<a href="index2.jsp"><img id="logo" alt="" src="resources/img/logo.png"></a>
	 </div>
	<div id="center">
			 <input type="hidden" name="piid" id="piid" value="${piid}">

			 <h2>회원기본정보</h2>
			 * 회원님의 정보는 아래와 같습니다.  
			 <table text-align="center">
			    <tr>
			    	<td class="small">이름</td>  
			    	<td><div id="name"></div></td>
			    </tr>
			    <tr>
			    	<td>생년월일</td>
			    	<td><div id="birth"></div></td>
			    </tr>
			    <tr>
			    	<td>휴대폰</td>  
			    	<td><div id="tel"> </div></td>
			    </tr>
			    
			 	<tr>
			 		<td>이메일</td> 
			 		<td><div id="email"></div></td>
			 	</tr>
			    
			 	<tr>	
			 		<td>비밀번호</td>
			 		<td colspan="2"><a href="resetpw.jsp"><button id="editPw">비밀번호 변경</button></a></td>
				</tr>
			</table>
			    	<input id="telin" placeholder="변경할 휴대폰번호를 입력해주세요.">
			    	<button id="editTel">휴대폰 번호변경</button>
			 	
			 		<td><input id="emailin" placeholder="변경할 e-mail주소를 입력해주세요."></td>
			 		<td><button id="editEmail">E-Mail 변경</button></td>
			 	
			
			<button id="withdraw">회원탈퇴</button>
			 </div>
	</div><!-- total end -->
</body>
</html>