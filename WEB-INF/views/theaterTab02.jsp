<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/head.jsp" flush="true"/>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/mvc01/resources/css/ticketing.css">
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<main>
			<section class="inner_wrap ticketing_content">
				<form action="booking02.jsp" method="get">
					<div class="steps">
						<div>
							<p><strong>1.</strong> 날짜를 선택해주세요.</p>
							<input type="date" name="date">
						</div>
						<div>
							<p><strong>2.</strong>영화관을 선택해주세요</p>
							<select name="theaterId">
								<c:forEach items="${list}" var="dto">
								<option value="${dto.theaterId}">${dto.theaterName}</option>
								</c:forEach>
							</select>
						</div>
						<div>
							<p><strong>3.</strong>영화를 선택해주세요</p>
							<select name="MOVIENUM">
								<c:forEach items="${list2}" var="dto2">
								<option value="${dto2.MOVIENUM}">${dto2.MOVIETITLE}</option>
								</c:forEach>
							</select>
						</div>
						<div>
							<p><strong>4.</strong>시간을 선택해주세요</p>
							<select name="showTime">
								<option value="08:00~10:00">08:00~10:00</option>
								<option value="10:00~12:00">10:00~12:00</option>
								<option value="12:00~14:00">12:00~14:00</option>
								<option value="14:00~16:00">14:00~16:00</option>
							</select>
						</div>
					</div>
					<div class="next_btn">
						<button type="submit">다음 &#10093;</button>
					</div>
				</form>
			</section>
		</main>
	<jsp:include page="/footer.jsp" flush="true" />