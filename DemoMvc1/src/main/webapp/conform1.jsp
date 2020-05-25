<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>  
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<div style="background-color:"> 
<body>  
<form method="post" action="save7">



        <center><H1>Please check the details of your car & Enter your email and password for conformation</H1></center>

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

 <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String id = request.getParameter("id");  
String sql ="select * from car99 where id = '" + id + "'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<table  align="center" cellpadding="5" cellspacing="5" border="1">
  <tr>
    <th><b>Id:</b></th>
    <td><input type="text" name="id" readonly="readonly" value="<%= resultSet.getInt("id")%>"/></td>
  </tr>
  <tr>
    <th><B>Brand:</B></th>
    <td><input type="text" name="brand" readonly="readonly" value="<%= resultSet.getString("brand")%>"/></td>
  </tr>
  <tr>
    <th>Engine:</th>
    <td><input type="text" name="engine" readonly="readonly" value="<%= resultSet.getString("engine")%>"/></td>
  </tr>
  <tr>
    <th>Model:</th>
      <td><input type="text" name="model" readonly="readonly" value="<%= resultSet.getString("model")%>"/></td>
  </tr>
   <tr>
    <th>Transmission:</th>
      <td><input type="text" name="transmission" readonly="readonly" value="<%= resultSet.getString("transmission")%>"/></td>
  </tr>
   <tr>
    <th>Price:</th>
  <td><input type="text" name="price" readonly="readonly" value="<%= resultSet.getString("price")%>"/></td>
  </tr>
  <tr>
    <th>Email:</th>
    <td><input type="text" placeholder="Enter your email" name="email" required></td>
  </tr>
  <tr>
    <th>Password:</th>
    <td><input type="password" placeholder="Enter your password" name="pass" required></td>
  </tr>
   <tr>
    <th>Date&Time:</th>
    <td> <input type="text" name="date" readonly="readonly" value="<%= (new java.util.Date())%>"/></td>
  </tr>
   <tr>
    <th><p><span>&#128073;</span>Click Here</p></th>
    <td><input type="submit" value="Buy Order" ></td>
  </tr>
</table>
</form>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
