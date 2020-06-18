<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 입력</title>
</head>
<body>
	<h1>사용자 폼</h1>
	
	<form action="insertPro.jsp" method="post">
		ID: <input type="text" name= "id"><br>
		NAME: <input type="text" name= "name"><br>
		PASSWORD: <input type="password" name= "pwd"><br>
		EYE: <input type="text" name= "eye"><br>
		HEIGHT: <input type="text" name= "height"><br>
		<input type="submit" value="입력완료">
		<input type="reset" value="다시 작성">
	</form>
</body>
</html>