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
<body>
	<div class="jumbotron">Sucessfully added Physician</div>
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
</body>
</html>