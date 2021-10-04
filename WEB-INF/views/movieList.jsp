<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="true"/>
	<link rel="stylesheet" href="/mvc01/resources/css/movies.css">
<jsp:include page="/head_taill.jsp" flush="true"/>
	<jsp:include page="/header.jsp" flush="true" />
		<main>
			<nav class="sub_site_nav">
				<ul class="inner_wrap">
					<li><a href="/mvc01/index2.jsp">Home</a></li>
					<li><a href="movieList.do">영화</a></li>
				</ul>
			</nav>
			<section class="inner_wrap movie_content">
				<h2>현재 상영중인 영화</h2>
				<div class="movie_list_wrap">
					<ul>
						<c:forEach items="${movieList}" var="dto" begin="0">
						<li>
							<a data-number="${dto.MOVIENUM}" href="movieDetail.do?MOVIENUM=${dto.MOVIENUM}&MOVIETITLE=${dto.MOVIETITLE}">
								<img src="resources/img/${dto.MOVIEPIC}" width="300">
							</a>
							<div style="text-align: center;">
								<div>
									<strong>${dto.MOVIETITLE}<br></strong>
									<span>${dto.MOVIEEGTITLE}<br></span>
									<span>${dto.OPENINGDATE}</span>
								</div>
							</div>
						</li>
						</c:forEach>
					</ul>
				</div>
			</section>
		</main>
	<jsp:include page="/footer.jsp" flush="true" />