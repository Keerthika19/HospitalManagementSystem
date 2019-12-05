<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Search</title>
<style>

.header {
background-color: MediumSeaGreen;
color: white;
text-align: center;
width: 40%;
padding: 30px;
margin-top: 5%;
margin-left: 30%;
margin-right: 30%;
}

.content {
background-color: grey;
width: 40%;
margin-left: 30%;
padding: 1%;
margin-right: 30%;
}

.dropdown {
align: center;
width: 60%;
margin-left: 20%;
margin-right: 20%;
}

.option {
margin-left: 40%;
margin-right: 20%;
}

</style>
</head>
<body>
<form action="search" method="get">

<div class="header">
<h1>Find Your Doctor</h1>
</div>

<div class="content">
<div class="dropdown ">
<div class="form-group">
<select class="form-control" name="departmentName" required="true"
oninvalid="this.setCustomValidity('Please select a Department')"
oninput="setCustomValidity('')">
<option value="" disabled selected>Select the Department</option>
<option>General</option>
<option>Urology</option>
<option>Neurology</option>
<option>Oncology</option>
<option>Cardiology</option>
<option>Gynecology</option>
<option>Dental</option>
<option>Gastroentrology</option>
</select>
</div>
</div>
<div class="dropdown">
<div class="form-group">
<select class="form-control" name="state" required="true"
oninvalid="this.setCustomValidity('Please select a State')"
oninput="setCustomValidity('')">
<option value="" disabled selected>Select the State</option>
<option>Tamil nadu</option>
<option>Kerala</option>
<option>Karanataka</option>
<option>Andra Pradesh</option>
<option>uttra Pradesh</option>
<option>Madhaya Pradesh</option>
<option>Maharashtra</option>
</select>
</div>
</div>


<div class="dropdown">
<div class="form-group">
<select class="form-control" name="insurancePlan" required="true"
oninvalid="this.setCustomValidity('Please select a Insurance Plan')"
oninput="setCustomValidity('')">
<option value="" disabled selected>Select the Insurance
Plan</option>
<option>Bharti AXA Health Insurance</option>
<option>HDFC ERGO Health Insurance</option>
<option>National Health Insurance</option>
<option>Royal Sundaram Health Insurance</option>
<option>Universal Sompo General Health Insurance</option>
<option>Religare Health Insurance</option>
<option>Star Health Insurance</option>
</select>
</div>
</div>

<div class="option">
<input type="submit" class="btn btn-info" value="Search"> <input
type="reset" class="btn btn-info" value="Reset " >
</div>
</div>

</form>

</body>
</html>