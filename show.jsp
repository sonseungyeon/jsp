<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="employee" type="ex01.employee" scope="request"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show.jsp</title>
</head>
<body>
	이름 : <jsp:getProperty property="name" name="employee"/><br>
	연봉 : <jsp:getProperty property="salary" name="employee"/><br>
	직급 : <jsp:getProperty property="position" name="employee"/><br>
	생일 : <jsp:getProperty property="birthDate" name="employee"/><br>
</body>
</html>