<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="true"/>
	<link rel="stylesheet" href="/mvc01/resources/css/theaters.css">
	<script type="text/javascript">
		$(function(){
			var $select_theater = $('.select_theater a');
			
			$select_theater.on('click',function(e){
				e.preventDefault();
				var $p = $(this).parent(),
					has_class = $p.hasClass('active');
				if(!has_class){
					var href = $(this).attr('href')
					$p.addClass('active').siblings().removeClass('active');
					$(href).addClass('active').siblings().removeClass('active');
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
					<li><a href="/mvc01/theater01.jsp">극장</a></li>
				</ul>
			</nav>
			<section class="inner_wrap theaters_content">
				<h2>극장</h2>
				<div class="select_theater">
					<ul>
						<li class="active"><a href="#theater_0">서울</a></li>
						<li><a href="#theater_1">경기</a></li>
						<li><a href="#theater_2">인천</a></li>
						<li><a href="#theater_3">대전/충청/세종</a></li>
						<li><a href="#theater_4">부산/대구/경상</a></li>
						<li><a href="#theater_5">광주/전라</a></li>
						<li><a href="#theater_6">강원</a></li>
					</ul>
				</div>
				<div class="theaters_wrap">
					<div id="theater_0" class="active">
						<ul>
							<li><a href = "theaterOne.do?theaterId=1">*강남</a></li>
							<li><a href = "theaterTwo.do?theaterId=2">*동대문</a></li>
							<li><a href = "theaterOne.jsp">상암월드컵경기장</a></li>
							<li><a href = "theaterOne.jsp">신촌</a></li>
							<li><a href = "theaterOne.jsp">홍대</a></li>
							<li><a href = "theaterOne.jsp">강남대로(씨티)</a></li>
							<li><a href = "theaterOne.jsp">마곡</a></li>
							<li><a href = "theaterOne.jsp">성수</a></li>
							<li><a href = "theaterOne.jsp">이수</a></li>
							<li><a href = "theaterOne.jsp">화곡</a></li>
							<li><a href = "theaterOne.jsp">강동</a></li>
							<li><a href = "theaterOne.jsp">목동</a></li>
							<li><a href = "theaterOne.jsp">센트럴</a></li>
							<li><a href = "theaterOne.jsp">창동</a></li>
							<li><a href = "theaterOne.jsp">ARTNINE</a></li>
							<li><a href = "theaterOne.jsp">군자</a></li>
							<li><a href = "theaterOne.jsp">상봉</a></li>
							<li><a href = "theaterOne.jsp">송파파크하비오</a></li>
							<li><a href = "theaterOne.jsp">코엑스</a></li>
						</ul>
					</div>
					<div id="theater_1">
						<ul>
							<li><a href = "theaterOne.jsp">고양스타필드</a></li>
							<li><a href = "theaterOne.jsp">동탄</a></li>
							<li><a href = "theaterOne.jsp">부천스타필드시티</a></li>
							<li><a href = "theaterOne.jsp">시흥배곧</a></li>
							<li><a href = "theaterOne.jsp">영통</a></li>
							<li><a href = "theaterOne.jsp">일산</a></li>
							<li><a href = "theaterOne.jsp">파주운정</a></li>
							<li><a href = "theaterOne.jsp">김포한강신도시</a></li>
							<li><a href = "theaterOne.jsp">미사강변</a></li>
							<li><a href = "theaterOne.jsp">분당</a></li>
							<li><a href = "theaterOne.jsp">안산중앙</a></li>
							<li><a href = "theaterOne.jsp">용인기흥</a></li>
							<li><a href = "theaterOne.jsp">일산벨라시타</a></li>
							<li><a href = "theaterOne.jsp">파주출판도시</a></li>
							<li><a href = "theaterOne.jsp">남양주현대아울렛 스페이스원</a></li>
							<li><a href = "theaterOne.jsp">별내</a></li>
							<li><a href = "theaterOne.jsp">수원남문</a></li>
							<li><a href = "theaterOne.jsp">양주</a></li>
							<li><a href = "theaterOne.jsp">의정부민락</a></li>
							<li><a href = "theaterOne.jsp">파주금촌</a></li>
						</ul>
					</div>
					<div id="theater_2">
						<ul>
							<li><a href = "theaterOne.jsp">검단</a></li>
							<li><a href = "theaterOne.jsp">송도</a></li>
							<li><a href = "theaterOne.jsp">영종</a></li>
							<li><a href = "theaterOne.jsp">인천논현</a></li>
						</ul>
					</div>
					<div id="theater_3">
						<ul>
							<li><a href = "theaterOne.jsp">공주</a></li>
							<li><a href = "theaterOne.jsp">논산</a></li>
							<li><a href = "theaterOne.jsp">대전</a></li>
							<li><a href = "theaterOne.jsp">대전유성</a></li>
							<li><a href = "theaterOne.jsp">오창</a></li>
							<li><a href = "theaterOne.jsp">제천</a></li>
							<li><a href = "theaterOne.jsp">진천</a></li>
							<li><a href = "theaterOne.jsp">천안</a></li>
							<li><a href = "theaterOne.jsp">충주</a></li>
						</ul>
					</div>
					<div id="theater_4">
						<ul>
							<li><a href = "theaterOne.jsp">경북도청</a></li>
							<li><a href = "theaterOne.jsp">경산하양</a></li>
							<li><a href = "theaterOne.jsp">부산대</a></li>
							<li><a href = "theaterOne.jsp">삼천포</a></li>
							<li><a href = "theaterOne.jsp">양산</a></li>
							<li><a href = "theaterOne.jsp">울산</a></li>
							<li><a href = "theaterOne.jsp">정관</a></li>
							<li><a href = "theaterOne.jsp">창원</a></li>
							<li><a href = "theaterOne.jsp">해운대(장산)</a></li>
						</ul>
					</div>
					<div id="theater_5">
						<ul>
							<li><a href = "theaterOne.jsp">광주상무</a></li>
							<li><a href = "theaterOne.jsp">광주하남</a></li>
							<li><a href = "theaterOne.jsp">첨단</a></li>
						</ul>
					</div>
					<div id="theater_6">
						<ul>
							<li><a href = "theaterOne.jsp">남춘천</a></li>
							<li><a href = "theaterOne.jsp">속초</a></li>
						</ul>
					</div>
				</div>
			</section>
		</main>
<jsp:include page="/footer.jsp" flush="true" />