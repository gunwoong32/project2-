<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src = "resources/js/jquery-3.6.0.js">></script>
<script type="text/javascript">
$(function() {
	$('#tab02').one("click", function() {
		//alert('tab02 click!')
		tab02Value = $('#tab02').val()
		//alert(tab02Value)
		$.ajax({
			url : "theaterReservation.jsp",
			data : {
				tab02 : tab02Value
			},
			success : function(result) {
				//alert('theaterReservation.jsp 호출 성공')
				//alert(result)
				$('.con02').append(result +'<br>')
			},	//success end
			error : function() {
				alert('theaterReservation.jsp 호출 실패')
			}	//error end
		}) //ajax end
	})	//tab02 end
	
	$('#tab03').one("click",function() {
		//alert('tab03 click!')
		tab03Value = $('#tab03').val()
		//alert(tab03Value)
		$.ajax({
			url : "theaterTab03.jsp",
			data : {
				tab03 : tab03Value
			},
			success : function(result) {
				//alert('theaterTab03.jsp 호출 성공')
				//alert(result)
				$('.con03').append(result +'<br>')
			},	//success end
			error : function() {
				alert('theaterTab03.jsp 호출 실패')
			}	//error end
		}) //ajax end
	})	//tab03 end
})	//$ end
</script>


<style>
input[type ="radio"] {display : none;}
input[type ="radio"] + label {display: inline-block;padding: 20px;background: #aaa;color:#ffffff; font-size: 14px;cursor: pointer;}
input[type ="radio"]:checked + label {background: #503396;}
.conbox {width: 1920px;height: 1080px;background: #aaa;color:#ffffff;margin:auto;display: none;}
input[id="tab01"]:checked ~ .con01 {display: block;}
input[id="tab02"]:checked ~ .con02 {display: block;}
input[id="tab03"]:checked ~ .con03 {display: block;}
</style>
</head>
<body>
<div class ="tab_content" align="justify">
	<input type="radio" name = tabmenu id = "tab01" checked="checked">
	<label for="tab01">극장정보</label>
	<input type="radio" name = tabmenu id = "tab02">
	<label for="tab02">상영시간표</label>
	<input type="radio" name = tabmenu id = "tab03">
	<label for="tab03">관람료</label>
	
	<div class ="conbox con01">컨텐츠탭내용01</div>
	<div class ="conbox con02">
	
	</div>
	
	<div class ="conbox con03">
		
	</div>
</div>
</body>
</html>