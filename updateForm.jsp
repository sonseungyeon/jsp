<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메시지 수정화면</title>
</head>
<body>
	<h1>메시지 수정화면</h1>
	<form action="${pageContext.request.contextPath}/update" method="post">
		<fieldset>
			<legend>영화</legend>
			<input type="hidden" value="${marvel.marvelId }" name="marvelId">
			<!-- disabled 수정안되게 하는 것 -->
			<input type="datetime-local" value="${marvel.writeDate }" name="writeDate" readonly="readonly">
			<input type="text" name="title" placeholder="영화제목" value="${marvel.title }">
			<input type="text" name="titleEng" placeholder="영화영어제목" value="${marvel.titleEng }">
			<input type="number" name="worldBoxOffice" placeholder="월드박스오피스" value="${marvel.worldBoxOffice }">
			<input type="submit" value="영화 수정하기"><br>
		</fieldset>
	</form>
</body>
</html>