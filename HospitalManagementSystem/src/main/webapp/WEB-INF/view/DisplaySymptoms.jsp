<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Symptoms</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<table class="table table-striped">
	<th><h3>Symptoms</h3></th>
	<c:forEach var="list" items="${diagnosis}">
		<c:url value="/displayHistory" var="url">
			<c:param name="patientid" value="${list.patientId}" />
			<c:param name="symptom" value="${list.symptoms}" />
		</c:url>
		<tr><td><a href="${url}"><c:out value="${list.symptoms}" /></a></td></tr>
	</c:forEach>
	</table>
	<a href="/" align="center">Home</a>
</body>
</html>