<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
	 public Set<Integer> getLottoNums(){
		//Set은 중복을 허용하지 않는다.
		 Set<Integer> set = new HashSet<Integer>();
		 
		 while(set.size() <6){
			 int num = (int)(Math.random()*45)+1;
			 set.add(num);
		 }	
	 	 return set;
	 }%>	

<!DOCTYPE html>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="java.time.LocalDateTime"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>오늘 날짜를 출력해 주세요</h1>
	<%--오늘은 : 0000년, 00월, 00일 00시:00분:00초--%>
	<%-- 자바객체를 이용하여 날짜를 받기 --%>
	<%	LocalDateTime date = LocalDateTime.now();
		out.write("오늘은 : " + date.getYear() + "년, " 
		+ date.getMonthValue() + "월, " + date.getDayOfMonth() + "일, "
		+ date.getHour() + "시:" + date.getMinute() + "분:" 
		+ date.getSecond() + "초"); %>

	<hr>
	<%-- 1~10까지 수를 출력해보자 --%>
	<ul>
		<%for (int i = 1; i <= 10; i++) {%>
			<li><%=i%></li>
			<!-- out.write("<li>" + i + 	"</li>"); -->
		<%}%>
	</ul>

	<%--
	구구단 테이블로 만들어보세요
	2*1=2  | 3*1=3  | 4*1=4  ... 9*1=9
	2*2=4  | 3*2=6  | 4*2=8  ... 9*2=18
	...
	2*9=18 | 3*9=27 | 4*9=36 ... 9*9=81
	 --%>

	<%--
		Set을 이용한 메서드
		getLottoNums()를 만들고
		getLottoNums() : 로또 번호 6개를 생성해서 set으로 반환하는 메서드
		
		메서드를 호출하여 받은 로또번호를 이용하여 화면에 번호 6개를 출력함.
	 --%>
	 
	 <ul>
	 <% 
	 	Set<Integer> set = getLottoNums();
	 	for(int num:set){
	 		out.write("<li>"+num+"</li>");
	 	}
	 %>
	 </ul>
	 
	<style>
		table{border:1px solid black; border-collapse: collapse;}
		td{border:1px solid black; text-align: center;}
	</style>
	<table>
		<%for (int j = 1; j <= 9; j++) {%>
			<tr>
				<%for (int i = 2; i <= 9; i++) {%>
					<td><%=i%>*<%=j%>=<%=i*j%></td>
				<%}%>
			</tr>
		<%}%>
	</table>
	<%!
	  	public int tot;
	  
	  	public int sum(int n1, int n2){
		  return n1 + n2;
	  }
	  %>
	  멤버변수 tot : <%= tot++ %><br>
	  두 수의 합 : <%= sum(10,20) %> 
	  
	 <%--
	  	디렉티브 : Directive
		클래스를 import하거나, 현재 페이지에 대한 정보를 선언하는 용도
		import, page, include, taglib 키워드를 사용 
		<%@ 디렉티브 %>
	  	보통 문서의 상단에 표기함
	 --%>
</body>


