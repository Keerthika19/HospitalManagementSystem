<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
<style>
table, td, th {
  border: 1px solid black;
  Text-align: center;
}
table {
border-collapse: collapse;
  width: 60%;
}
th {
  height: 50px;
}
h1{
Text-align: center;
}
</style>
</head>
<body>
<a  href="/" >Home</a>
<h1> Physician Details</h1>
<table border=1 align="center">
<tr><th>PhysicianId</th><th>FirstName</th><th>LastName</th><th>Department</th><th>EducationalQualication</th><th>YOP</th><th>State</th><th>InsurancePlan</th></tr>
<c:forEach var="display" items="${physiciandetail}">

<tr>

<td><c:out value="${display.physicianId}"></c:out></td>
<td><c:out value="${display.firstName}"></c:out></td>
<td><c:out value="${display.lastName}" ></c:out></td>
<td><c:out value="${display.departmentName}"></c:out></td>
<td><c:out value="${display.educationalQualification}" ></c:out></td>
<td><c:out value="${display.yearsOfExperience}" ></c:out></td>
<td><c:out value="${display.state}" ></c:out></td>
<td><c:out value="${display.insurancePlan}" ></c:out></td>

</tr>

</c:forEach>
</table>
<a href="/">Home</a>
</body>
</html>