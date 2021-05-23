<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.number>=90 }">
		A<br>
		</c:when>
		<c:when test="${param.number>=80 }">
		B<br>
		</c:when>
		<c:when test="${param.number>=70 }">
		C<br>
		</c:when>
		<c:when test="${param.number>=60 }">
		D<br>
		</c:when>
		<c:otherwise>
		F<br>
		</c:otherwise>
	</c:choose>
</body>
</html>