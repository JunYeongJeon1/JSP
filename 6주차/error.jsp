<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
	요청하신 페이지에서 문제가 발생하였습니다.<br>
	빠른 시일 내에 문제를 해결하겠습니다.<br>
	<hr>
	<img src="underConstruction.jpg"><br>
	예외 타입 : <%=exception.getClass().getName() %>
	에러 메시지 : <%=exception.getMessage() %>

</body>
</html>