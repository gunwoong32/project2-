<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="true"/>
	<link rel="stylesheet" href="/mvc01/resources/css/theaters_info.css">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=43aa33821e58619a611095f07d28cf1f"></script>
	<script type="text/javascript">
		$(function() {
			var $select_theater = $('.select_theater a');
			
			$select_theater.on('click',function(e){
				e.preventDefault();
				var $p = $(this).parent(),
					idx = $p.index(),
					has_class = $p.hasClass('active');
				if(!has_class){
					var href = $(this).attr('href');
					$p.addClass('active').siblings().removeClass('active');
					$(href).addClass('active').siblings().removeClass('active');
					
					if(idx == 1){
						$.ajax({
							url : "theaterTab02.do",
							data : {tab02 : 'on'},
							success : function(result) {
								$(href).html(result)
							},
							error : function() {
								alert('theaterTab02.do 호출 실패')
							}
						})
					}
					if(idx == 2){
						$.ajax({
							url : "theaterTab03.jsp",
							data : {tab03 : 'on'},
							success : function(result) {
								$(href).html(result)
							},
							error : function() {
								alert('theaterTab03.jsp 호출 실패')
							}
						})
					}
				}
			});
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = { 
			        center: new kakao.maps.LatLng(${dto.theaterLatitude}, ${dto.theaterLongitude}), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };
	
			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
			var marker = new kakao.maps.Marker();
	
			// 타일 로드가 완료되면 지도 중심에 마커를 표시합니다
			kakao.maps.event.addListener(map, 'tilesloaded', displayMarker);
	
			function displayMarker() {
			    marker.setPosition(map.getCenter());
			    marker.setMap(map);
			}
			
		});
	</script>
<jsp:include page="/head_taill.jsp" flush="true"/>
<jsp:include page="/header.jsp" flush="true"/>
		<main>
			<nav class="sub_site_nav">
				<ul class="inner_wrap">
					<li><a href="/mvc01/index2.jsp">Home</a></li>
					<li><a href="/mvc01/theater01.jsp">극장</a></li>
					<li><a href="/mvc01/theaterTwo.do?theaterId=2">극장정보</a></li>
				</ul>
			</nav>
			<section class="inner_wrap theaters_content">
				<h2>극장정보 - ${dto.theaterName}</h2>
				<div class="select_theater">
					<ul>
						<li class="active"><a href="#info_0">극장정보</a></li>
						<li><a href="#info_1">상영시간표</a></li>
						<li><a href="#info_2">관람표</a></li>
					</ul>
				</div>
				<div class="theaters_wrap">
					<div id="info_0" class="active">
						<p><strong>${dto.informTitle}</strong></p>
						<div class="info">
							<p>주소 : ${dto.theaterAddr}</p>
							<div class="kakao_map">
								<div id="map"></div>
							</div>
						</div>
					</div>
					<div id="info_1"></div>
					<div id="info_2"></div>
				</div>
			</section>
		</main>
<jsp:include page="/footer.jsp" flush="true" />
