<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
</head>
<body>
	이름: ${requestScope.student.name }
	<br>
	<%-- ((Student)request.getAttribute("student")).getName() --%>
	<%-- requestScope는 생략가능. --%>
	<%-- pageContext를찾고 request session application순으로 순회해서 찾는데 그중에서 값이 있는 것을 가져옴 --%>
	생년월일: ${student.birth }
	<br> 수학성적: ${student.score.math }
	<br> 국어성적: ${student.getScore().getKor() }
	<br> 영어성적: ${student.score.eng }
	<br> 총점 : ${student.score.tot }
	<br> 평균 : ${student.score.avg }
</body>
</html>