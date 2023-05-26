<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<link href="https://fonts.googleapis.com/css2?family=Rubik:wght@500&display=swap">
<style>body{font-family: 'Rubik', sans-serif;background-color: teal;color:white;margin:0;}h1{background-color:black;color:white;margin:0;height:70px;padding-top:30px;margin-bottom:40px;}tr{padding-top:20px;}

table {
  border-collapse:separate; 
  border-spacing: 0 1em;
}
</style>
</head>
<body>
 <div align="center">
  <h1>Employee Register Form</h1>
  <form action="Newreg" method="post">
   <table style="with: 90%">
    <tr>
     <td>First Name</td>
     <td><input type="text" name="firstName" /></td>
    </tr>
    <tr>
     <td>Last Name</td>
     <td><input type="text" name="lastName" /></td>
    </tr>
    <tr>
     <td>UserName</td>
     <td><input type="text" name="username" /></td>
    </tr>
    <tr>
     <td>Password</td>
     <td><input type="password" name="password" /></td>
    </tr>
    <tr>
     <td>Address</td>
     <td><input type="text" name="address" /></td>
    </tr>
    <tr>
     <td>Contact No</td>
     <td><input type="text" name="contact" /></td>
    </tr>
   </table>
   <input type="submit" value="Submit" />
  </form>
 </div>
</body>
</html>