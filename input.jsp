<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="score.jsp" method="post">
		<input type="number" min=0 max=100 name="number"><label for="number">0~100까지 중에서 숫자를 입력하세요</label>
		<input type="submit" value="전송">
	</form>

</body>
</html>