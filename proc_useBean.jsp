<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="student" class="ex01.Student" scope="request" />
<%--
	바로 윗줄이 하는 역할을 서술함.
	Student student=new Student();
	request.setAttribute("student",student);
	
	useBean은 객체를 만들어서 attribute라는 것을 담게 해줌.
	id : 사용할 객체 명(키,변수명 과 같음)
	class : 해당 클래스가 있는 위치(패키지+클래스명)
	scope : 객체의 적용 범위(기본객체의 종류: pageContext,request,session,application)
 --%>
<%
	/* student.getAge();
	request.getAttribute("student"); */
	
	String name = request.getParameter("name");
%>
<jsp:setProperty property="name" name="student" value="<%=name %>"/>
<jsp:setProperty property="age" name="student" param="age"/>
<jsp:forward page="studentView.jsp"/>
<%--
	주의
	setProperty는 실제로 set메서드를 호출하는 것임
	property는 name에 맞는 set메소드가 존재해야 사용가능.
--%>
