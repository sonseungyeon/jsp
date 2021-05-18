<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response.jsp</title>
</head>
<body>
	<h1>response</h1>
	<dl>
		<dt>응답하는 객체</dt>
		<dd>
			<ul>
				<li>응답할 내용의 인코딩 설정</li>
				<li>쿠키를 설정</li>
				<li>url로 재요청을 시킬 때(페이지 전환)</li>
			</ul>
			<ul>
				<li><% response.getCharacterEncoding(); %></li>
				<li>응답의 인코딩 : <%= response.setCharacterEncoding("utf-8") %></li>
				<li>쿠키 설정</li>
				<%
				/* 키와 밸류의 값으로 나옴
					클라이언트의 myname 키값 에 test값을 저장하겠다는 의미*/
					Cookie cookie = new Cookie("myname","test");
					response.addCookie(cookie);
				%>
				<li>화면전환</li>
				<% /*  response.sendRedirect("result01.jsp"); */%>
			</ul>
		</dd>
	</dl>
</body>
</html>