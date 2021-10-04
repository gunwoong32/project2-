<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String listId = request.getParameter("listId");
String productName = request.getParameter("productName");
String productPrice = request.getParameter("productPrice");
String piid = "root";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
 $(function() {
	$('#productAmount').keyup(function() {
		
		price = <%=productPrice%>
		amount  = $('#productAmount').val()
		result = price * amount
		$('#total').val(result)
	})
})

</script>
<link rel="stylesheet" href="resources/css/purchase.css">
</head>
<body>
<form action="insert.do">
	<div class="inner">
		<div class="pay">
			<h2 class="head">결제하기</h2>
				<hr color="black" size="5px">
				<div class="left">
					<p>
						<img src="resources/img/ticket.png" width="350px" height="250px">
					</p>
				</div>
				
				<input type="hidden" name="piid"  value = "<%=piid%>">
				
				
				<div class="box">
					<div class="right">
						<div class="product-info">
							<div class="line">
									<p class="title">
										<span>상품명 <b> &nbsp; &nbsp;<input type="hidden" id="productName" name="productName"  value = "<%=productName%>"> <%=productName%></b>
										</span>
									</p>
							</div>
							<div class="line">
								<p class="title">
									가격 <b> &nbsp; &nbsp; <input type="hidden" id="productPrice" name="productPrice"  value = "<%=productPrice%>">  <%=productPrice%></b>
								<div class="container"></div>
							</div>
							<div class="line">
								<p class="title">
									수량입력 <input type="text" class="productAmount" id="productAmount" size="3" name="productAmount">
								</p>
								총 금액: <input type="text" id="total" name="total">

								<div class="btn">
									<button class="cancelbtn">취소</button>
									<button class="paybtn">결제하기</button>
								</div>
							</div> 
 
						</div>
					</div>
				
				</div>
		</div>
	</div>
	</form>
</body>
</html>