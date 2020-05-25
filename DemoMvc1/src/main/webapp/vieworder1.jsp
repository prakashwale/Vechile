<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>  
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<div style="background-color:lightblue"> 
<body>  
 <%@include file="vieworder.jsp" %>
<center><h2>${message}</h2></center> 
<Form>

        <center><H1>Your Orders</H1></center>

       <%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "test";
String userId = "root";
String password = "system";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Id</b></td>
<td><b>Brand</b></td>
<td><b>Engine</b></td>
<td><b>Model</b></td>
<td><b>Transmission</b></td>
<td><b>Price</b></td>
<td><b>Email</b></td>
<td><b>Date&Time</b></td>
<td><b>Cancel</b></td>
</tr>
 <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String pass = request.getParameter("pass");  
String sql ="select * from order99 where pass = '" + pass + "'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#FFFF00">

<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("brand") %></td>
<td><%=resultSet.getString("engine") %></td>
<td><%=resultSet.getString("model") %></td>
<td><%=resultSet.getString("transmission") %></td>
<td><%=resultSet.getString("price") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("date") %></td>
<td width="60" align="center"><a href="cancel/<%=resultSet.getInt("id") %>">Cancel</a></td>
</tr>

<% 
}

} catch (Exception e) {
out.println("your order list is empty!!!");
}
%>
</table>
<center><a href="welcome.jsp">Back</a></center>
</Form>
</body>
</html>