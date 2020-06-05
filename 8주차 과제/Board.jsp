<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 양식</title>
</head>
<body>
	<form action = "Board2.jsp" method = "post">
	<table border="1" width="600" height="400">
		<caption><h2>글쓰기</h2></caption>
		<tr>
			<th colspan="2">글목록</th>
	   </tr>
	   <tr>
			<th>이름</th>
			<th><input type="text"  name="name"></th>
	   </tr>
	   	   <tr>
			<th>제목</th>
			<th><input type="text" name="frist"></th>
	   </tr>
	   	   <tr>
			<th>이메일</th>
			<th><input type="text" name="email"></th>
	   </tr>
	   	   <tr>
			<th>내용</th>
			<th><textarea cols = "55" rows = "15" name="content"></textarea></th>
	   </tr>
	   	   <tr>
			<th>비밀번호</th>
			<th><input type="text" name="pwd"></th>
	   </tr>
	   	   <tr>
			<th colspan="2"><input type="submit" value="글쓰기" ><input type="reset" value="다시작성" ><input type="submit" value="목록보기" ></th>
	   </tr>
	</table>

</body>
</html>