<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient ID</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
  .header {
	background-color: skyblue;
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

.body {
	background-color: gray;
	margin-left: 30%;
	margin-right: 30%;
	padding: 1px;
}

.footer {
	background-color: gray;
	margin-left: 30%;
	margin-right: 30%;
	padding: 1px;
}

input, select {
	margin: 2%;
	width: 95%;
	padding: 12px 20px;
	margin: 8px;
	box-sizing: border-box;
}

label {
	margin-left: 2%;
}

button {
align:"center";
background-color: skyblue;
	margin-left:25%;
	margin-right:25%;
	padding:2%;
	width: 50%;
}
  
  </style>
<body>
	<form action="checkPatientId">
		<div class="header">Enter the Patient ID</div>
		<div class="body"> 
		<input type="text" name="patientId" autofocus="true" required="true"
			placeholder="Patient ID" pattern="[0-9]+" title="Enter a valid Id" />
			</div>
			<div class="footer">
				<input type="submit" class="btn btn-info" value="Search ">
		</div>
	</form>
	<a href="firstpage" align="center">Home</a>
</body>
</html>