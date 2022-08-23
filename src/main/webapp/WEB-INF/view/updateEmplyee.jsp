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
<title>update Page</title>


</head>
<body>
<header style="height: 30px;background-color: blue;color:white;">

 Employee  Update .
   
</header>
<body>

	<div class="container">
		<div class="text-center">
			<h1>Employee Update </h1>
		</div>

		
		

  
    <form action="updateEmpData" method="post">
    <div class="row">
				<div class="col-md-3"></div><div class="col-md-9"><input type="hidden" value="${empDto.employeeId }" name="employeeId"></div>
			</div>
    

   <label for="employee Name">employeeName:</label>
        <input type="text" style="width: 60%;" class="form-control"  value="${empDto.employeeName}"name="employeeName">

      <label for="salary">Salary:</label>
       <input type="number" style="width: 60%;" class="form-control" value="${empDto.salary}" name="salary" >
    
       
      
  
      <label for="gender">Gender:</label>
      <input type="text" style="width: 60%;" class="form-control"  value="${empDto.gender}"name="gender">

      
        
        <label for="email Id">Email Id:</label>
       <input type="email" style="width: 60%;" class="form-control"  value="${empDto.emailId }"name="emailId" >
       
      <label for="password">Password:</label>
       <input type="password" style="width: 60%;" class="form-control" value="${empDto.password }" name="password"  >
  
      <label  style="font-size: 18px;">Image:</label>
      <td>
         <img alt="" src="${empDto.getImage()}"style="height: 120px;">
          </td>
       <input type="text" style="width: 60%;" class="form-control" value=" ${empDto.getImage()}" name="image" >
      
    <button type="submit" class="btn btn-primary">Registration</button>
    
    <button type="reset" class="btn btn-danger">Clear</button>
  </form> 
</html>