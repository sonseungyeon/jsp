<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.time.LocalDate"%>
<%@page import="marvel.Movie"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

Map<String, String> myError = new HashMap<>();

String title = request.getParameter("title").trim();
String titleEng = request.getParameter("titleEng").trim();
String boxOfficeParam = request.getParameter("boxOffice").trim();
String releaseDateParam = request.getParameter("releaseDate").trim();

//title이 빈 값인가?
if (title.equals("")) {
	myError.put("title", "제목이 비어있습니다.");
}

//titleEng가 빈 값인가?
if (titleEng.equals("")) {
	myError.put("titleEng", "영어제목이 비어있습니다.");
}

//titleEng가 빈 값인가?
if (boxOfficeParam.equals("")) {
	myError.put("boxOffice", "박스오피스가 비어있습니다.");
}

//titleEng가 빈 값인가?
if (releaseDateParam.equals("")) {
	myError.put("releaseDate", "개봉일이 비어있습니다.");
}

if (myError.size() > 0) {
	request.setAttribute("myError", myError);
	request.getRequestDispatcher("input.jsp").forward(request, response);
}

//처음 추가할 때만 리스트 객체를 생성한다.
if(session.getAttribute("movieList") ==null){
	session.setAttribute("movieList", new ArrayList<Movie>());
}

List<Movie> movieList = (List<Movie>)session.getAttribute("movieList");
Movie movie = new Movie(
		title,
		titleEng,
		Long.parseLong(boxOfficeParam),
		LocalDate.parse(releaseDateParam)
		);
movieList.add(movie);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>process.jsp</title>
<script type="text/javascript">
	window.addEventListener("DOMContentLoaded",function(){
		document.querySelector("button").onclick=function(){
			location.href="input.jsp";	
		}
		document.querySelectorAll("button")[1].onclick=function(){
			loc
			-
			*/ation.href="result.jsp";	
		}
	});
</script>
</head>
<body>
	<h1>메뉴선택</h1>
	<button>추가화면으로 이동</button>
	<button>결과 보기 화면으로 이동</button>
</body>
</html>