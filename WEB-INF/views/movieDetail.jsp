<%@page import="com.mega.mvc01.MovieReviewDTO"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl의 코어를 쓰겠다.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(${dto.MOVIETITLE})상세정보</title>
<!-- 이랑님 헤더 -->
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="./resources/css/style.css">
<link rel="stylesheet" href="./resources/css/global.css">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<!-- 이랑님 헤더 -->

<script type="text/javascript">
	$(function() {
	
		$('#reserve').click(function() {
			<% if(session.getAttribute("piid")==null){ %>
			alert('예매는 로그인 후 가능합니다.')
			//location='book.do'
			//return false;
			<%}else{%>
			location='book.do'
			<%}%>
		});
	});
</script>


</head>
<style>
body {
	color: white;
}
a{
color: white;
}
</style>
<body>


	<div class="wrap">
		<!-- 이랑님 css -->
		<div>
			<jsp:include page="/header.jsp" flush="true" />
		</div>
		<main>
			<section class="visual">
				<!-- 이랑님 css -->

				<div style="height: 350px;">
					<h2>영화 상세정보</h2>

					<hr>
					<div style="float: left;">
						<img src="resources/img/${dto.MOVIEPIC}" width="300" height="300"
							align="left">
					</div>
					<div style="float: right;">
						<iframe width="560" height="300" src="${dto.TEASERLINK}"
							title="YouTube video player" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							align="right"></iframe>
					</div>

					<div style="text-align: center;">
						<table
							style="margin-left: auto; margin-right: auto; text-align: cetner;">
							<!-- 테이블 가운데 정렬 -->
							<tr>
								<!-- 제목 -->
								<th>${dto.MOVIETITLE}
								<th>
							</tr>
							<tr>
								<!-- 영문 제목 -->
								<td>${dto.MOVIEEGTITLE}</td>
							</tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<!-- 한줄 내용 -->
								<td>${dto.MOVIEEASYCONTENT}</td>
							<tr>
							<tr>
								<td><br></td>
							</tr>
							<tr>
								<!-- 내용 -->
								<td>${dto.MOVIECONTENT}</td>
								<!-- 내용 넣는 곳 끝 -->
							<tr>
								<!-- <div style="float: right; margin-right: 0px;"> -->
						</table>

					</div>
				</div>
				<!-- height :350px; -->
				<hr>
				<div style="float: left; width: 1250px; height:1500px;" >
					<!-- <hr> -->
					<h2>GIGABOX 고객의 리뷰</h2>

					<!-- 리뷰가 아예없으면 없다고 뜨게 -->
					<%
					if (request.getAttribute("dto2") == null) {
					%>
					아직 리뷰가 작성되지 않았습니다. 고객님께서 영화를 보신 후 최초 리뷰어가 되어주세요!
					<%
					} else {
					%>
					<table border="1">
						<tr align="center">
							<td width="60px">작성자</td>
							<td width="150px">작성 날짜</td>
							<td width="100px">영화 제목</td>
							<td width="50px">별점</td>
							<td width="500px">제목</td>
							<td width="1000px">내용</td>
						</tr>
						<c:forEach items="${dto2}" var="dto2">
							<tr>
								<td align="center">${dto2.CREATEID}</td>
								<td align="center">${dto2.CREATEDATE}</td>
								<td align="center">${dto2.MOVIETITLE}</td>
								<td align="center">${dto2.GRADE}</td>
								<td align="center">${dto2.TITLE}</td>
								<td>${dto2.CONTENT}</td>
							</tr>
						</c:forEach>
					</table>
					<%
					}
					%>
			    <h2><font style="color:green;">네이버 블로그 리뷰</font>(제목 클릭 시 해당 블로그로 이동)</h2>
				<table border="1">
				<tr align="center">
				<td>작성 날짜</td>
				<td>작성자</td>
				<td>제목</td>

				<c:forEach items="${items}" var="search">
				<tr>
				<td>${search.postdate}</td>
				<td>${search.bloggername}</td>
				<td><a href="${search.link}" target="_blank">${search.title}</a></td>
				</tr>
				</c:forEach>
			
				</table>
				</div>
				<div style="float: right; width: 550px">
					<h2>영화 정보</h2>
					<table border="1" style="text-align: center;">
						<tr>
							<td>출 연</td>
							<td>${dto.ACTOR}</td>
						</tr>
						<tr>
							<td>평 점</td>
							<%
							if (request.getAttribute("dto2") == null) {
							%>
							<td>아직 리뷰가 없습니다.</td>
							<%
							} else {
							%>
							<td>${dto3}</td>
							<%
							}
							%>
						</tr>
						<!-- <tr>
							<td>예매율</td>
							<td>예매내역 테이블 참조</td>
						</tr> -->
						<tr>
							<td>개봉일자</td>
							<td>${dto.OPENINGDATE}</td>
						</tr>
						<tr>
							<td>누적 관객수</td>
							<td>${count}</td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center;"><button
									id='reserve'>예매하기</button></td>
							<!-- 여기다 예매하기 페이지 연결~ -->
						</tr>
					</table>

				</div>

			</section>
			<!-- 이랑님 css -->
		</main>
		<!-- 이랑님 css -->
	</div>
	<!-- 이랑님 css -->
	<!-- wrap class -->




</body>
</html>