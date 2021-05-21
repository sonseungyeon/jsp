<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input.jsp</title>
</head>
<body>
	<h1>정보 입력</h1>
	<form action="proc.jsp" method="post">
		<input type="text" name="name" placeholder="이름">
		<input type="text" name="salary" placeholder="연봉">
		<input type="text" name="position" placeholder="직급">
		생년월일:<input type="date" name="birth">
		<input type="submit" value="전송">
	</form>
</body>
</html>