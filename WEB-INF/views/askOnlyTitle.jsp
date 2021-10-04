<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!-- jstl의 코어를 쓰겠다.  -->
<tr align="center">
								<td>문의번호</td>
								<td>조회수</td>
								<td>극장명</td>
								<td>작성자</td>
								<td>제목</td>
								<td>작성날짜</td>
								<td>답변여부</td>
							</tr>
							<c:forEach items="${askTitle}" var="ask">
								<tr align="center">
									<td>${ask.ASKNUM}</td>
									<td>${ask.VIEWCOUNT}</td>
									<td>${ask.THEATERNAME}</td>
									<td>${ask.PIID}</td>
									<%-- <td><button onclick="location='askdetail.do?ASKNUM=${ask.ASKNUM}'">${ask.TITLE}</button></td> --%>
									<td><a href="askdetail.do?ASKNUM=${ask.ASKNUM}">${ask.TITLE}</a></td>
									<td>${ask.CREATEDATE}</td>
									<td>
										<%-- <c:if test="${ask.REPLY eq 'X'}">X</c:if> --%> <!-- REPLY가 X 아닐경우(답변이 달렸을 경우, O로 표시) -->
										<c:choose>
											<c:when test="${ask.REPLY ne 'X'}">
												<!-- 답변이 x가 아니다? -->
        O<!-- 답변이 달렸다는 표시인 O -->
											</c:when>
											<c:otherwise>
        X
    </c:otherwise>
										</c:choose>
									</td>
								</tr>
							</c:forEach>