<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="./head.jsp" flush="true"/>
	<!-- 각 개별 css, js 연결 -->
	<link rel="stylesheet" href="/mvc01/resources/css/style.css">
	<script src="/mvc01/resources/js/main.js"></script>
<jsp:include page="./head_taill.jsp" flush="true"/>

			<audio autoplay loop> 
		   	 <source src="/mvc01/resources/bgm/main.mp3" type="audio/mp3">
			</audio>
			

	<jsp:include page="/header.jsp" flush="true" />
		<main>
			<section class="visual">
				<div class="bg_pic"></div>
				<div class="movie_info"></div>
				<div class="slider">
					<div class="swiper mySwiper">
						<div class="swiper-wrapper">
							<!-- 슬라이드 리스크 ajax로 넣는곳  -->
						</div>
					</div>
				</div>
			</section>
			<section class="section inner_wrap">
				<h3>혜택</h3>
				<div class="event_content">
					<div class="swiper event_slider">
						<div class="swiper-wrapper">
							<div class="swiper-slide">
								<article>
									<h4 class="blind">밀크앱에서 메가박스 하자</h4>
									<div class="event_info">
										<a href="#">
											<img src="/mvc01/resources/img/event_images/event_1-1.jpg" alt="">
										</a>
									</div>
									<div class="event_img">
										<a href="#">
											<img src="/mvc01/resources/img/event_images/event_1-2.jpg" alt="">
										</a>
									</div>
								</article>
							</div>
							<div class="swiper-slide">
								<article>
									<h4 class="blind">밀크앱에서 메가박스 하자</h4>
									<div class="event_info">
										<a href="#">
											<img src="/mvc01/resources/img/event_images/event_2-1.jpg" alt="">
										</a>
									</div>
									<div class="event_img">
										<a href="#">
											<img src="/mvc01/resources/img/event_images/event_2-2.jpg" alt="">
										</a>
									</div>
								</article>
							</div>
							<div class="swiper-slide">
								<article>
									<h4 class="blind">밀크앱에서 메가박스 하자</h4>
									<div class="event_info">
										<a href="#">
											<img src="/mvc01/resources/img/event_images/event_3-1.jpg" alt="">
										</a>
									</div>
									<div class="event_img">
										<a href="#">
											<img src="/mvc01/resources/img/event_images/event_3-2.jpg" alt="">
										</a>
									</div>
								</article>
							</div>
						</div>
						<div class="paginations"></div>
					</div>
					<div class="event_info">
						<a href="#">
							<img src="/mvc01/resources/img/event_images/event_big1.jpg" alt="">
						</a>
					</div>
				</div>			
			</section>
			<section class="section inner_wrap">
				<!-- <h3>메가박스 안내</h3> -->
			</section>
		</main>
	<jsp:include page="/footer.jsp" flush="true" />