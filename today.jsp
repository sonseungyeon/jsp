<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>todat.jsp</title>
<style>
tr,td {
border:1px solid black;}
</style>
</head>
<body>
<h1>오늘 날짜를 출력해 주세요</h1>

<%
LocalDateTime now = LocalDateTime.now();
%> 

 오늘은: <%=now.getDayOfYear() %>년,<%=now.getMonthValue() %>월,<%=now.getDayOfMonth() %>일 <%=now.getHour()%>시 <%=now.getMinute()%>분 <%=now.getSecond()%>초
 
 <hr>
  
  <%-- 1~10까지의 수를 출력해보자 --%> 
 <ul>
 <%for(int i=1; i<=10; i++){ %>
 <li><%=i %></li>
 <%}%>
 </ul> 
  
<%-- 구구단 테이블로 만들기 --%> 
<table> 
 
<%for(int k=1; k<10; k++){ %>
<tr>
<%for(int j=1; j<10; j++){ %>
<td><%=k + "*" + j + "= " + k * j%></td> 
 <%}%>
</tr>
 <%}%> 
 </table>
 
 <%-- set을 이용한 메서드
 getlottonums를 만들고
 getlottonums : 로또번호 6개 생성해서 set객체(컬렉션)으로 반환
 메서드를 호출하여 받은 로또번호 6개 화면에 출력 
li태그 안쪽에 넣어 출력하세요 --%>
  
   
	  <%! 
	  public Set<Integer> getLottoNums(){
		  //set 객체 생성. 메서드 쓰려면 호출하는 코드가 있어야함.
		  //set 특징 = 중복을 허용하지 않는다. 
		  Set lotto = new HashSet();
		  //로또번호 생성하여 set에 담는 내용 구현  
		  while(lotto.size()< 6){
			  int randomNumber = (int)(Math.random()*45)+1; 
			  lotto.add(randomNumber); 
		  } 
		  return lotto;
		  }
		  %> 
		  
		   <ul>
		   <%
		   Set<Integer> lottoNumbers = getLottoNums();
		   for(int num : lottoNumbers){
			   out.write("<li>"+num+"</li>");
			   }
			   %> 
 
 </ul>
</body>
</html>