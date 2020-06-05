<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 정보</title>
</head>
<body>
	<h2>학생정보</h2>
	<hr>
	<jsp:useBean id="m" class="ch10.Member"/>
	<jsp:setProperty property="*" name="m"/>
	<table border="1">
	<tr>
	<td width="150">학번</td>
	<td width="150"><jsp:getProperty property="id" name="m"/></td>
	</tr>
	<tr>
	<td width="150">이름</td>
	<td width="150"><jsp:getProperty property="name" name="m"/></td>
	</tr>
	<tr>
	<td width="150">학년</td>
	<td width="150"><jsp:getProperty property="grade" name="m"/></td>
	</tr>
	<tr>
	<td width="150">선택과목</td>
	<td width="150"><jsp:getProperty property="subject" name="m"/></td>
	</tr>
	</table>
</body>
</html>