<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Languages</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="css/index.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<div class="container pt-3">
		<table class="table table-hover">
			<tr>
				<th>Name</th>
				<th>Creator</th>
				<th>Version</th>
				<th>Action</th>
			</tr>
			<c:forEach var="language" items="${languages}">
				<tr>
					<td><a href="languages/${language.id}"><c:out value="${language.name}" /></a></td>
					<td><c:out value="${language.creator}" /></td>
					<td><c:out value="${language.currentVersion}" /></td>
					<td><form:form action="/languages/${language.id}" method="delete"><input type="submit" class="btn btn-link" value="Delete"/><a href="languages/${language.id}/edit" class="btn btn-link">Edit</a></form:form></td>
				</tr>
			</c:forEach>
		</table>
		<form:form action="/languages" method="post" modelAttribute="language">
			<p class="form-group">
				<form:label path="name">Name</form:label>
				<form:input path="name" class="form-control"/>
				<form:errors path="name" />
			<p>
			<p class="form-group">
				<form:label path="creator">Creator</form:label>
				<form:input path="creator" class="form-control"/>
				<form:errors path="creator"/>
			</p>
			<p class="form-group">
				<form:label path="currentVersion">Current Version</form:label>
				<form:input path="currentVersion" class="form-control"/>
				<form:errors path="currentVersion"/>
			</p>
			<input type="submit" value="Submit" class="btn btn-outline-primary"/>
		</form:form>
	</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>