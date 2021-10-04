<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href = "resources/css/store.css">
<title>Insert title here</title>
</head>
<body>


<div class = "inner">

<h2 class = "head">스토어</h2>
<hr color = "black" size = "5px">

<!-- category -->
<div class = "tit-util mt70 mb15">
<h3 class = "title">메가티켓</h3>
</div>


<!-- Store-list  -->
<div class = "store-list">
<ul class = "product-list">

<c:forEach items ="${list}" var ="dto">
<li>

<span class = "hot">대표상품</span>
<div class = "img">
<a href ="purchase.jsp?listId=${dto.listId}&productName=${dto.productName }&productPrice=${dto.productPrice}&productAmount=${dto.productAmount}">
<img src = "resources/img/ticket.png" width="150px" height="100px">
</a>
</div>

<div class = "info">

<div class = "tit">
<p class = "Productname"><b>${dto.productName}</b></p>
<p class = "cate">일반관람권</p>
</div>

<div class = "price">
<p class = "originalprice"><del>${dto.productAmount}원</del></p>
<p class = "sale"><em><b>${dto.productPrice}원</b></em>
</div>

</div>
</li>
</c:forEach>



</ul>
</div>



</div>
</body>
</html>