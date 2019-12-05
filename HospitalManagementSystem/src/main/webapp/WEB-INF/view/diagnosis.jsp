<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Diagnosis Details</title>
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

input[type="radio"] {
	width: 5%;
}

input[type="submit"], input[type="reset"] {
	width: 45%;
}

</style>
<script>
	function enable() {
		document.getElementById("followUpDate").disabled = false;
	}
	function disable() {
		document.getElementById("followUpDate").disabled = true;
	}
	function checkDate() {
		  var selectedDate = document.getElementById("diagnosisDate").value;
		   var now = new Date();
		   var date= selectedDate.split("-");
		   if ((date[0] == now.getFullYear() && date[1] == now.getMonth()+1 && date[2] > now.getDate())|| (date[0] == now.getFullYear() && date[1] > now.getMonth()+1) || date[0] > now.getFullYear()) {
			    alert("Diagnosis Date must be in the past");
			   }
		 }
	function checkDate2() {
		   var selectedDate = document.getElementById("followUpDate").value;
		   var now = new Date();
		   var date= selectedDate.split("-");
		   if ((date[0] == now.getFullYear() && (date[1] < now.getMonth()+1 || date[2] <= now.getDate())) || date[0] < now.getFullYear()) {
		    alert("Follow Up Date must be in the future");
		   }
		 }

</script>
</head>
<body>
	<div class="header">
		<h3>Patient Diagnosis Details</h3>
	</div>
	<form:form action="/savediagnosis" modelAttribute="details"
		method="post">


		<div class="body">
		<br>
			<label>Patient ID</label><br> <input type="text"
				name="patientId" autofocus="true" required="true" value="${details.patientId }" readonly="readonly"
				placeholder="Patient ID" pattern="[0-9]+" title="Enter a valid Id" /><br>

			<label>Symptoms of the patient</label><br>
			<form:input type="text" path="symptoms" required="true"
				placeholder="Symptoms" pattern="[a-zA-Z0-9 ]+"
				title="Do not use special characters" />
			<br> <label>Diagnosis Details</label><br>
			<form:input path="diagnosis" required="true"
				placeholder="Diagnosis Details" pattern="[a-zA-Z0-9 ]+"
				title="Do not use special characters" />
			<br> <label>Administrator Name</label><br>
			<form:select path="administrator" required="true">
				<form:option value="" disabled="disabled">Administrator name</form:option>
				<c:forEach var="list" items="${physicianList}">
				<form:option value="Dr.${list.firstName} ${list.lastName}">Dr.${list.firstName} ${list.lastName}</form:option>
				</c:forEach>
			</form:select>
			
			<br> <label>Date of Diagnosis</label><br>
			<form:input type="date" path="dateOfDiagnosis" id="diagnosisDate" required="true" onchange="checkDate()"
				placeholder="Date of Diagnosis" />
				
			<div>
				<label>Is Follow Up needed?</label><br> <br> <input
					type="radio" name="followUp" value="Yes" id="yes"
					onclick="enable()" /> Yes &nbsp<input type="radio" name="followUp"
					value="No" id="no" onclick="disable()" checked="checked"></input> No<br>
			</div>

			<label>Date of Follow Up</label><br>
			<form:input type="date" id="followUpDate" path="dateOfFollowUp" onchange="checkDate2()"
				disabled="true" placeholder="Date of Diagnosis" />
			<br>
			
		</div>
		<div class="footer">
			<input type="submit" name="Submit" value="Submit" /> <input
				type="reset" name="Reset" value="Reset" />

		</div>
	</form:form>
</body>
</html>
