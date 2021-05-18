<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td,tr{
border:1px solid black;}
</style>
</head>
<body>

<hr>
  <%! 
  public int add(int a, int b){ 
	  return a+b;
  }
  
  public int sub(int a, int b){ 
	  return a+b;
  }
   
  public void mul(int a,int b){ 
		 System.out.println(a*b);
	  }
 
  
  public void div(int a,int b){ 
		 System.out.println(a/b);
	  }
  
  %>  
  
  <table>  
  <tr>
  <th>식</th>
   <th>결과</th>
  </tr>
  <tr>
  <td>10+5</td>
  <td> <%=add(10,5) %> </td> 
  </tr>
  <tr>
  <td colspan="2"> mul(10,5) 호출<%=mul(10,5) %></td>
  </tr>
	 </table>
	 
			   
</body>
</html>