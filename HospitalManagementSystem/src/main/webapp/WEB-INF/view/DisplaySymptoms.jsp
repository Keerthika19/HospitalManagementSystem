<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Symptoms</title>
</head>
<body>
	<h1>Symptoms!!!</h1>


	<c:forEach var="list" items="${diagnosis}">
		<c:url value="/displayHistory" var="url">
			<c:param name="diagnosisid" value="${list.diagnosisId}" />
			<c:param name="symptom" value="${list.symptoms}" />
		</c:url>
		<li><a href="${url}"><c:out value="${list.symptoms}" /></a></li>
	</c:forEach>
</body>
</html>