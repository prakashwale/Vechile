<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>  
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<div style="background-color:lightblue"> 
<body>  
 <%@include file="checkcar.jsp" %>
 </FORM>


        <center><H1>Here your dream cars!!!!!</H1></center>

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
<h2 align="center"><font><strong>Your Brand cars</strong></font></h2>
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
</tr>
 <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String brand = request.getParameter("brand");  
String sql ="select * from car99 where brand = '" + brand + "'";

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

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
             <center><H1>Please enter the car Id You wish buy</H1></center>
       <Form action=conform1.jsp METHOD="POST">
        <label for="id"></label>
     <center> <input type="text" placeholder="Enter CarId" name="id" required></center><br>
       <center><button type="submit">Confrim</button></center>
       </Form>
</body>  
</html> 