<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>No Physician Found</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script>
  function submit(){
	  location.href="getPhysiciandetails";
  }
  </script>
  <style>
  div {
	background-color: lightgrey;
	color: black;
	text-align: center;
	font-weight: bold;
	font-size: 20px;
width: 40%;
padding: 30px;
margin-top: 5%;
margin-left: 30%;
margin-right: 30%;
}
button{
align: center;
}
</style>
</head>
<body>
<div ><b>No Such Physician Details Found!!</b></div>
<button type="submit" id="submit" onclick="submit()">Search Physician</button>
<body>
</html>