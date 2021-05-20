<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>main에서 작성한 h1</h1>

	<jsp:include page="sub.jsp">
	<%-- param는 string 자료형 , getparameterdata를 하면 빼올수 있음. forward도 가능 --%>
		<jsp:param value="hangul" name="data"/>
	</jsp:include>

	<h1>main 에서 작성한 코드 끝부분</h1>
</body>
</html>