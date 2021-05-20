<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%

String name = "hello";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
</head>
<body>
	<h1>main.jsp에서 작성한 코드 시작</h1>
	<%@ include file="sub.jsp"%>
	<h1>main.jsp에서 작성한 코드 끝</h1>
</body>
</html>