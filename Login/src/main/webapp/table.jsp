<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


<%
response.setIntHeader("Refresh", 5);
String id = request.getParameter("id");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "employees";
String userId = "root";
String password = "153492768";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<style>body{font-family: 'Rubik', sans-serif;background-color: teal;color:black;margin:0;}
h2{background-color:black;color:white;margin:0;height:70px;padding-top:30px;margin-bottom:40px;}
tr:hover{background-color:lightyellow;}
</style>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<th>First Name</th>
<th>Last Name</th>
<th>Username</th>
<th>Password</th>
<th>Address</th>
<th>contact</th>
<th>id</th>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM employee";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">


<td><%=resultSet.getString("first_name") %></td>
<td><%=resultSet.getString("last_name") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("id") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<form method="post" action='logout'>
	<div align='center'>
	<td><input type="submit" value="Logout" class="button"></td></div></form>