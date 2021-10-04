<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
    String theaterId = request.getParameter("theaterId");
    String theaterName = request.getParameter("theaterName");
    String MOVIENUM = request.getParameter("MOVIENUM");
    String MOVIETITLE = request.getParameter("MOVIETITLE");
    String date = request.getParameter("date");
    String showTime = request.getParameter("showTime");
    /*
    out.println(theaterId);
    out.println(MOVIENUM);
    out.println(date);
    out.println(showTime);
    */
    session.getAttribute("piid");
    %>
<jsp:include page="/head.jsp" flush="true"/>
	<link rel="stylesheet" href="/mvc01/resources/css/ticketing.css">
<script>
	$(function() {
		var arr = [];
		var $choice =  $('.choice');
		
		$choice.on('click',function(e){
			e.preventDefault();
			var has_class = $(this).hasClass('active');
			if(has_class) $(this).removeClass('active')
			else  $(this).addClass('active')
		});
		
		$('#b1').click(function(e){
			e.preventDefault();
			
			$choice.each(function(){
				var has_class = $(this).hasClass('active');
				if(has_class) arr.push($(this).val());
			});
			
			var str = arr.toString();
			
			console.log(str)
			
			if(str.length == 0){
				alert('좌석을 한개 이상 선택해주세요.')
			}else{
				$.ajax({
					url : "bookInsert.do",
					data : {
						date : '<%= date %>',
						theaterId :'<%= theaterId %>',
						MOVIENUM : <%= MOVIENUM %>,
						showTime : '<%= showTime %>',
						seatNo : str,
						writer : '${piid}'
					},
					success : function(result) {
						alert(result)
						//$('#result').html(result)
						location.href="index2.jsp";
						//location.href="sd.jsp"; 넘길때
					},
					error : function(result) {
						console.log(result.responseText)
						alert('b1.jsp 연결 실패입니다')
					}
					
				})//ajax
			}
		});
	});
</script>
<jsp:include page="/head_taill.jsp" flush="true"/>
<jsp:include page="/header.jsp" flush="true"/>
		<main>
			<nav class="sub_site_nav">
				<ul class="inner_wrap">
					<li><a href="/mvc01/index2.jsp">Home</a></li>
					<li><a href="/book.do">빠른예매</a></li>
				</ul>
			</nav>
			<section class="inner_wrap ticketing_content">
				<h2>영화 예매 페이지</h2>
				<p>※좌석을 체크한 후에 완료 버튼을 클릭해주세요.</p>
				<div class="theater">
					<div class="seats">
						<div class="row">
							<button type="button" class ="choice" id="A1" value="A1" >A1</button>
							<button type="button" class ="choice" id="A2" value="A2" >A2</button>
							<button type="button" class ="choice" id="A3" value="A3" >A3</button>
							<button type="button" class ="choice" id="A4" value="A4" >A4</button>
							<button type="button" class ="choice" id="A5" value="A5" >A5</button>
							<button type="button" class ="choice" id="A6" value="A6" >A6</button>
						</div>
						<div class="row">
							<button type="button" class ="choice" id="B1" value="B1" >B1</button>
							<button type="button" class ="choice" id="B2" value="B2" >B2</button>
							<button type="button" class ="choice" id="B3" value="B3" >B3</button>
							<button type="button" class ="choice" id="B4" value="B4" >B4</button>
							<button type="button" class ="choice" id="B5" value="B5" >B5</button>
							<button type="button" class ="choice" id="B6" value="B6" >B6</button>
						</div>
						<div class="row">
							<button type="button" class ="choice" id="C1" value="C1" >C1</button>
							<button type="button" class ="choice" id="C2" value="C2" >C2</button>
							<button type="button" class ="choice" id="C3" value="C3" >C3</button>
							<button type="button" class ="choice" id="C4" value="C4" >C4</button>
							<button type="button" class ="choice" id="C5" value="C5" >C5</button>
							<button type="button" class ="choice" id="C6" value="C6" >C6</button>
						</div>
						<div class="row">
							<button type="button" class ="choice" id="D1" value="D1" >D1</button>
							<button type="button" class ="choice" id="D2" value="D2" >D2</button>
							<button type="button" class ="choice" id="D3" value="D3" >D3</button>
							<button type="button" class ="choice" id="D4" value="D4" >D4</button>
							<button type="button" class ="choice" id="D5" value="D5" >D5</button>
							<button type="button" class ="choice" id="D6" value="D6" >D6</button>
						</div>
						<div class="row">
							<button type="button" class ="choice" id="E1" value="E1" >E1</button>
							<button type="button" class ="choice" id="E2" value="E2" >E2</button>
							<button type="button" class ="choice" id="E3" value="E3" >E3</button>
							<button type="button" class ="choice" id="E4" value="E4" >E4</button>
							<button type="button" class ="choice" id="E5" value="E5" >E5</button>
							<button type="button" class ="choice" id="E6" value="E6" >E6</button>
						</div>
						<div class="row">
							<button type="button" class ="choice" id="F1" value="F1" >F1</button>
							<button type="button" class ="choice" id="F2" value="F2" >F2</button>
							<button type="button" class ="choice" id="F3" value="F3" >F3</button>
							<button type="button" class ="choice" id="F4" value="F4" >F4</button>
							<button type="button" class ="choice" id="F5" value="F5" >F5</button>
							<button type="button" class ="choice" id="F6" value="F6" >F6</button>
						</div>
					</div>
				</div>
				<div class="next_btn">
					<button  type="button" id="b1">완료</button>
				</div>
			</section>
		</main>
<jsp:include page="/footer.jsp" flush="true" />