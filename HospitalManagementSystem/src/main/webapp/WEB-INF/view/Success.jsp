<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Added Physician</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style>
div {
	background-color: lightgreen;
	color: white;
	text-align: center;
	font-weight: bold;
	font-size: 20px;
width: 40%;
padding: 30px;
margin-top: 5%;
margin-left: 30%;
margin-right: 30%;
}
</style>
<body>
	<div>Sucessfully added Physician</div>
	<table class="table table-striped">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>PhysicianId</th>
		<tr>
		<tr>
			<td>${details.firstName}</td>
			<td>${details.lastName}</td>
			<td>${details.physicianId}</td>

		</tr>

	</table>
	<a href="/" align="center">Home</a>
</body>
</html>