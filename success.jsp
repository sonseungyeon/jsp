<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String userId = request.getParameter("userId");
String password = request.getParameter("password");

String pageUserId = (String)pageContext.getAttribute("userId");
String pagePassword = (String)pageContext.getAttribute("password");
String requestUserId = (String)request.getAttribute("userId");
String requestPassword = (String)request.getAttribute("password");

System.out.println("login_proc의 pageUserId : " + pageUserId);
System.out.println("login_proc의 pagePassword : " + pagePassword);
System.out.println("login_proc의 requestUserId : " + requestUserId);
System.out.println("login_proc의 requestPassword : " + requestPassword);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>