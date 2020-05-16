<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>템플릿</title>
	<link rel='stylesheet' href='template.css'>
</head>
<body>
	<header>
		<jsp:include page='include_1.jsp' flush='false'/>
	</header>	
	<div id='content'>
			<section id='areaSub'>
				<jsp:include page='include_2.jsp' flush='false'/>
			</section>
			
			<section id='areaMain'>	
				<jsp:include page='content.jsp' flush='false'/>
			</section>	
	</div>
	<footer>
		<jsp:include page='bottom.jsp' flush='false'/>
	</footer>
	
</body>
</html>