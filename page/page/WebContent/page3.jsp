<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>페이지</title>
</head>
<body>
<%String asd = request.getParameter("asd");

switch(Integer.parseInt(asd)) 
{
     case 1:
       			 response.sendRedirect("http://www.oracle.com");
             break;
     case 2:
             response.sendRedirect("http://apache.org");
             break;
     default:
         		response.sendRedirect("https://www.eclipse.org/");
        		 break;
     
}
%>

 
</body>
</html>