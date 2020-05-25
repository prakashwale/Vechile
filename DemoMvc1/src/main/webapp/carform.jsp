<!DOCTYPE html>
<html>
<style>
body {
  font-family: Arial;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>

<h3>Enter the car details</h3>


<div class="container">
  <form method="post" action="save">
  <label for="brand">Brand Name</label>
    <select id="brand" name="brand">
      <option value="ford">Ford</option>
      <option value="tata">Tata</option>
      <option value="Honda">Honda</option>
       <option value="Toyota">Toyota</option>
        <option value="Nissan">Nissan</option>
         <option value="Maruthi">Maruthi</option>
          <option value="Hyundai">Hyundai</option>
      
    </select>
     <label for="engine">Engine</label>
    <select id="engine" name="engine">
      <option value="petrol">Petrol</option>
      <option value="diesel">Diesel</option>
      <option value="petrol/diesel">Petrol/Diesel</option>
       </select>
    <label for="model">Model</label>
    <input type="text" id="model" name="model" placeholder="Enter the model">
     <label for="transmission">Transmission</label>
    <select id="transmission" name="transmission">
      <option value="Manual">Manual</option>
      <option value="Automatic">Automatic</option>
      <option value="Manual/Automatic">Manual/Automatic</option>
       </select>
      <label for="price">Price</label>
    <input type="text" id="price" name="price" placeholder="Enter the price">

   

    
  
    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
