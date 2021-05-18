<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%!
    public ArrayList<String> foods;
    
    public void setFoods(){
    	foods = new ArrayList<String>();
    	
    	foods.add("삼겹살");
    	foods.add("파스타");
    	foods.add("피자");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
setFoods();
for(int i = foods.size()-1; i>=0; i--){
	out.write(foods.get(i)+"<br>");
}
%>
</body>
</html>