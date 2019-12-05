<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> --%>
<%-- <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> --%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Added Patient</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style type="text/css">
</style>
</head>
<body>
<div class="jumbotron">Successfully added patient</div>
<table class="table table-striped">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>PatientId</th><tr>
<tr>
        <td>${PatientBean.firstName}</td>
        <td>${PatientBean.lastName}</td>
        <td>${PatientBean.patientId}</td>
    </tr>

</table>

</body>
</html>