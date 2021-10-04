<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script>
	function loginCheck() {
		var id="<%=session.getAttribute("piid")%>"
		//alert(id)
		if (id!="null") {
			location='book.do'
		} else {
			alert("로그인 후 예매 가능합니다.")			
			//return false;
		} 
	}
	
	function logOut() {
	<%-- <%session.invalidate();%> --%>
	location='logout.gigabox'
	}
</script>
<%
String piid = (String) session.getAttribute("piid");
%>
<header class="header">
	<div>
		<h1>
			<a href="/mvc01/index2.jsp"><img
				src="/mvc01/resources/img/logo1.png" alt="메가박스"></a>
		</h1>
		<div class="site_nav">
			<ul>
				<li><a href="movieList.do">영화</a></li>
				<!-- <li><a href="book.do" onclick="loginCheck()">예매</a></li> -->
				<li><a onclick="loginCheck()">예매</a></li>
				<li><a href="theater01.jsp">극장</a></li>
				<li><a href="list2.mega">이벤트</a></li>
				<li><a href="store.jsp">스토어</a></li>
				<li><a href="#">혜택</a></li>
			</ul>
		</div>
		<div class="user_nav">
			<ul>
				<li><a href="#">VIP LOUNGE</a></li>
				<li><a href="#">맴버십</a></li>
				<li><a href="cBbs.show">고객센터</a></li>
			</ul>
			<ul>
				<%
				if (session.getAttribute("piid") == null) {
				%>
				<li><a href="login.jsp">로그인</a></li>
				<li><a href="authentication.jsp">회원가입</a></li>
				<%
				}

				else {
				%>
				<li><a href="mypage.jsp" id="edit">${piid}님,
					반갑습니다.</a></li>
				<li><a href="logout.gigabox" id="logout">로그아웃</a></li>
				<%
				}
				%>
				<!-- <li><a href="book.do" onclick="loginCheck()">빠른예매</a></li> -->
				<li><a onclick="loginCheck()">빠른예매</a></li>
			</ul>
		</div>
	</div>
</header>