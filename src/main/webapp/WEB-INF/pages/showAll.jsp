<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>congratulation page </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>


</head>
<body>
 
<div class="container">
 
    <h4> ${message} </h4>   
   
  <table class="table table-hover">
    <thead>
      <tr bgcolor="yellow">
        <th>Employee Id</th>
        <th>Employee Name</th>
        <th>Email Id</th>
        <th>Password</th>
         <th>Salary</th>
         <th colspan=2>Delete/Edit Operation</th>
       
      </tr>
     
    </thead>
    <tbody>
      	<c:forEach var="tempVar" items="${employeeDtoList}" >
			<tr bgcolor="pink">
				<td>${tempVar.employeeId}</td>
        		<td>${tempVar.employeeName}</td>
        		<td>${tempVar.emailId}</td>
        		<td>${tempVar.password}</td>
        		<td>${tempVar.salary}</td>
        		<td><a href="deleteEmployee?employeeId=${tempVar.employeeId}"><button type="button" class="btn btn-danger"><img src="images/delete.jpg" alt="delete image" style="height:30px;weidth:30px"></button></a></td>
        		<td><a href="updateEmployee?employeeId=${tempVar.employeeId}"><button type="button" class="btn btn-success"><img src="images/edit.jpg" alt="edit image" style="height:30px;weidth:30px"></button></a></td>
        		
			</tr>
	  </c:forEach>
   </tbody>
  </table>
  
</div>
</body>
</html>