<%@page import="jsp05_el.Ex01.Score" %>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="student" class="jsp05_el.Ex01.Student" scope="request" />
<jsp:setProperty property="name" name="student" param="name" />
<jsp:setProperty property="birth" name="student"
	value='<%=LocalDate.parse(request.getParameter("birth"))%>' />
<%
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	Score score = new Score(kor,eng,math);
	
	student.setScore(score);
	
	//페이지 전환
	request.getRequestDispatcher("view.jsp").forward(request, response);
%>