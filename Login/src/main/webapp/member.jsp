<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body{
background-color:teal;}
h1{
text-align:center;}
.button{
color:white;
background-color:black;
align:center;
border-spacing:0 1em;
border-collapse:seperate;}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
You have successfully logged in
</h1>
<form method="post" action='show.jsp'>
	<div align='center'>
	<td><input type="submit" value="View DB" class="button"></td></div></form>
<form method="post" action='logout'>
	<div align='center'>
	<td><input type="submit" value="Logout" class="button"></td></div></form>

</body>
</html>