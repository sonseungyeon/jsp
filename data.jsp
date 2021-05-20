<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
int kor = Integer.parseInt(request.getParameter("kor"));
%>
<%
int eng = Integer.parseInt(request.getParameter("eng"));
%>
<%
int math = Integer.parseInt(request.getParameter("math"));
%>
<%
int social = Integer.parseInt(request.getParameter("social"));
%>
<%
int science = Integer.parseInt(request.getParameter("science"));
%>
<%
int hap = kor + eng + math + social + science;
%>
<%
int avg = (hap / 5);
%>