<%@page import="java.util.List"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl의 코어를 쓰겠다.  -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰작성 페이지</title>
<!-- <link rel="stylesheet" href="./resources/css/style.css"> -->
<link rel="stylesheet" href="./resources/css/global.css">
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<%
/* 작성날짜 생성해주는 */
SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
Calendar time = Calendar.getInstance();
String format_time1 = format1.format(time.getTime());
%>
<script type="text/javascript">
	$(function() {

		$('#ok').click(
				function() { // 유효성 검사
					var v1 = $('#MOVIETITLE option:selected').val()
					var v2 = $('#GRADE option:selected').val()
					var v3 = $('#GRADE').val();
					var v4 = $('#CREATEID').val();
					var v5 = $('#TITLE').val();
					var v6 = $('#CONTENT').val();
					if (v1 == "" || v2 == "" || v3 == "" || v4 == ""
							|| v5 == "" || v5 == "") {
						alert("빈칸이 존재합니다.");
						return false;
					}
					if (confirm('리뷰 작성을 완료 하셨나요?')) {
						var data = $('#MOVIETITLE').val().split(",") /* 쪼개서 */

						$('#MOVIENUM').val(data[0]) //넣어준당.
						$('#MOVIETITLE option:selected').val(data[1]) /* select는 이렇게 */
						alert("리뷰 작성 완료!");
					} else {
						return false;
					}
				})//ok

		/* 		$('#list').find('select').each(function(i, e) { //list를 기준으로 하위의 input 태그를 찾은뒤, 반복문(each) 선언. i:인덱스(선택한 요소의 갯수) e:값(엘리먼트(=this))
		 $(this).click(function() { //선택자 클릭했을때!
		 var data = $(this).val().split(",")//짜른거 data에 넣음 $(this):해당선택자
		 $('#MOVIENUM').val(data[0]) //무비 넘버 설정
		 $(this).val(data[1]) //선택자 벨류 값 설정
		 })
		 }) */
	})//f
</script>

</head>
<body>
	<jsp:include page="/header.jsp" flush="true" />
	<h2>
		<a href="cBbs.show">GIGABOX 고객센터 </a>
	</h2>
	<hr>
	<div style="float: right">
		<!-- <img hidden="" src="resources/img/1.jpg" width="300" height="330"> -->
	</div>

	<div align="center">
		<h1>리뷰 작성</h1>
		<%-- <jsp:include page="header.jsp"></jsp:include> --%>
		<form action="create.review">
			<!-- 영화 번호(안보이게):<input type="hidden" name="dto.MOVIENUM"><br> -->
			<input type="hidden" id="MOVIENUM" name="MOVIENUM" value="">
			<table>
				<tr>
					<td>영화 제목 :</td>
					<td><select id="MOVIETITLE" name="MOVIETITLE">
							<option selected disabled hidden="" value="">리뷰할 영화를
								선택해주세요.</option>
							<c:forEach items="${movieList}" var="dto">
								<option value="${dto.MOVIENUM},${dto.MOVIETITLE}">${dto.MOVIETITLE}</option>
								<%-- <input type="radio" id="MOVIETITLE${dto.MOVIENUM}"
						name="MOVIETITLE" value="${dto.MOVIENUM},${dto.MOVIETITLE}">${dto.MOVIETITLE} --%>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td>별점 :</td>
					<td><select id="GRADE" name="GRADE">
							<option selected disabled hidden="" value="">별점을 선택
								해주세요.</option>
							<option value="1">1점</option>
							<option value="2">2점</option>
							<option value="3">3점</option>
							<option value="4">4점</option>
							<option value="5">5점</option>
					</select></td>
				<tr>
					<td>작성자 :</td>
					<td><input type="text" id="CREATEID" name="CREATEID"
						placeholder="(세션 객체 이용 예정)" readonly="readonly" value="<%=session.getAttribute("piid")%>"></td>
				</tr>
				<tr>
					<td>작성날짜 :</td>
					<td><input type="text" name=CREATEDATE id="current"
						value="<%=format_time1%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>제목 :</td>
					<td><input id="TITLE" name="TITLE" placeholder="리뷰 제목을 입력하세요." maxlength="20"
						style="width: 300px;"></td>
				</tr>
			</table>

			<textarea id="CONTENT" name="CONTENT" rows="10" cols="100"
				placeholder="리뷰 내용을 입력하세요." maxlength="500"></textarea>
			<hr>
			<button id="ok">작성 완료</button>
		</form>
	</div>
	<!-- <img src="resources/img" id="CIMG"> -->
</body>
</html>