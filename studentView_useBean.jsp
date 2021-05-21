<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="student" class="ex01.Student" scope="request" /> --%>
<%--request에 student가 이미 있다면 객체를 새로 만들지 않고 가져온다 --%>
<%-- type은 새로운걸 가져오는게 아니라 기존에 있는걸 가져오는데 exception을 발생시킴  --%>
<jsp:useBean id="student" type="ex01.Student" scope="request" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>studentView_useBean.jsp</title>
</head>
<body>
	이름 :
	<jsp:getProperty property="name" name="student" /><br> 나이 :
	<jsp:getProperty property="age" name="student" /><br>
</body>
</html>