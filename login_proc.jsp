<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String userId = request.getParameter("userId");
String password = request.getParameter("password");
pageContext.setAttribute("userId", userId);
request.setAttribute("userId", userId);
pageContext.setAttribute("password", password);
request.setAttribute("password", password);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_proc.jsp</title>
</head>
<body>
	<%if (userId.equals("test") && password.equals("test1")) {%>
		<jsp:forward page ="success.jsp"></jsp:forward>
	<%} else {%>
		<jsp:forward page ="fail.jsp"></jsp:forward>
	<%}%>
</body>
</html>