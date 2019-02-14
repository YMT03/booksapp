<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url value="/books/save" var="saveURL"></spring:url>
<spring:url value="/resources/img" var="imagesURL"></spring:url>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../static/include.jsp" />
<title>Libros</title>
</head>
<body>
	<jsp:include page="../static/header.jsp" />
	<div class="container" role="main">

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
		<form:form action="${ saveURL }" method="POST" modelAttribute="book"
			class="mt-3 form-group row">
			<form:hidden path="id" />
			<div class="col-3">
				<img alt="${book.title}" src="${ imagesURL }/${book.image}"> <input
					type="file" id="files" style="display: none;" /> <label for="files"
					class="btn btn-primary" id="upload-img-btn"> <i
					class="fas fa-cloud-upload-alt"></i>
					Modificar Imagen
				</label> 
				</div>
			<div class="col-9">
				<div class="row">
					<div class="col-9">
						<form:label path="title">Titulo</form:label>
						<form:input path="title" class="form-control" />
					</div>
					<div class="col-3">
						<form:label path="publicationDate">Fecha de Publicacion</form:label>
						<form:input path="publicationDate" class="form-control" />
					</div>
				</div>
				<div class="row">
					<div class="col-6">
						<form:label path="authorId">Autor</form:label>

						<form:select path="authorId" class="form-control">
							<option disabled selected value>Seleccione un autor</option>
							<form:options items="${authors}" itemValue="id" />
						</form:select>
					</div>
					<div class="col-6">
						<form:label path="publisherId">Editorial</form:label>
						<form:select path="publisherId" class="form-control">
							<option disabled selected value>Seleccione una editorial</option>
							<form:options items="${publishers}" itemValue="id" />
						</form:select>
					</div>
				</div>



				<form:label path="genresIds">Generos</form:label>
				<form:select multiple="true" path="genresIds" class="form-control">
					<option disabled selected value>Seleccione los generos</option>
					<form:options items="${genres}" itemValue="id" />
				</form:select>
				<form:label path="synopsis">Sinopsis</form:label>
				<form:textarea path="synopsis" class="form-control" rows="6" />

				<input type="submit" value="Aceptar" class="btn btn-primary" />
			</div>


		</form:form>
		<!-- FIN FORM -->

	</div>

</body>
</html>