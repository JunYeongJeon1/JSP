<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "java.sql.*"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	String id = request.getParameter("id");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>DB에 로그인 데이터 변경</h2>
	
	<form action="updatePro.jsp" method="post">
		아이디: <input type="text" name= "id" value="<%=id%>"><br>
		이름: <input type="text" name= "name"><br>
		암호: <input type="password" name= "pwd"><br>
		시력: <input type="text" name= "eye"><br>
		키: <input type="text" name= "height"><br>
		 
		<input type="submit" value="변경">
		<input type="button" value="삭제" onclick="location.herf='delete.jsp?id=<%=id%>'">
		<input type="reset" value="재설정">
</body>
</html>