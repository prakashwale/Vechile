<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
 
<center><h1>order List</h1></center>  
<center><table border="3" width="70%" cellpadding="2">  
<tr bgcolor="#DEB887"><th>Id</th><th>Brand</th><th>Engine</th><th>Model</th><th>Transmission</th><th>Price</th><th>Email</th><th>Date</th></tr>  
   <c:forEach var="order" items="${list}" >   
   <tr bgcolor="#FFFF00">  
   <td width="60" align="center">${order.id}</td>  
   <td width="60" align="center">${order.brand}</td>  
   <td width="60" align="center">${order.engine}</td>  
   <td width="60" align="center">${order.model}</td>  
    <td width="60" align="center">${order.transmission}</td>
     <td width="60" align="center">${order.price}</td>
   <td width="60" align="center">${order.email}</td>

           <td width="60" align="center">${order.date}</td>

   </c:forEach>  
   </table></center>  
   <br/>  
<center><input type="button" value="Back" onClick="JavaScript:window.location='viewpage.jsp';"></center><br>

