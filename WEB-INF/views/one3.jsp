<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="true"/>
	<!-- 각 개별 css, js 연결 -->
	<link rel="stylesheet" href="/mvc01/resources/css/movie_detail.css">
<jsp:include page="/head_taill.jsp" flush="true"/>
<jsp:include page="/header.jsp" flush="true"/>
		<main>
			<div class="visual">
				<div class="inner_wrap" style="background-image: url(/mvc01/resources/img/${dto.movienpic})">
					<div class="movie_titles">
						<h2>${dto.movietitle}</h2>
						<h3>${dto.movieegtitle}</h3>
						<p>2021.09.30</p>
					</div>
					<div class="movie_pic">
						<figure>
							<img src="/mvc01/resources/img/${dto.moviepic}" alt="${dto.movietitle}">
						</figure>
						<a href="book.do">예매</a>
					</div>
				</div>
			</div>
			<section class="movie_content inner_wrap">
				<div class="short_summary">
					<h4>- ${dto.movieeasycontent}</h4>
				</div>
				<div class="summary">
					${dto.moviecontent}
				</div>
				<div class="youtube_wrap">
					<div>
						<iframe src="${dto.teaserlink}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</div>
				</div>
				
			</section>
		</main>
<jsp:include page="/footer.jsp" flush="true" />