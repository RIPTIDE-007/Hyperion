<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
</head>
<body>
	<style>
h1 {
	background-color: black;
	color: white;
	margin: 0;
	height: 70px;
	padding-top: 30px;
	margin-bottom: 40px;
}

body {
	font-family: 'Rubik', sans-serif;
	background-color: teal;
	margin: 0;
}

.button {
	background-color: black;
	font-family: 'Rubik', sans-serif;
	color: white;
	padding: 10px 20px;
	font-size: medium;
	border: none;
	margin-top: 10px;
	border-radius: 4px;
}
</style>
	<div align="center">

		<h1>Employee Details</h1>
		<h2>First Name : ${fn }</h2>
		<h2>Last Name : ${ln}</h2>
		<h2>Address : ${ad }</h2>
		<h2>Contact No: ${cont }</h2>
		<form method="post" action="member.jsp">
			<input type="submit" value="GO BACK" class="button">
		</form>

	</div>
	<img src="https://www.bing.com/images/search?view=detailV2&ccid=zKO7Gpao&id=B84A5086665331D591335131E8A6560D5B18A217&thid=OIP.zKO7GpaoVJu-73ERsTxxVAAAAA&mediaurl=https%3a%2f%2fi0.wp.com%2fupload.wikimedia.org%2fwikipedia%2fcommons%2fa%2fac%2fDefault_pfp.jpg&exph=340&expw=340&q=default+instagram+picture&simid=608035913549087201&FORM=IRPRST&ck=14D726A105466092632D727CE6565B2C&selectedIndex=0&idpp=overlayview&ajaxhist=0&ajaxserp=0">
	<form method="post" action='logout'>
	<div align='center'>
	<td><input type="submit" value="Logout" class="button"></td></div></form>
</body>
</html>