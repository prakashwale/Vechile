<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 
<center><h1>Car List</h1></center>  
<center><table border="3" width="70%" cellpadding="2">  
<tr bgcolor="#DEB887"><th>Id</th><th>Brand</th><th>Engine</th><th>Model</th><th>Transmission</th><th>Price</th><th>Delete</th></tr>  
   <c:forEach var="car" items="${list}" >   
   <tr bgcolor="#FFFF00">  
   <td width="60" align="center">${car.id}</td>  
   <td width="60" align="center">${car.brand}</td>  
   <td width="60" align="center">${car.engine}</td>  
   <td width="60" align="center">${car.model}</td>  
    <td width="60" align="center">${car.transmission}</td>
     <td width="60" align="center">${car.price}</td>
   <td width="60" align="center"><a href="delete/${car.id}">Delete</a></td>
   </c:forEach>  
   </table></center>  
   <br/>  
<center><input type="button" value="Back" onClick="JavaScript:window.location='viewpage.jsp';"></center><br>

