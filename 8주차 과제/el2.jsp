<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el test2</title>
</head>
<body>
	<h2>글작성 완료</h2>
	<hr>
	<jsp:useBean id="m" class="ch10.Member"/>
	<jsp:setProperty property="*" name="m"/>
	<table border="1">
	<tr>
	<td width="150">이름</td>
	<td width="150">${param.name}</td>
	</tr>
	<tr>
	<td width="150">제목</td>
	<td width="150">${param.frist}</td>
	</tr>
	<tr>
	<td width="150">이메일</td>
	<td width="150">${param.email}</td>
	</tr>
	<tr>
	<td width="150">내용</td>
	<td width="150">${param.content}</td>
	</tr>
	<tr>
	<td width="150">비밀번호</td>
	<td width="150">${param.pwd}</td>
	</tr>
	</table>
</body>
</html>