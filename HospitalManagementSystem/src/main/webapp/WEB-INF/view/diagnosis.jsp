<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Diagnosis Details</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
td{
height: 30px;
}
input{
height: 30px;
}
</style>
<script>
function enable(option){
	if(option.value==1){
		document.getElementById("date").innerHTML.disable="false";
	}
	else{
		document.getElementById("date").innerHTML.disable="true";
	}
}
function disable(){
	document.getElementById("date").disable=true;
}
</script>
</head>
<body >
<h3 align="center">Patient Diagnosis Details</h3>
	<form:form action="/savediagnosis" modelAttribute="details" method="post">
		<table align="center" class="table">
			<tr>
				<td>Enter the Patient ID</td>
				<td><input type="text" name="patientId" autofocus="true" required="true" placeholder="Patient ID"/></td>
			</tr>
			<tr>
				<td>Enter the Symptoms</td>
				<td><form:input type="text" path="symptoms" required="true" placeholder="Symptoms" pattern="[a-zA-Z0-9]+" title="Do not use special characters"/></td>
			</tr>
			<tr>
				<td>Enter the Diagnosis Details</td>
				<td><form:input path="diagnosis" required="true" placeholder="Diagnosis Details" pattern="[a-zA-Z0-9]+" title="Do not use special characters"/></td>
			</tr>
			<tr>
				<td>Enter the Administrator name</td>
				<td><form:select path="administrator" required="true">
				<form:option value="Dr.Ragu">Dr.Ragu</form:option>
				<form:option value="Dr.Shiva">Dr.Shiva</form:option>
				<form:option value="Dr.Karthik">Dr.Karthik</form:option>
				<form:option value="Dr.Mahesh">Dr.Mahesh</form:option>
				<form:option value="Dr.Indhira">Dr.Indhira</form:option>
				<form:option value="Dr.Raja">Dr.Raja</form:option>
				<form:option value="Dr.Keerthi">Dr.Keerthi</form:option>
				</form:select></td>
			</tr>
			<tr>
				<td>Enter the Date of diagnosis</td>
				<td><form:input type="date" path="dateOfDiagnosis" required="true"/></td>
				
			</tr>
			<tr>
				<td>Is follow Up needed?</td>
				<td><input type="radio" name="followUp" value="Yes" id="yes" onclick="enable(1)"/> Yes
					<input	type="radio" name="followUp" value="No" id="no" onchange="enable(0)"  ></input> No</td>
			</tr>
			<tr>
				<td>Follow Up date</td>
				<td><form:input type="date" id="date" path="dateOfFollowUp" disabled="" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" name="Submit" value="Submit"/>
					<input type="reset" name="Reset" value="Reset"/></td>
			</tr>
		</table>
	</form:form> 
</body>
</html>