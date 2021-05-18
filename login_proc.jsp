<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(userId.equals("groot") && password.equals("imgroot")) {%>
		<%response.sendRedirect("http://localhost:8080/response_ex/login.jsp"); %>
	<%}else{ %>
		<%response.sendRedirect("http://localhost:8080/response_ex/fail.jsp"); %>
	<%} %>
</body>
</html>
<%--
2. jsp03_ex프로젝트에서
response_ex폴더를 생성
form.jsp를 만들어서 form에서 userId와 password를 입력받아 전송하는 코드 작성
login_proc.jsp : 전달받은 파라미터에서
	userId가 "groot"이고 password 가 "imgroot"이면
	login.jsp 페이지로 이동
	userId 또는 password 가 다르면
	fail.jsp 페이지로 이동
login.jsp : 로그인이 성공하셨습니다 출력
fail.jsp : 로그인이 실패하셨습니다 출력 
--%>