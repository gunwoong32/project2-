<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<c:forEach items="${list2}" var="dto">
			<div class="swiper-slide" data-title="${dto.movietitle}" data-summary="${dto.moviecontent}" data-img="/mvc01/resources/img/${dto.movienpic}">
				<figure>
					<a href="one3.do?movienum=${dto.movienum}">
						<img src="./resources/img/${dto.moviepic}">
					</a>
					<figcaption>${dto.movietitle}</figcaption>
				</figure>
			</div>
		</c:forEach>

