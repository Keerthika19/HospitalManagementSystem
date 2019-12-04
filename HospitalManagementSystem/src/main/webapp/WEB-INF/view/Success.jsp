<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<h2>sucessfully added Physician</h2>
<table border="2" style="width:100%">
<tr>
<th>First Name</th>
<th>Last Name</th>
<th>PhysicianId</th><tr>


<tr>
        <td>${details.firstName}</td>
        <td>${details.lastName}</td>
        <td>${details.physicianId}</td>
        
    </tr>

</table>
</body>
</html>