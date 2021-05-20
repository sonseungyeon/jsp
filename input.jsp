<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input.jsp</title>
</head>
<body>
	<h1>데이타 입력</h1>
	<%-- <form action="proc.jsp"> 자바객체방식--%>
	<form action="proc_useBean.jsp">
		<input type ="text" name="name" placeholder="이름">
		<input type ="number" name="age" min="20" max="100" placeholder="나이">
		<input type="submit">
	</form>
</body>
</html>