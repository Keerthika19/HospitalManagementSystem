<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient ID</title>
<body>
	<form action="checkPatientId">
		<label>Enter the Patient ID</label><br> 
		<input type="text" name="patientId" autofocus="true" required="true"
			placeholder="Patient ID" pattern="[0-9]+" title="Enter a valid Id" /><br>
			<input type="submit" name="Submit" value="Submit" /> 

	</form>
</body>
</html>