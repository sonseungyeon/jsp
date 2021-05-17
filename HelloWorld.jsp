<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요!</h1>
	<%-- jsp 주석 --%>
	<%--
		컴파일을 하지 않는 코드!
	 --%>
	 <!-- html 주석 -->
	 
	 <%-- 스크립트릿 --%>
	 <%--
	 	스크립트릿 : <% 내용 %>
	 	내용에는 java코드가 들어간다.
	  --%>
	  <%
	  	int num = 100;
	  	int sum = num + 100;
	  	out.write("<h2> sum : " + sum + "</h2>");
	  %>
	  
	  <%-- 표현식 --%>
	  sum은 : <%=sum %>
	  
	  <%--
		  선언부(Declaration)
		  메서드를 선언하거나, 스태틱변수를 선언할 때 사용
	  	<%! 선언할 내용 %>
	  --%>
	  
</body>
</html>