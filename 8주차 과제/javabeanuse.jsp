<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학번,이름,학년,선택과목</title>
</head>
<body>
	<h2>학번,이름,학년,선택과목을 입력하는 폼</h2>
	<hr>
	<form action="javabeanPro.jsp" method="post">
	
		학번: <input type="text" name="id"><br>
		이름: <input type="text" name="name"><br>
		학년:
		<input type="radio" name="grade" value="1"checked>1학년&nbsp;
		<input type="radio" name="grade" value="1">2학년&nbsp;<br>
		선택과목 :
			<select name="subject">
				<option value="JAVA">JAVA</option>
				<option value="JSP">JSP</option>
				<option value="XML">XML</option>
			</select><br>	
		 <input type="submit" name="id" value="입력완료"><br>
</body>
</html>