<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- jstl의 코어를 쓰겠다.  -->
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
<c:forEach items="${allReview111}" var="allReview">
	<tr align="center">
		<td>${allReview.REVIEWNUM}</td>
		<td>${allReview.VIEWCOUNT}</td>
		<td>${allReview.MOVIETITLE}</td>
		<td>${allReview.GRADE}</td>
		<td>${allReview.CREATEID}</td>
		<td><a href="reviewDetail?REVIEWNUM=${allReview.REVIEWNUM}">${allReview.TITLE}</a></td>
		<td>${allReview.CREATEDATE}</td>
	</tr>
</c:forEach>
