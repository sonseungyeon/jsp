<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show.jsp</title>
</head>
<body>
	1번째 영화<br>
	한글제목 : ${movieListOut[0].koreanTitle }<br>
	영어제목 : ${movieListOut[0].englishTitle }<br>
	월드 박스오피스 : ${movieListOut[0].worldBoxOffice }<br>
	
	2번째 영화<br>
	한글제목 : ${movieListOut[1].koreanTitle }<br>
	영어제목 : ${movieListOut[1].englishTitle }<br>
	월드 박스오피스 : ${movieListOut[1].worldBoxOffice }<br>
	
	3번째 영화<br>
	한글제목 : ${movieListOut[2].koreanTitle }<br>
	영어제목 : ${movieListOut[2].englishTitle }<br>
	월드 박스오피스 : ${movieListOut[2].worldBoxOffice }<br>
	
</body>
</html>