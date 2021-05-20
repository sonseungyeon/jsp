<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>inputScore.jsp</title>
</head>
<body>
	<form action="show.jsp">
		<input type="text" name="kor" placeholder="국어 점수를 입력하세요"> <input
			type="text" name="eng" placeholder="영어 점수를 입력하세요"> <input
			type="text" name="math" placeholder="수학 점수를 입력하세요"> <input
			type="text" name="social" placeholder="사회 점수를 입력하세요"> <input
			type="text" name="science" placeholder="과학 점수를 입력하세요"> <input
			type="submit" value="전송">
	</form>
</body>
</html>