<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url value="/books/save" var="saveURL"></spring:url>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../static/include.jsp" />
<title>Libros</title>
</head>
<body>
	<jsp:include page="../static/header.jsp" />
	<div class="container theme-showcase" role="main">

		<br> <br>
		<h3>Libro</h3>
		<!-- ERRORES FORM -->
		<c:if test="${errorMsgs!=null}">
			<div class="alert alert-warning" role="alert">
				<ul class="notificationUL">
					<c:forEach items="${ errorMsgs }" var="errorMsg">
						<li>${ errorMsg }</li>
					</c:forEach>
				</ul>
			</div>
		</c:if>
		<!-- /ERRORES FORM -->
		<!-- FORM -->
		<form:form action="${ saveURL }" method="POST" modelAttribute="book">
			<form:hidden path="id" />
			<form:label path="title">Titulo</form:label>
			<form:input path="title" />
			<form:label path="authorId">Autor</form:label>
			
			<form:select path="authorId">
				<option disabled selected value> Seleccione un autor </option>
				<form:options items="${authors}" itemValue="id" />
			</form:select>
			<form:label path="publisherId">Editorial</form:label>
			<form:select path="publisherId">
				<option disabled selected value> Seleccione una editorial </option>
				<form:options items="${publishers}" itemValue="id" />
			</form:select>
			<form:label path="genresIds">Generos</form:label>
			<form:select multiple="true" path="genresIds">
				<option disabled selected value> Seleccione los generos </option>
				<form:options items="${genres}" itemValue="id" />
			</form:select>
			<form:label path="price">Precio</form:label>
			<form:input path="price" />
			<form:label path="synopsis">Sinopsis</form:label>
			<form:input path="synopsis" />
			<form:label path="publicationDate">Fecha de Publicacion</form:label>
			<form:input path="publicationDate" />
			<input type="submit" value="Aceptar" />
		</form:form>
		<!-- FIN FORM -->

	</div>

</body>
</html>