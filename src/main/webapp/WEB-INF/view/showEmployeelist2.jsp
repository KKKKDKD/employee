<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>response page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="container">

  <table class="table table-hover">
    <thead>
      <tr bgcolor="yellow">
  	           <th>employeeId</th>
				<th>employeeName</th>
				<th>salary</th>
				<th>gender</th>
				<th>emailId</th>
				<th>password</th>
				<th>image</th>
        <th colspan=2>Edit/Delete operation </th>
        
      </tr>
    </thead>
    <tbody>
  
    <c:forEach items="${empDto}" var="list">
      <tr bgcolor="pink">
                    <td>${list.employeeId}</td>
						<td>${list.employeeName }</td>
						<td>${list.salary }</td>
						<td>${list.gender}</td>
						<td>${list.emailId }</td>
						<td>${list.password}</td>
					  <td>

				
		 <td>
         <img alt="" src="${list.getImage()}"style="height: 120px;">
          </td>
		
	
        
	
		<td>
		<a href="deleteEmp?employeeId=${list.employeeId}">
		<button type="button" class="btn btn-danger">
		<img alt="delete operation" src="img/delete.jpg" style="height:30px"></button> </a></td>
		<td>
		<td><a href="editEmp?employeeId=${list.employeeId}">
		<button type="button" class="btn btn-primary">
		<img alt="edit operation" src="img/edit.png" style="height:30px"> </button></td> 
		
		   <a href="editEmp?employeeId=${list.employeeId}">
           <button type="button" class="btn btn-danger">D</button>
            </a>
      </tr>
     </c:forEach> 
    </tbody>
 
			</tbody>
		</table>
</div>

</body>
</html>