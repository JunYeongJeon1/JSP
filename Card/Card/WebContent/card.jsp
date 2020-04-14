<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>개인면담 카드</title>
</head>
<body>
<h2>개인면담 카드</h2>
<hr>
<form action ="card1.jsp" method="post">
<table border="1" width="750px" height="300x">
<tr>
  <th bgcolor="blue">소속</th> 
  <td><input type="text" name="test1" value=""/></td>
</tr>

<tr>
  <th bgcolor="blue">성명</th> 
  <td><input type="text" name="test2" value=""/></td>
</tr>

<tr>
  <th bgcolor="blue">현주소</th> 
  <td><input type="text" name="test3" value=""/></td>
</tr>

<tr>
  <th bgcolor="blue">입사년월일</th> 
  <td><input type="date" name="test5" value="년 월 일"/></td>
</tr>

<tr>
 <th bgcolor="blue">최종학력</th> 
  <td><input type="radio" name="test4" value="중졸" >중졸
  		<input type="radio" name="test4" value="고졸" >고졸
  		<input type="radio" name="test4" value="전문대졸" >전문대졸
  		<input type="radio" name="test4" value="대졸" >대졸
	</td>
</tr>


</table>
<table border="2" width="750px">

<td>
	<fieldset> 
          <legend>자격증</legend>
 			<input type = "checkbox" name="test7" value="자동차2종">자동차2종
 			<input type = "checkbox" name="test7" value="정보처리산업기사">정보처리산업기사
			<input type = "checkbox" name="test7" value="컴퓨터활용">컴퓨터활용
			<input type = "checkbox" name="test7" value="기타">기타
	</fieldest>
</td>


</table>

<table  border="3" width="750px" height="100x">
  <tr>
  <th>상담내용</th>
  <td><textarea cols = "50" rows = "10" name = "test8" placeholder = "상담내역 입력하기"></textarea>
  </td>
  </tr>
</table>


  <input type="submit" value="확인"> 
  <input type="reset" value="다시입력"> </form>
</body>
</html>