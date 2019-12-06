<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Diagnosis</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<h3 align="center">Details Saved Successfully!!</h3>
<table class="table table-striped">
<tr><th>Patient ID</th>
<th>Diagnosis Id</th><th colspan="1" rowspan="1">Administrator</th>
<th>Mode of Payment</th>
<th>Bill Amount</th></tr>
<tr><td><b>${details.patientId}</b></td>
<td>${details.diagnosisId}</td>
<td>${details.administrator}</td>
<td>${details.modeOfPayment}</td>
<td>${details.billAmount}</td></tr>
</table>
<br>
<a href="firstpage" align="center">Home</a>
</body>
</html>