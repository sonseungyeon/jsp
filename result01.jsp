<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//클라이언트가 요청한 parameter를 받아보자
	//파라미터를 받기 위해서 request 객체를 이용한다.
	//getParameter 메소드는 String으로 반환받아야 함.
	//메소드의 반환타입을 알고 싶으면 메소드에 마우스를 갖다대면 노란색박스가 뜨는데 좌측상단에 타입이 나와있음
	
	//텍스트
	String name = request.getParameter("name");//name이 name인 아이의 값을 받음
	String address = request.getParameter("address");//name이 address인 아이의 값을 받음
	//라디오 버튼
	String sex = request.getParameter("sex");//name이 sex인 아이의 값을 받음
	
	//체크박스는 여러개를 같은 name으로 보내기 때문에 배열로 받아야 한다.
	String[] hobby = request.getParameterValues("hobby");//name이 hobby인 아이의 값을 받음
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전달 받은 값</h1>
	<ul>
		<li>이름 : <%=name %></li>
		<li>주소 : <%=address %></li>
		<li>성별 : <%=sex %></li>
		<li>취미
			<ul>
			<%for(String h : hobby){%>
				<li><%=h %></li>		
			<%}%>
			</ul>
		</li>
	</ul>
</body>
</html>
