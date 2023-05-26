<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap">
<style>
body{
font-family: 'Rubik', sans-serif;
background-color:teal;
color:white;
margin:0;}
h1{
background-color:black;
margin:0;
height:70px;
padding-top:30px;margin-bottom:40px;	
}
.button{
color:white;
background-color:black;
align:center;
border-spacing:0 1em;
border-collapse:seperate;}
table {
  border-collapse:separate; 
  border-spacing: 0 1em;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 style="text-align: center;">Login</h1>
	<form method="post" action="LoginCheck">
		<table align="center">
			<tr>
				<td>Username</td>
				<td><input type="text" name="uname"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			
				
				
			
		</table>
		<div align='center'>
<td><input type="submit" value="login" class="button"></td>
        </div>
	</form>
	<form method="post" action='register.jsp'>
	<div align='center'>
	<td><input type="submit" value="Sign up" class="button"></td></form>
</div>
</body>
</html>