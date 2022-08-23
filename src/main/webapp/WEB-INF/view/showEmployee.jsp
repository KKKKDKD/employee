<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Congratulation page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>





<div class="container">
<img alt="" src="images/roles.jpg" style="height: 100px; "> 
           <hr/>
  <h4><b>employee Team list</b></h4>
  
  <table class="table table-hover">
   
    <thead>
      <tr>
         <th>employeeId</th>
				<th>employeeName</th>
				<th>salary</th>
				<th>gender</th>
				<th>emailId</th>
				<th>password</th>
				<th>image</th>
     
      </tr>
    </thead>
    <tbody>
      <tr>
                       <td>${empDto.employeeId}</td>
						<td>${empDto.employeeName }</td>
						<td>${empDto.salary }</td>
						<td>${empDto.gender}</td>
						<td>${empDto.emailId }</td>
						<td>${empDto.password}</td>
					  <td>

				
		               <td>
                       <img alt="" src="${empDto.getImage()}"style="height: 120px;">
                       </td>
      </tr>
      
    </tbody>
  </table>
  
</div>

</body>
</html>