<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//배열
	String[] foods = { "부대찌개", "소시지", "라면사리" };

	String name = "가렌";
	pageContext.setAttribute("name", name);
	request.setAttribute("name", "카타리나");
	session.setAttribute("name", "럭스");
	application.setAttribute("name", "샤코");

	request.setAttribute("foods", foods);

	//리스트
	List<String> numbers = new ArrayList<String>();
	numbers.add("일번");
	numbers.add("이번");
	numbers.add("삼번");
	//nums라는 키값으로 이해표현식을 쓰는것임
	request.setAttribute("nums", numbers);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ex02/ex02.jsp</title>
</head>
<body>
	<h1>el을 써보자</h1>
	foods 배열: ${foods[0]}
	<br> name 문자열: ${applicationScope.name }
	<br> numbers 리스트: ${nums.get(0)}, ${nums[1]}, ${nums[2]} <br>
	사칙연산: ${3+10 }<br>
	논리연산: ${(10>3)&&(20>21) }<br>
</body>
</html>