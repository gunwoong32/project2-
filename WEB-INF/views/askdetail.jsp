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
<!-- <link rel="stylesheet" href="./resources/css/style.css"> -->
<link rel="stylesheet" href="./resources/css/global.css">
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(function() {

		$('#update')
				.click(
						function() {
							var uid = "<%=session.getAttribute("piid")%>"
							var uid2 = "${askDetail.PIID}"
	 						if (uid == uid2 || uid == "root") {
								if (confirm('문의 수정을 완료 하셨나요?')){
								alert("문의 수정이 완료되었습니다.")
								v1 = $('#TITLE').val();
								v2 = $('#CONTENT').val();
								v3 = $('#REPLY').val();
								location.href = 'update.ask?ASKNUM=${askDetail.ASKNUM}&TITLE='
										+ v1
										+ '&CONTENT='
										+ v2
										+ '&REPLY='
										+ v3
							}else{ 
								return false;
							}
	 						}else {
								alert('문의 수정은 관리자 또는 작성자만 가능합니다.')
								return false;
							}
	 						
						
						})

		$('#delete').click(function() {
			var uid ="<%=session.getAttribute("piid")%>";
			var uid2 = "${askDetail.PIID}"
			if (uid == uid2 || uid == "root") {
				if (confirm('문의를 삭제 하시겠습니까??')) {
					alert("문의 삭제가 완료되었습니다.")
					location.href = 'delete.ask?ASKNUM=${askDetail.ASKNUM}'
				} else {
					return false;
				}
			} else {
				alert('문의 삭제는 관리자 또는 작성자만 가능합니다.')
				return false;

			}
		})

	})//f
</script>

</head>

<body>

	<!-- 이랑님 css -->

	<jsp:include page="/header.jsp" flush="true" />

	<!-- <main>
			<section class="visual"> -->
	<!-- 이랑님 css -->

	<h2>
		<a href="cBbs.show">GIGABOX 고객센터 </a>
	</h2>
	<hr>
	<div align="center">
		<!-- 문의 -->
		<h2>
			문의 상세 내용
			<!-- <button id="ask" onclick="location='createAsk.jsp'">문의 수정</button>
						<button id="ask" onclick="location='createAsk.jsp'">문의 삭제</button> -->
		</h2>
		<!--  <h2>문의 게시판 <button onclick="location='createAsk.do'">문의 작성</button></h2> -->
		<!-- <font color="green">*문의 상세내용 입니다.</font> -->
		<%-- <jsp:include page="header.jsp"></jsp:include> --%>

		<table border="1">
			<tr align="center">
				<td>문의번호</td>
				<td>조회수</td>
				<td>극장이름</td>
				<td>작성자</td>
				<!-- <td>제목</td> -->
				<!-- <td>내용</td> -->
				<td>작성날짜</td>
				<!-- <td>답변</td> -->
			</tr>
			<tr align="center">
				<td>${askDetail.ASKNUM}</td>
				<td>${askDetail.VIEWCOUNT}</td>
				<td>${askDetail.THEATERNAME}</td>
				<td>${askDetail.PIID}</td>
				<td>${askDetail.CREATEDATE}</td>
			</tr>
		</table>
		제목<br>
		<textarea name="CONTENT" id="TITLE" rows="1" cols="100"
			maxlength="500">${askDetail.TITLE}</textarea>
		<br> 내용<br>
		<textarea name="CONTENT" id="CONTENT" rows="10" cols="100"
			maxlength="500">${askDetail.CONTENT}</textarea>
		<br> 답변<br>
		<%-- <%if(session.getAttribute("piid")=="root"){%> --%>
		<textarea name="CONTENT" id="REPLY" rows="10" cols="100"
			maxlength="500">${askDetail.REPLY}</textarea>
		<br>
		<%-- <%}else{%>
			<textarea readonly="readonly" name="CONTENT" id="REPLY" rows="10" cols="100"
				maxlength="500">${askDetail.REPLY}</textarea>
			<br><%}%> --%>

		<button id="update">문의 수정</button>
		<button id="delete">문의 삭제</button>
	</div>
	<!-- 이랑님 css -->
	<!-- 이랑님 css -->

	<!-- 이랑님 css -->
	<!-- wrap class -->
</body>
</html>