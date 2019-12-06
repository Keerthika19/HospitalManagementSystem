<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient History</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<h1>Diagnosis Details!!!</h1>
	<table class="table">
	<tr><td>First Name</td><td>${patient.firstName}</td></tr>
		<tr>	<td>Last Name</td><td>${patient.lastName}</td></tr>
			<tr><td>Mobile Number</td><td>${patient.contactNumber}</td></tr>
		<tr><td>Email</td><td>${patient.email}</td></tr>
		<tr><td>Patient Id</td><td>${patient.patientId}</td></tr>
	</table>
	<table class="table table-striped">

		<tr class="info">
			<th>Diagnosis Id</th>
			
			<th>Symptom</th>
			<th>Diagnosis Provided</th>
			<th>Administered By</th>
			<th>Date of Diagnosis</th>
			<th>Follow Up</th>
			<th>Date of Follow Up</th>
			<th>Bill Amount</th>
			<th>Card No</th>
			<th>Mode Of Payment</th>
		</tr>
		<c:forEach var="list" items="${listdiagnosis}" >
			<tr>
				<td><c:out value="${list.diagnosisId}" /></td>
				<td><c:out value="${list.symptoms}" /></td>
				<td><c:out value="${list.diagnosis}" /></td>
				<td><c:out value="${list.administrator}" /></td>
				<td><c:out value="${list.dateOfDiagnosis}" /></td>
				<td><c:out value="${list.followUp}" /></td>
				<td><c:out value="${list.dateOfFollowUp}" /></td>
				<td><c:out value="${list.billAmount}" /></td>
				<td><c:out value="${list.cardNo}" /></td>
				<td><c:out value="${list.modeOfPayment}" /></td>
			</tr>
		</c:forEach>
	</table>
	<a href="firstpage" align="center">Home</a>
</body>
</html>