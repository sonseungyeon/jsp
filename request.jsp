<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request.jsp</title>
</head>
<body>
	<h1>request</h1>
	<dl>
		<dt>요청 객체</dt>
		<dd>
			<ul>
				<li>HttpServletRequest의 인스턴스</li>
				<li>요청 정보를 갖고있는 아이
					<ul>
						<li>클라이언트와 관련된 정보</li>
						<li>요청 파라미터 정보</li>
						<li>쿠키 정보</li>
						
					</ul>
				</li>
				<li>request의 내용
					<ul>
						<li>클라이언트 IP = <%=request.getRemoteAddr() %></li>
						<li>요청 인코딩 = <%=request.getCharacterEncoding() %></li>
						<li>요청 파라미터
							<ul>
							<%
							Enumeration<String> en = request.getParameterNames();
							while(en.hasMoreElements()){
								out.write("<li>" + en.nextElement() +"</li>");		
							}
							%>
							</ul>
						</li>
						<li>서버 이름 = <%=request.getServerName() %></li>
						<li>서버 포트 = <%=request.getServerPort() %></li>
						<li>메서드 종류 = <%=request.getMethod() %></li>
						<li>콘텍스트 경로 = <%=request.getContextPath() %></li>
						<li>쿠키들 = <%=request.getCookies() %></li>
						<li>요청 헤더들
							<ul>
							<%
							Enumeration<String> hn = request.getHeaderNames();
							while(hn.hasMoreElements()){
								out.write("<li>" + hn.nextElement() +"</li>");		
							}
							%>
							</ul>
						</li>
					</ul>
				</li>
			</ul>
		</dd>
	</dl>
</body>
</html>