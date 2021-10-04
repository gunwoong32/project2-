<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- jstl의 코어를 쓰겠다.  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의작성 페이지</title>
<!-- <link rel="stylesheet" href="./resources/css/style.css"> -->
<link rel="stylesheet" href="./resources/css/global.css">
<%
SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");

Calendar time = Calendar.getInstance();

String format_time1 = format1.format(time.getTime());
%>
<script type="text/javascript" src="resources/js/jquery-3.6.0.js"></script>
<script type="text/javascript">

$(function() {
	
		$('#ok').click(function() {// 유효성 검사
/* 	 				if($('radio[name="THEATERNAME"]:checked').length==0){ /* 라디오 유효성 검사!!!
					alert("문의할 극장을 선택하세요")
					return false;
				}  */
				
			  	v1 =$('#PIID').val();
				v2= $('#TITLE').val();
				v3 = $('#CONTENT').val();
				var v4 =$('#THEATERNAME option:selected').val()
				if(v1=="" || v2=="" || v3=="" || v4==""){
					alert("빈칸이 존재합니다.");
					return false; 
				}if(v2.length<2 || v3.length<5){
				alert("제목 또는 내용이 너무 짧습니다.")
				return false;
				}
				else {
			if(confirm('문의 작성을 완료 하셨나요?')){
			alert("문의작성 완료!"); 				
			}else{
				return false;
			}
				}
		}) //ok
})//f
</script>

</head>
<body>
	<jsp:include page="/header.jsp" flush="true" />
	<h2>
		<a href="cBbs.show">GIGABOX 고객센터 </a>
	</h2>
	<hr>
	<div align="center">
		<h1>문의 작성</h1>
		<%-- <jsp:include page="header.jsp"></jsp:include> --%>
		<form action="create.ask">
			<!-- 문의 번호(나중에 오토 인크리먼트로 바꿔):<input name="ASKNUM"><br><br> -->
			<!-- 문의 극장 번호(안보이게 할 수 없나...):<input name="THEATERID"><br><br> -->
			<table>
				<tr>
					<td>문의 극장 : </td>
		<td><select id="THEATERNAME" name="THEATERNAME" >
		<option selected disabled hidden="" value="">문의할 극장을 선택해주세요.</option>
									<c:forEach items="${theaterInfo}" var="dto">
								<option value="${dto.theaterName}">${dto.theaterName}</option>
							</c:forEach>
<!--          <option value="정원점">정원점</option>
         <option value="은규점">은규점</option>
         <option value="민욱점">민욱점</option>
         <option value="이랑점">이랑점</option>
         <option value="건웅점">건웅점</option> -->
         </select></td>
				<tr>
					<td>작성자 :</td>
					<td><input name="PIID" id="PIID" placeholder="(세션 객체 이용 예정)" readonly="readonly" value="<%=session.getAttribute("piid")%>"></td>
				</tr>
				<tr>
					<td>작성날짜 :</td>
					<td><input type="text" name=CREATEDATE id="current"
						value="<%=format_time1%>" readonly="readonly"></td>
				</tr>
				<tr>
					<td>제목 :</td>
					<td><input name="TITLE" id="TITLE" maxlength="20"
						placeholder="문의할 제목을 입력하세요." style="width: 300px;"></td>
				</tr>
			</table>
			<!-- 내용 <input type="text" size="500" placeholder="문의할 내용을 입력하세요." maxlength="500" style="text-align:justify; width:500px; height: 300px;"><br> -->
			<textarea name="CONTENT" id="CONTENT" rows="10" cols="100"
				placeholder="문의할 내용을 입력하세요." maxlength="500"></textarea>
			<hr>
			<button id="ok">작성 완료</button>
		</form>
	</div>
</body>
</html>