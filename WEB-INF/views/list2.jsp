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
				</ul>
			</nav>
			<div class="inner_wrap event_content">
				<h2>이벤트</h2>
				<div class="event_list_wrap">
					<ul>
						<c:forEach items="${list2}" var="dto">
						<li>
							<a href="one2.do?eveid=${dto.eveid}" title="${dto.evename}">
								<img src="./resources/img/${dto.eveimg}" alt="${dto.evename}">
								<div>
									<p>${dto.evename}</p>
								</div>
							</a>
						</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</main>
<jsp:include page="/footer.jsp" flush="true" />