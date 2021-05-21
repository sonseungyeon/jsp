<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input.jsp</title>
</head>
<body>
	<form action="proc_useBean.jsp" method="post">
		<input type="text" name="name" id="name"><label for="name">이름</label><br>
		<input type="text" name="age" id="age"><label for="age">나이</label><br>
		<input type="text" name="kor" id="kor"><label for="kor">국어</label><br>
		<input type="text" name="eng" id="eng"><label for="eng">영어</label><br>
		<input type="text" name="math" id="math"><label for="math">수학</label><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>