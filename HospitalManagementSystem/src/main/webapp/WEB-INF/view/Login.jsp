<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Physician</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
/* {
margin-left: 30%;
margin-right: 30%;
padding: 1px;
} */
.header {
	background-color: skyblue;
	color: white;
	text-align: center;
	font-weight: bold;
	font-size: 20px;
	margin-left: 30%;
	margin-right: 30%;
	padding: 1px;
}
.body {
	background-color: lightgray;
	margin-left: 30%;
	margin-right: 30%;
	padding: 1px;
}
.footer {
	background-color: skyblue;
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
	margin: 2%;
}
input[type="radio"] {
	width: 5%;
}
input[type="submit"], input[type="reset"] {
	width: 45%;
}
</style>


</head>
<body>
	<div class="header">
		<h1>Physician Form</h1>
	</div>
	<form action="/addPhysician" modelAttribute="details">
		<div class="body">

			<label>First Name</label> <input type="text" name="firstName" placeholder="FirstName"
				required="true" pattern="[A-Za-z]{1,15}"
				title="Name should only contain Alphabets" /><br> 
				<label>LastName</label> <input type="text" name="lastName" placeholder="LastName" required="true"
				pattern="[A-Za-z]{1,15}" title="Name should only contain Alphabets" /><br>
			
			<label>Department Name</label>
			<!-- <input type="text" name="departmentName"/></br> -->
			 <select name="departmentName">
			   <option value="General">General</option>
				<option value="Urology">Urology</option>
				<option value="Neurology">Neurology</option>
				<option value="Oncology">Oncology</option>
				<option value="Cardiology">Cardiology</option>
				<option value="Gynecology">Gynecology</option>
				<option value="Dental">Dental</option>
				<option value="Gastroentrology">Gastroentrology</option>
				
		 </select><br> 
			
			<label>Educational Qualification</label> <input type="text"
				name="educationQualification" placeholder="EducationalQualification" required="true" pattern="[A-Za-z ]*$"
				title="Name should only contain Alphabets" /> <label>Years
				of Experience</label> <input type="text" name="yearsOfExp" placeholder="yearsOfExperience" required="true"
				pattern="[0-9]" title="years should only contain Numbers" /><br>
			<label> State</label> <select name="state">
				<option value="TamilNadu">TamilNadu</option>
				<option value="Kerala">Kerala</option>
				<option value="Karanataka">Karanataka</option>
				<option value="Andra Pradesh">Andra Pradesh</option>
				<option value="uttar Pradesh">uttar Pradesh</option>
				<option value="Madhaya Pradesh">Madhaya Pradesh</option>
				<option value="Maharashtra">Maharashtra</option>
			</select><br> 
			<label>InsurancePlan:</label> <select name="insurancePlan">
				<option value="Bharti AXA Health Insurance">Bharti AXA
					Health Insurance</option>
				<option value="HDFC ERGO Health Insurance">HDFC ERGO Health
					Insurance</option>
				<option value="National Health Insurance">National Health
					Insurance</option>

				<option value="Royal Sundaram Health Insurance">Royal
					Sundaram Health Insurance</option>

				<option value="Universal Sompo General Health Insurance">Universal
					Sompo General Health Insurance</option>

				<option value="Religare Health Insurance">Religare Health
					Insurance</option>

				<option value="Star Health Insurance">Star Health Insurance</option>



			</select> <input type="submit" value="Register" /> <input type="Reset"
				name="Reset" value="Reset">
		</div>
	</form>
</body>
</html>