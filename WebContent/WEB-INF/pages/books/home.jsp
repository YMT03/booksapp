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
		<h3>Listado de Libros</h3>
		<c:if test="${mensaje!=null}">
			<div class="alert alert-success" role="alert">${mensaje}</div>
		</c:if>

		<button type="button" class="btn btn-primary" data-toggle="modal"
			data-target="#authorMordal">Nueva</button>
	
		<div class="table-responsive">
			<table class="table table-hover table-striped table-bordered">
				<tr>
					<th>Titulo</th>
					<th>Genero</th>
					<th>Rating</th>
					<th>Editorial</th>
					<th>Fecha Estreno</th>
					<th>Estado</th>
					<th>Opciones</th>
				</tr>
				<c:forEach items="${books}" var="bookItem">
					<tr>
						<td>${bookItem.title}</td>
						<td><c:forEach items="${ bookItem.genre }" var="genre">
						${genre.name} 
						</c:forEach></td>
						<td>${bookItem.rating}</td>
						<td>${bookItem.publisher.name}</td>
						<td>${bookItem.publicationDate}</td>
						<c:choose>
							<c:when test="${bookItem.state=='Activo' }">
								<td><span class="label label-success">${bookItem.state}</span></td>
							</c:when>
							<c:otherwise>
								<td><span class="label label-danger">${bookItem.state}</span></td>
							</c:otherwise>
						</c:choose>

						<td><a href="/app/books/edit?id=${bookItem.id}"><i
								class="fas fa-edit"></i></a> <a
							href="/app/books/remove?id=${bookItem.id}"><i
								class="fas fa-trash-alt"></i></span></a></td>
					</tr>
				</c:forEach>

			</table>
		</div>

		<hr class="featurette-divider">

	</div>

</body>
</html>