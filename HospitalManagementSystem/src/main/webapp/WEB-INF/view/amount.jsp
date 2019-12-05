<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<script type="text/javascript">
	function payment() {
		document.getElementById("cardNo").disabled = true;
	}
	function payment1() {
		document.getElementById("cardNo").disabled = false;
	}
</script>
</head>
<body>
	<form action="/savebill" modelAttribute="details" method="post">
		<div class="header">
			<h1>Bill Details</h1>
		</div>
		<div class="body">
		
		<br>
		<label>Patient Id</label><br>
		<input type="text" name="patientId"
					value="${details.patientId}" readonly="readonly" />
					
		<label>Diagnosis Id</label><br>
		<input type="text" name="diagnosisId"
					value="${details.diagnosisId}" readonly="readonly" />
					
					<label>Symptoms of the patient</label><br>
			<input type="text" name="symptoms" value="${details.symptoms}" />
			
			<br> <label>Diagnosis Details</label><br>
			<input type="text" name="diagnosis"  value="${details.diagnosis}"/>
					
					<label>Administrator</label><br>					
		<input type="text" name="administrator"
					value="${details.administrator}" readonly="readonly" />
					 <label>Date of Diagnosis</label><br>
			<input type="date" name="dateOfDiagnosis" value="${details.dateOfDiagnosis}" readonly="readonly" />
			
			<label>Is Follow Up needed?</label><br> <input
					type="text" name="followUp" value="${details.followUp}" readonly="readonly">
					
					<label>Date of Follow Up</label><br>
			<input type="text" name="dateOfFollowUp" value="${details.dateOfFollowUp}" readonly="readonly"/>
			
			<label>Bill Amount</label><br> 
			<input type="text"
				name="billAmount" autofocus="true" required="true" />
				 
				 <label>Payment	Mode</label><br> 
				 <select name="modeOfPayment"
				placeholder="Mode of Payment" onchange="payment1()">
					<!-- <option disabled="disabled">Payment Mode</option> -->
					<option value="Cash" onclick="payment()">Cash</option>
					<option value="Card" onclick="payment1()">Card</option>
			</select> 
			<label>Card Number</label><br>
		
			<input type="text" name="cardNo" id="cardNo" disabled="true" />
			</div>
		<div class="footer">
			<input type="submit" value="Submit" /> <input type="reset"
				value="Reset" />
		</div>
	</form>
</body>
</html>