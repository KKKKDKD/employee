 cv<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


</head>
<body>
	<header style="height: 30px;background-color: blue;color:white;">

   <a href="login.jsp" class="btn btn-info" role="button">Home</a>University UTD Employee .
   
</header>
<div class="container">
<nav class="navbar navbar-expand-sm bg-light">
  <ul class="navbar-nav">    
    <li class="nav-item">
      <a class="nav-link" href="getemplist">Show Employees </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="registration">Employee Registration</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="fpassword">Forget Password</a>
    </li>
    
  </ul>
</nav>
<br>
${ msg }


${empDto}


  <form action="authenticate" method="post">
    <div class="form-group">
      <label for="user name">User name:</label>
      <input type="text" class="form-control" placeholder="Enter user name" name="emailId">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" placeholder="Enter password" name="password">
    </div>
    
    <button type="submit" class="btn btn-primary">Submit</button>
    <button type="reset" class="btn btn-danger">Reset</button>
     
     
  </form>
</div>
	




</body>
</html>