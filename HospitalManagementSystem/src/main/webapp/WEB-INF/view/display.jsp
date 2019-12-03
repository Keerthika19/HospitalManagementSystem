<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Diagnosis</title>
</head>
<body>
<h3 align="center">Details Saved Successfully!!</h3>
<table border=1 align="center">
<tr><th colspan="1" rowspan="1">Patient ID</th>
<th colspan="1" rowspan="1">Diagnosis Id</th><th colspan="1" rowspan="1">Administrator</th>
<th colspan="1" rowspan="1">Mode of Payment</th>
<th colspan="1" rowspan="1">Bill Amount</th></tr>
<tr><td colspan="1" rowspan="1">${details.patientId}</td>
<td colspan="1" rowspan="1">${details.diagnosisId}</td>
<td colspan="1" rowspan="1">${details.administrator}</td>
<td colspan="1" rowspan="1">${details.modeOfPayment}</td>
<td colspan="1" rowspan="1">${details.billAmount}</td></tr>
</table>
<br>
<a href="diagnosis.jsp" align="center">Home</a>
</body>
</html>