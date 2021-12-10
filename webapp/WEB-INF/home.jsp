<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Dojos and Ninjas</title>
</head>
<body>
	<div class="container" style="margin-top:25px">
		<h1 class="shadow p-3 mb-5 bg-body rounded text-light" style="background:pink">Dojos and Ninjas</h1>
		<a href="/newNinja"><button class="btn btn-primary">Add a Ninja</button></a>
		<a href="/newDojo"><button class="btn btn-primary">Add a Dojo</button></a>
		<div style="margin-top:15px">
		 	<table class="table">
		 		<thead>	
		 			<tr>
		 				<th scope="col">Dojo Name</th>
		 				<th scope="col">Number of Students</th>
		 			</tr>		 		
		 		</thead>
		 		<tbody>
		 		<c:forEach items="${dojos }" var="dojo">
		 			<tr>
		 				<td><a href="/${dojo.id }/ShowOne"><c:out value="${dojo.name }"/></a></td>
		 				<td><c:out value="${dojo.ninja.size() }"/></td>					 				
	 				</tr> 		
		 		</c:forEach>
		 		</tbody>
		 	</table>
		</div>
	
	</div>

</body>
</html>