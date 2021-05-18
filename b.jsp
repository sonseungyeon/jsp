<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>b.jsp</title>
</head>
<body>
	<%
		//객체에서 attribute받기
		/* String pageData	= (String)pageContext.getAttribute("일번");
		int requestData	= (Integer)request.getAttribute("일번");
		Double sessionData	= (Double)session.getAttribute("일번");
		boolean applicationData	= (Boolean)application.getAttribute("일번"); */
	%>
	<%--a.jsp 각각의 scope객체에 데이터를 넣음.
	b.jsp링크를 눌러 b.jsp페이지를 요청
	b.jsp의 내용을 실행
	pageData,requestData는 b.jsp에 있는 새로운 객체!!
	프로그램이 종료되기 전까지 실행하고있는걸 (서버)application이라고 함 --%>
	pageData : <%=pageContext.getAttribute("일번") %><br>
	requestData : <%=request.getAttribute("일번") %><br>
	sessionData : <%=session.getAttribute("일번") %><br>
	applicationData : <%=application.getAttribute("일번") %><br>
</body>
</html>