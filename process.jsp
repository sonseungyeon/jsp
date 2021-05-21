<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="jsp05_ex.MarvelMovie"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- MarvelMovie marvelMovie = new MarvelMovie(); -->
<!-- request.setAttribute("marvelMovie", marvelMovie); -->
<jsp:useBean id="marvelMovie" class="jsp05_ex.MarvelMovie" scope="request">
	<!-- property: MarvelMovie 클래스의 필드 -->
	<!-- param: input에서 입력받은 파라미터(name)-->
	<!-- param의 기능? 기본 자료형(int,long,String,double...) 자동형변환 -->
	<jsp:setProperty property="koreanTitle" name="marvelMovie" param="koreanTitle"/>
	<jsp:setProperty property="englishTitle" name="marvelMovie" param="englishTitle"/>
	<jsp:setProperty property="worldBoxOffice" name="marvelMovie" value='<%=Long.parseLong(request.getParameter("worldBoxOffice")) %>' />
</jsp:useBean>

<jsp:useBean id="marvelMovie2" class="jsp05_ex.MarvelMovie" scope="request">
	<jsp:setProperty property="koreanTitle" name="marvelMovie2" param="koreanTitle2"/>
	<jsp:setProperty property="englishTitle" name="marvelMovie2" param="englishTitle2"/>
	<jsp:setProperty property="worldBoxOffice" name="marvelMovie2" value='<%=Long.parseLong(request.getParameter("worldBoxOffice2")) %>' />
</jsp:useBean>

<jsp:useBean id="marvelMovie3" class="jsp05_ex.MarvelMovie" scope="request">
	<jsp:setProperty property="koreanTitle" name="marvelMovie3" param="koreanTitle3"/>
	<jsp:setProperty property="englishTitle" name="marvelMovie3" param="englishTitle3"/>
	<jsp:setProperty property="worldBoxOffice" name="marvelMovie3" value='<%=Long.parseLong(request.getParameter("worldBoxOffice3")) %>' />
</jsp:useBean>

<%
	request.setCharacterEncoding("utf-8");
	List<MarvelMovie> movieList = new ArrayList<MarvelMovie>(); 
	movieList.add(marvelMovie);
	movieList.add(marvelMovie2);
	movieList.add(marvelMovie3);
	
	request.setAttribute("movieListOut", movieList);
%>

<jsp:forward page="show.jsp"/>
