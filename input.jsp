<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>input.jsp</title>
</head>
<body>
	<h1>마블 영화 3개 입력</h1>
	<form action="process.jsp">
		1번째 영화 입력<br>
		<input type="text" name="koreanTitle" id="kt"><label for="kt">한글제목</label><br>
		<input type="text" name="englishTitle" id="et"><label for="et">영어제목</label><br>
		<input type="number" name="worldBoxOffice" min=0 id="wbo"><label for="wbo">월드 박스 오피스</label><br><br>
		
		2번째 영화 입력<br>
		<input type="text" name="koreanTitle2" id="kt2"><label for="kt2">한글제목</label><br>
		<input type="text" name="englishTitle2" id="et2"><label for="et2">영어제목</label><br>
		<input type="number" name="worldBoxOffice2" min=0 id="wbo2"><label for="wbo2">월드 박스 오피스</label><br><br>
		
		3번째 영화 입력<br>
		<input type="text" name="koreanTitle3" id="kt3"><label for="kt3">한글제목</label><br>
		<input type="text" name="englishTitle3" id="et3"><label for="et3">영어제목</label><br>
		<input type="number" name="worldBoxOffice3" min=0 id="wbo3"><label for="wbo3">월드 박스 오피스</label><br><br>
		
		<input type="submit" value="전송">
	</form>
</body>
</html>