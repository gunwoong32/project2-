<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% String piid = (String)session.getAttribute("piid"); %>
</head>
<body>

<a href="authentication.jsp">회원가입</a>
<a href="login.jsp"  id="login">로그인</a>
<a href="logout.gigabox" id="logout">로그아웃</a>
<a href="mypage.jsp" id="edit">정보수정</a><br>
${piid}님, 반갑습니다.

</body>
</html>