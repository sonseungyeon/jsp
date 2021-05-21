<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="employee" class="ex01.employee" scope="request">
	<jsp:setProperty property="*" name="employee" />
</jsp:useBean>
<jsp:setProperty property="birthDate" name="employee" value='<%=LocalDate.parse(request.getParameter("birth")) %>'/>
<jsp:forward page="show.jsp" />