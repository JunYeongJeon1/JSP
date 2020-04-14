<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.Enumeration" 
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<title>개인면담 카드</title>
</head>
<body>
	<h2>사용자확인란</h2>
	<%String test1 = request.getParameter("test1");
		String test2 = request.getParameter("test2");
		String test3 = request.getParameter("test3");
		String test4 = request.getParameter("test4");
		String test5 = request.getParameter("test5");
		String test6 = request.getParameter("test6");
		String test8 = request.getParameter("test8");
		Enumeration aa = request.getParameterNames();
		%>
		<table border="1" width="750px" height="300x">
<tr>
  <th>컨트롤 요소</th>  
  <td style="text-align:center;font-size: 12pt;">입력값</td>
</tr>
<tr>
  <th>소속</th> 
  <td><input  name="test1" value="<%=test1%>"/></td>
</tr>
<tr>
  <th>성명</th> 
  <td><input  name="test2" value="<%=test2%>"/></td>
</tr>
<tr>
  <th>현주소</th> 
  <td><input  name="test3" value="<%=test3%>"/></td>
</tr>
<tr>
<tr>
  <th>입사년월일</th> 
  <td><input  name="test5" value=<%=test5%>></td>
</tr>
<tr>
 	<th>학력</th> 
  <td><input  name="test4" value=<%=test4%>>
  </td>
</tr>
<tr>
  <th>자격증</th>
  <td>
       <% String[] test71 = request.getParameterValues("test7");
  for(String test7 : test71){
	  out.println(test7 + " ");
  }
  %>


  </tr>
 <tr>
  <th>상담내용</th>
 	 <td><%= test8 %></td>
  </tr>

<tr>
  <th>각 폼 컨트롤의 이름들</th>
  <td>
  <% 	while(aa.hasMoreElements()){
	 		String names = (String)aa.nextElement();
   		out.println(names);} %>
  </td>
  </tr>
</table>
</body>
</body>
</html>