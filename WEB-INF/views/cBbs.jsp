<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- jstl의 코어를 쓰겠다.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<link rel="stylesheet" href="./resources/css/style.css">
<link rel="stylesheet" href="./resources/css/global.css">
<!-- <script src="resources/js/cBbs.js"></script> -->
<script type="text/javascript">
	$(function() {

		$('#ask').click(function() {
			<%if (session.getAttribute("piid") == null) {%>
			alert("문의작성은 로그인 후 가능합니다.")
			<%} else {%>
			location='createAsk.do'
			<%}%>
		})

		$('#review').click(function() {
			<%if (session.getAttribute("piid") == null) {%>
			alert("리뷰작성은 로그인 후 가능합니다.")
			<%} else {%>
			location='createReview.do'
			<%}%>
		})
		
	})//f
	
	function page(page) { /* 페이징 */
			$.ajax({
				url : "ReviewBoardNextPage.do",
 							 data:{startNum:page},
				success : function(data) {
					$('#dd').html(data) /* dd:리뷰 */
				},//success
				error : function(result) {
					alert("오류! 관리자에게 문의하세요..")
				}//error
				
			})//ajax
				
		}
	
	function page2(page) { /* 페이징2(조회수역순) */
		$.ajax({
			url : "ReviewBoardNextPage2.do",
							 data:{startNum:page},
			success : function(data) {
				$('#dd').html(data) /* dd:리뷰 */
			},//success
			error : function(result) {
				alert("오류! 관리자에게 문의하세요..")
			}//error
			
		})//ajax
			
	}
	
		function AskCategory(val) {
 				if(val==1){
					$.ajax({
						url : "askAllList.do",
/* 						 			 data:{
						 }),  */
						success : function(data) {
							$('#ff').html(data)
						},//success
						error : function(result) {
							alert("오류! 관리자에게 문의하세요..")
						}//error
					})//ajax
				}else{ 
					
			$.ajax({
				url : "askOnlyTitle.do",
							 data:{THEATERNAME:val
				 },
				success : function(data) {
					$('#ff').html(data)
				},//success
				error : function(result) {
					alert("오류! 관리자에게 문의하세요..")
				}//error
				
			})//ajax
				}
		
		}//AskCategory(val)
	
	
	
	function category(val) { /* 정렬 */
	if(val==1){ /* 리뷰 번호순 */
		$.ajax({
			url : "reviewAll.do",
/* 			 			 data:{reviewnum:val
			 },  */
			success : function(data) {
				$('#ddd').html(data)
			},//success
			error : function(result) {
				alert("오류! 관리자에게 문의하세요..")
			}//error
		})//ajax
	}
	else if(val==2){ /* 조회수 높은순! */
		$.ajax({
			url : "reviewDesc.do",
			/* 			 data:{
			 }), */
			success : function(data) {
				//alert("성공!")
				$('#ddd').html(data)
			},//success
			error : function(result) {
				alert("오류! 관리자에게 문의하세요..")
			}//error
		})//ajax
	}else if(val==3){
		$.ajax({
			url : "reviewOrderByTitle.do",
			/* 			 data:{
			 }), */
			success : function(data) {
				$('#dd').html(data)
			},//success
			error : function(result) {
				alert("오류! 관리자에게 문의하세요..")
			}//error
		})//ajax
	}
	
	}//category(val)
</script>

</head>
<style>
body {
	color: white;
}

a {
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

				<h2>
					<a href="cBbs.show">GIGABOX 고객센터 </a>
				</h2>
				<hr>
				<div style="float: left; padding: 30px; margin-left: 100px;">
					<!-- 문의 -->
					<h2>
						문의 게시판
						<button id="ask">문의 작성</button>
					</h2>
					<!--  <h2>문의 게시판 <button onclick="location='createAsk.do'">문의 작성</button></h2> -->
					<font color="green">*궁금하신 점을 남겨주세요. 신속하게 답변해드리겠습니다.</font><br>
					<font color="green">*제목을 클릭하면 상세내용을 보실 수 있습니다.</font><br> <select
						id="AskCategory" onchange="AskCategory(this.value)">
						<option selected value="1">지점별 검색</option>
						<c:forEach items="${theaterInfo}" var="dto">
							<option value="${dto.theaterName}">${dto.theaterName}</option>
						</c:forEach>
					</select>
					<%-- <jsp:include page="header.jsp"></jsp:include> --%>
					<table id="ff" border="1">
						<tr align="center">
							<td>문의번호</td>
							<td>조회수</td>
							<td>극장명</td>
							<td>작성자</td>
							<td>제목</td>
							<td>작성날짜</td>
							<td>답변여부</td>
						</tr>
						<c:forEach items="${ask}" var="ask">
							<tr align="center">
								<td>${ask.ASKNUM}</td>
								<td>${ask.VIEWCOUNT}</td>
								<td>${ask.THEATERNAME}</td>
								<td>${ask.PIID}</td>
								<td><a href="askdetail.do?ASKNUM=${ask.ASKNUM}">${ask.TITLE}</a></td>
								<td>${ask.CREATEDATE}</td>
								<td>
									<c:choose>
										<c:when test="${ask.REPLY ne 'X'}">
											<!-- 답변이 x가 아니다? --> O <!-- 답변이 달렸다는 표시인 O -->
										</c:when>
										<c:otherwise>X</c:otherwise>
									</c:choose>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div style="float: right; padding: 30px; margin-right: 100px;">
					<!-- 리뷰 -->
					<h2>
						리뷰 게시판
						<button id="review">리뷰 작성</button>
					</h2>
					<font color="red">*영화를 보신 후 리뷰를 남겨주세요! 스포일러가 포함 될 경우 관리자에 의해
						임의삭제 될 수 있습니다.</font><br> <font color="red">*제목을 클릭하면 상세내용을
						보실 수 있습니다.</font><br> <select id="category"
						onchange="category(this.value)">
						<option selected value="1">카테고리별 검색</option>
						<option value="2">조회수 높은순</option>
						<!-- <option value="3">영화별로</option> -->
					</select>
					<div id="ddd">
						<table id="dd" border="1">
							<tr align="center">
								<td>리뷰번호</td>
								<td>조회수</td>
								<td>영화 제목</td>
								<td>별점</td>
								<td>작성자</td>
								<td width="300">제목</td>
								<td>작성날짜</td>
								<!-- <td>삭제</td> -->
							</tr>
							<c:forEach items="${allReview}" var="allReview">
								<tr align="center">
									<td>${allReview.REVIEWNUM}</td>
									<td>${allReview.VIEWCOUNT}</td>
									<td>${allReview.MOVIETITLE}</td>
									<td>${allReview.GRADE}</td>
									<td>${allReview.CREATEID}</td>
									<td><a
										href="reviewDetail?REVIEWNUM=${allReview.REVIEWNUM}">${allReview.TITLE}</a></td>
									<td>${allReview.CREATEDATE}</td>
								</tr>
							</c:forEach>
						</table>
						<!-- 전체리뷰목록 -> 인덱스10 간격으로 버튼 만들어주기. -->
						<c:forEach items="${allReviewPage}" var="allReview" step="10"
							varStatus="status">
							<button onclick="page(${allReview.REVIEWNUM})">${status.count}Page(${allReview.REVIEWNUM})</button>
						</c:forEach>
					</div>

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