<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
.add-button {
	border: 1px solid #666; 
	
	padding: 4px; 
	font-size: 12px;
	font-weight: bold;
	width: 120px; 
	padding: 5px 10px; 
	font-family: 'Ubuntu', sans-serif;
	border-radius: 1.5em;
    box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);
	margin-bottom: 15px;
	background: #d9d3db;
	 cursor: pointer;
        border-radius: 5em;
        color: #fff;
        background: linear-gradient(to right, #9C27B0, #E040FB);
}
.new-button{
border: 1px solid #666; 
	border-radius: 5px; 
	padding: 4px; 
	font-size: 12px;
	font-weight: bold;
	width: 100px; 
	padding: 5px 10px; 
	font-family: 'Ubuntu', sans-serif;
	margin-bottom: 3px;
	background: #F3EBF6;
	 cursor: pointer;
        border-radius: 5em;
        color:black;
        background: linear-gradient(to right, #F3EBF6,  #F3EBF6);
}
table{
	
	border-collapse:collapse;
	
	 
	 border:1px solid #cccac6;
	 font-family: 'Roboto', sans-serif;
	}
th, td {
  padding: 5px;
  border-collapse:collapse;
	
	border:1px solid #cccac6;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="  background-color: #F3EBF6;" >
	<div id="wrapper">
		<div id="header">
			<h1 align="center" style="font-family: 'Roboto', sans-serif;
    color: #8C55AA;">EMPLOYEE LIST</h1>
		</div>
	</div>
	<div style="  background-color: #F3EBF6;height:25px;">
	<form method="post" action="search">
	<input type="number" name="id" placeholder="search by employee id"  style="margin-left:767px; border-radius: 20px;
    outline: none;
    box-sizing: border-box;
    border: 2px solid beige;width:200px;height:30px;">
	<button type="submit" class="add-button">Search</button>
	
	<input type="button" value="Add Employee"
		onclick="window.location.href = 'addEmployee'; return false;"
		class="add-button"  />
		<input type="button" value="Logout"
		onclick="window.location.href = 'logout'; return false;"
		class="add-button" />
		</form>
		</div>
	<br>
	<table style=" background-color: #FFFFFF;   
    border-spacing: 10px;
        
        box-shadow: 0px 11px 35px 2px rgba(0, 0, 0, 0.14);">
		<tr>
			<td>EMP ID</td>
			<td>FIRST NAME</td>
			<td>LAST NAME</td>
			<td>EMAIL ID</td>
			<td>CONTACT NUMBER</td>
			<td>GENDER</td>
			<td>AGE</td>
			<td>BUSINESS UNIT</td>
			<td>MANAGER ID</td>
			<td>JOB TITLE</td>
			<td>DATE OF JOINING</td>
			<td>SALARY</td>
			<td>ACTION</td>
		</tr>
		<c:forEach var="te" items="${employee}">
			<!-- update link -->
			<c:url var="updateLink" value="/employee/showFormForUpdate">
				<c:param name="id" value="${te.employee_id}" />
			</c:url>
			<c:url var="deleteLink" value="/employee/showFormForDelete">
				<c:param name="id" value="${te.employee_id}" />
			</c:url>
			<tr>
				<td>${te.employee_id}</td>
				<td>${te.first_name}</td>
				<td>${te.last_name}</td>
				<td>${te.email}</td>
				<td>${te.contact_no}</td>
				<td>${te.gender}</td>
				<td>${te.age}</td>
				<td>${te.business_unit}</td>
				<td>${te.manager_id}</td>
				<td>${te.job_title}</td>
				<td>${te.date_of_joining}</td>
				<td>${te.salary}</td>
				
				<td><input type="button" value="Update"
		onclick="window.location.href ='${updateLink}'; return false;"
		class="new-button" /><br>
		<input type="button" value="Delete" onclick="window.location.href ='${deleteLink}'; return false;"
		class="new-button" />
			</tr>
		</c:forEach>
	</table>
</body>
</html>