<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Add a Ninja</title>
</head>
<body>
	<div class="container"  style="margin-top:20px">
		<div class=" d-flex justify-content-between">
			<h1 class="shadow p-3 mb-5 bg-body rounded text-light" style="background:pink">New Dojo</h1> 
			<a href="/"><button class="btn btn-primary">Home</button></a>
		</div>
			<div class="form-group">
			<form:form action="/newNinja" method="post" modelAttribute="ninja">
			   <p>
				   	<form:label path="dojo" class="text-info">Dojo:</form:label>
				    <form:errors path="dojo" class="text-danger"/>
				    <form:select path="dojo">
				       	<c:forEach items="${alldojos }" var="dojo">
					       	<form:option value="${dojo.id}">${dojo.name }</form:option>
				       	</c:forEach>
				     </form:select>
				 <p>
			       <form:label path="first_name" class="text-info">First Name:</form:label>
			       <form:errors path="first_name" class="text-danger"/>
			       <form:input path="first_name" class="form-control"/>
			   </p>
			   <p>
			       <form:label path="last_name" class="text-info">Last Name:</form:label>
			       <form:errors path="last_name" class="text-danger"/>
			       <form:input path="last_name" class="form-control"/>
			   </p>
			   <p>
			       <form:label path="age" class="text-info">Age:</form:label>
			       <form:errors path="age" class="text-danger"/>
			       <form:input  path="age" class="form-control"/>
			   </p>
			   <input type="submit" class="btn btn-outline-info">
			</form:form> 
		</div>   
		</div>   
	
		
		
	
	</div>

</body>
</html>