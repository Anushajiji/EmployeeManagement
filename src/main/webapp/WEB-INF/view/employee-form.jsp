<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Form</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/stylee.css">
</head>
<body>

	<h1 align="center" >Add Employee Details</h1>
	
	<div style="  background-color: #F3EBF6;height:25px;">	
		
	<input type="button" value="Employee List"
		onclick="window.location.href = 'list'; return false;"
		class="add-button" style="margin-left:1000px;" />
		<input type="button" value="Logout"
		onclick="window.location.href = 'logout'; return false;"
		class="add-button" />
	</div>
	<br>
		<br>
		<br>
	<div class="tab">
	<form:form action="addEmployee" modelAttribute="employee"
		method="POST">
		
	<table>
		<tr>
			<td>Employee Id:</td>
			<td>
				<form:input path="employee_id"/>
				<form:errors path="employee_id" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>First Name:</td>
			<td>
				<form:input path="first_name"/>
				<form:errors path="first_name" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td><form:input path="last_name"/>
				<form:errors path="last_name" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Gender:</td>
			<td><form:radiobutton path="gender" value="Male" />Male
				<form:radiobutton  path="gender" value="Female"/>Female
				<form:radiobutton  path="gender" value="Other"/>Other
				<form:errors path="gender" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Contact No:</td>
			<td><form:input path="contact_no"/>
				<form:errors path="contact_no" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Email:</td>
			<td><form:input path="email"/>
				<form:errors path="email" cssClass="error"/>
			</td>
		</tr>
		<tr>
			<td>Age:</td><td><form:input path="age"/>
			<form:errors path="age" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Manager Id:</td><td><form:input path="manager_id"/>
			<form:errors path="manager_id" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Business Unit:</td><td><form:input path="business_unit"/>
			<form:errors path="business_unit" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Job Title:</td><td><form:input path="job_title"/>
			<form:errors path="job_title" cssClass="error"/></td>
			</tr>
		<tr>
			<td>Salary:</td><td><form:input path="salary"/>
			<form:errors path="salary" cssClass="error"/></td>
		</tr>
		<tr>
			<td>Date of Joining:</td><td><form:input type="date" path="date_of_joining"/>
			<form:errors path="date_of_joining" cssClass="error"/></td>
		</tr>
	</table>	
	<input type="submit" value="Save" class="button"/>
	<input type="reset" value="Reset" class="button"/>
	
	</form:form>
	</div>
	
</body>
</html>