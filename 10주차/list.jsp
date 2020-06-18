<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String passwd = "1111";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	String sql = "SELECT * FROM LOGIN";
	Statement st = con.createStatement();
	
	ResultSet rs = st.executeQuery(sql);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 정보</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	<h1 class="text-center font-weight-bold">로그인정보</h1> 
	<table class = "table tavle-hover">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
		</tr>
<%
	while(rs.next()){
		String id=rs.getString("ID");
		String name=rs.getString("NAME");
		String pwd=rs.getString("PWD");
%>		
		<tr>
			<td><a href="updateForm.jsp?id=<%=id %>"><%=id %></td>
			<td><%=name %></td>
			<td><%=pwd %></td>
		</tr>
<%}

	rs.close();
	st.close();
	con.close();
%>		
	</table>
	</div>
</body>
</html>