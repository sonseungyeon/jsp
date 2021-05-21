<%@page import="ex01.useBean.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%Student student = (Student)request.getAttribute("student"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show_java.jsp</title>
</head>
<body>
자바방식<br>
	이름 : <%=student.getName() %><br>
	나이 : <%=student.getAge() %><br>
	국어 : <%=student.getKor() %><br>
	영어 : <%=student.getEng() %><br>
	수학 : <%=student.getMath() %><br>
</body>
</html>