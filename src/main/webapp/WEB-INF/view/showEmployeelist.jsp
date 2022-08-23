<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Employee information</title>
</head>
<body>

	<div class="container">
		<div class="text-center">
			<h1>make it sure your application  Employee </h1>
			${empDto}
		</div>
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
		
		
		 
      </tr>
     </c:forEach> 
    </tbody>
 
			</tbody>
		</table>
	</div>
</body>
</html>