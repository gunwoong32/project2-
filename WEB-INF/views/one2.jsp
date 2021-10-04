<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="true"/>
	<!-- 각 개별 css, js 연결 -->
	<link rel="stylesheet" href="/mvc01/resources/css/event.css">
<jsp:include page="/head_taill.jsp" flush="true"/>
<jsp:include page="/header.jsp" flush="true"/>
	<main>
		<nav class="sub_site_nav">
			<ul class="inner_wrap">
				<li><a href="/mvc01/index2.jsp">Home</a></li>
				<li><a href="/mvc01/list2.mega">이벤트</a></li>
				<li><a href="/mvc01/one2.do?eveid=${dto.eveid}">이벤트 상세</a></li>
			</ul>
		</nav>
		<section class="event_description">
			<h3>${dto.evename}</h3>
			<figure>
				<img src="./resources/img/${dto.evecontent}" alt="${dto.evename}">
			</figure>
		</section>
	</main>
<jsp:include page="../../footer.jsp" flush="true" />