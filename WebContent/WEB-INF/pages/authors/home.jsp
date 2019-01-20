<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url value="/resources" var="urlPublic"></spring:url>
<spring:url value="/" var="urlRoot"></spring:url>
<spring:url value="/resources/img" var="urlImages"></spring:url>
<spring:url value="/resources/css" var="urlCss"></spring:url>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="vendor/jquery-validation/dist/jquery.validate.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<title>Libros</title>
</head>
<body>
	<jsp:include page="../static/header.jsp" />
	<div class="container theme-showcase" role="main">

		<br> <br>
		<h3>Listado de Autores</h3>
		<c:if test="${errores!=null}">
			<c:forEach items="${ errores }" var="error">
				<div class="alert alert-warning" role="alert">${error.code}</div>
			</c:forEach>

		</c:if>

		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#authorMordal">Nuevo</button>

		<!-- <a href="authors/add" class="btn btn-success" role="button"
			title="Nuevo Autor">Nuevo</a><br> -->
		<br>

		<div class="table-responsive">
			<table class="table table-hover table-striped table-bordered">
				<tr>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Opciones</th>
				</tr>
				<c:forEach items="${authors}" var="authorItem">
					<tr>
						<td>${authorItem.name}</td>
						<td>${authorItem.lastName}</td>
						<td>
							<a href="/app/authors/edit?id=${authorItem.id}"><i
								class="fas fa-edit"></i></a> <a href="/app/authors/remove?id=${authorItem.id}"><i
								class="fas fa-trash-alt"></i></span></a></td>
					</tr>
				</c:forEach>

			</table>
		</div>

	</div>

	<script src="/app/resources/js/form-validation.js"></script>
</body>
</html>