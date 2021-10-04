<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<jsp:useBean id="Date" class="java.util.Date" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="refresh" content="3; url=index2.jsp">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
font-family: 'Nanum Gothic', sans-serif;
margin-left: auto;
margin-right: auto;
}

p{
text-align: center;

}

.fin{
	position: absolute;
	
	top: 50%;
	left :50%;
	transform : traslate(-50%,-50%);
	vertical-align: middle;
}

</style>
<script type="text/javascript" src="resources/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function name() {
	alert('주문이 완료되었습니다');
})

</script>
</head>
<body>
<div class = "fin">
<p>결제가 완료되었습니다</p>
<hr color="#503396" size = "3px;">
구매 상품 &nbsp; &nbsp; <b>${storeDTO.productName}</b><br>
구매 수량 &nbsp; &nbsp;  <b>${storeDTO.productAmount }</b><br>
결제 금액 &nbsp; &nbsp; <b>${storeDTO.total}</b><br>
구매 일시 &nbsp; &nbsp; <b><fmt:formatDate value="${Date}"  pattern="yyyy-MM-dd - hh:mm:ss"/></b>
<hr color="#503396" size = "3px;">

</div>
</body>
</html>