<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Nueva Idea</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
	<div style="    margin: 0px auto;
    width: 1200px;
    text-align: center;
    padding-top: 100px;">
	<h1 class="h3 mb-3 font-weight-normal">New Idea</h1>

	<p>
		<form:errors path="idea.*" />
	</p>
	<form:form method="POST" action="/ideas/new" modelAttribute="idea">
		<p>
			<form:label path="title">Title:</form:label>
			<form:input type="title" path="title"  class="form-control" />
		</p>
		<input type="submit" value="Create" class="btn btn-lg btn-primary "/>
	</form:form>
	</div>
</body>
</html>