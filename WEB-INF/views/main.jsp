<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		
        <main>
        
        	<section class="visual">
		<table border='1'>
			<c:forEach items="${movieList}" var="dto">
				<tr bgcolor="lime" align="center">
					<td width="100"><img src="./resources/img/${dto.moviepic}"></td>
					<td width="100">---</td>
				</tr>
			</c:forEach>
		</table>
	</section>
        
        	
        	
        
        
        </main>
        
