<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title> <c:out value="${dojo.name }"/> Dojo</title>
</head>
<body>
	<div class="container" style="margin-top:25px">
		<h1 class="shadow p-3 mb-5 bg-body rounded text-light" style="background:pink"> <c:out value="${dojo.name }"/> Location Ninjas</h1>
			<div>
				<table class="table">
					<thead>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Age</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${dojo.ninja}" var="ninja">
							<tr>
							 	<td><c:out value="${ninja.first_name }"/></td>
								<td><c:out value="${ninja.last_name }"/></td>
								<td><c:out value="${ninja.age }"/></td>
							</tr>
						
						</c:forEach>
					
					</tbody>
				
				
				</table>
			</div>
		
		
		
		
		<a href="/"><button class="btn btn-primary">Home</button></a>
	</div>
	

</body>
</html>