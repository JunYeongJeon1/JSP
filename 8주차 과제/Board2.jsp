<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 작성완료</title>
</head>
<body>
	<h2>글작성 완료</h2>
	<hr>
	<jsp:useBean id="m" class="ch10.Member"/>
	<jsp:setProperty property="*" name="m"/>
	<table border="1">
	<tr>
	<td width="150">이름</td>
	<td width="150"><jsp:getProperty property="name" name="m"/></td>
	</tr>
	<tr>
	<td width="150">제목</td>
	<td width="150"><jsp:getProperty property="frist" name="m"/></td>
	</tr>
	<tr>
	<td width="150">이메일</td>
	<td width="150"><jsp:getProperty property="email" name="m"/></td>
	</tr>
	<tr>
	<td width="150">내용</td>
	<td width="150"><jsp:getProperty property="content" name="m"/></td>
	</tr>
	<tr>
	<td width="150">비밀번호</td>
	<td width="150"><jsp:getProperty property="pwd" name="m"/></td>
	</tr>
	</table>
</body>
</html>