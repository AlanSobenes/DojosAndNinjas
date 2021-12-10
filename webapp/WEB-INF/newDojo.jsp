<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Add a Dojo</title>
</head>
<body>
	<div class="container"  style="margin-top:20px">
		<div class=" d-flex justify-content-between">
			<h1 class="shadow p-3 mb-5 bg-body rounded text-light" style="background:pink">New Dojo</h1> 
			<a href="/"><button class="btn btn-primary">Home</button></a>
		</div>
			<div class="form-group">
			<form:form action="/createDojo" method="post" modelAttribute="dojo">
			   <p>
			       <form:label path="name" class="text-info">Name</form:label>
			       <form:errors path="name" class="text-danger"/>
			       <form:input path="name" class="form-control"/>
			   </p>
			   <input type="submit" class="btn btn-outline-info">
			</form:form> 
		</div>   
	
		
		
	
	</div>

</body>
</html>