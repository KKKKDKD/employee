<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<title>Signup Page</title>


</head>
<body>
<header style="height: 30px;background-color: blue;color:white;">

 Employee Registration form .
   
</header>
<center>   </center>


<div class="container">
  <h2>SignUp Page </h2>
 
   
  <div style="width: 90%">
  <form action="registrations" method="post">

   <label for="employee Name">employeeName:</label>
       <input type="text" style="width: 60%;" class="form-control"  name="employeeName" >

      <label for="salary">Salary:</label>
       <input type="text" style="width: 60%;" class="form-control"  name="salary">
    
       
      
  
      <label for="gender">Gender:</label>
       <select type="text" style="width: 60%;" class="form-control"  name="gender">
       <option>Male </option>
        <option> Female</option>
        </select>
        
        <label for="email Id">Email Id:</label>
       <input type="email" style="width: 60%;" class="form-control"  name="emailId">
       
      <label for="password">Password:</label>
       <input type="password" style="width: 60%;" class="form-control"  name="password">
  
      <label  style="font-size: 18px;">Image:</label>
       <input type="password" style="width: 60%;" class="form-control"  name="image">
      
    <button type="submit" class="btn btn-primary">Registration</button>
    
    <button type="reset" class="btn btn-danger">Clear</button>
  </form> 
  </div>
  </div>
</body>
</html>>