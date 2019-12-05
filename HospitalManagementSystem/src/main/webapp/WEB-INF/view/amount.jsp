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
width=100%;
}
</style>
<script type="text/javascript">

function payment(){
	document.getElementById("cardNo").disabled=true;
}
function payment1(){
	document.getElementById("cardNo").disabled=false;
}
</script>
</head>
<body>
	<form action="/savebill" modelAttribute="details" method="post">
		<table align="center" class="table">
			<tr>
				<td colspan="1" rowspan="1">Patient ID</td>
				<td><input type="text" name="patientId"
					value="${details.patientId}" readonly="readonly" /></td>
			</tr>
			<tr>
				<td><b>Diagnosis ID</b></td>
				<td><input type="text" name="diagnosisId"
					value="${details.diagnosisId}" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>Symptoms</td>
				<td><input type="text" name="symptoms"
					value="${details.symptoms}" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>Diagnosis Details</td>
				<td><input name="diagnosis" value="${details.diagnosis}"
					readonly="readonly" /></td>
			</tr>
			<tr>
				<td>Administrator name</td>
				<td><input type="text" name="administrator"
					value="${details.administrator}" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>Date of diagnosis</td>
				<td><input type="text" name="dateOfDiagnosis"
					value="${details.dateOfDiagnosis}" readonly="readonly" /></td>

			</tr>
			<tr>
				<td colspan="1" rowspan="1">Is follow Up needed?</td>
				<td><input type="text" name="followUp"  value="${details.followUp}"/></td>
			</tr>
			<tr>
				<td>Follow Up date</td>
				<td><input type="text" name="dateOfFollowUp"
					value="${details.dateOfFollowUp}" readonly="readonly" /></td>
			</tr>
			<tr>
				<td>Bill Amount</td>
				<td><input type="text" name="billAmount" autofocus="true" required="true" /></td>
			</tr>
			<tr>
				<td>Payment Mode</td>
				<td><select name="modeOfPayment" placeholder="Mode of Payment" onchange="payment1()">
						<!-- <option disabled="disabled">Payment Mode</option> -->
						<option value="Cash" onclick="payment()">Cash</option>
						<option value="Card" onclick="payment1()">Card</option>
				</select></td>
			</tr>
			<tr>
				<td>Card Number</td>
				<td><input type="text" name="cardNo" id="cardNo" disabled="true" pattern="[0-9]{12}" title="Enter a valid 12 digit Card Number"/></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Submit" /> <input type="reset"
					value="Reset" /></td>
			</tr>
		</table>
	</form>
</body>
</html>