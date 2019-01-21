<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url value="/publishers/edit" var="editURL"></spring:url>
<spring:url value="/publishers/remove" var="removeURL"></spring:url>
<spring:url value="/publishers/add" var="addURL"></spring:url>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../static/include.jsp" />
<title>Editoriales</title>
</head>
<body>
	<jsp:include page="../static/header.jsp" />
	<div class="container theme-showcase" role="main">

		<br> <br>
		<h3>Listado de Editoriales</h3>

		<!-- SUCCESS MSGS. WHEN CREATING A NEW PUBLISHER  -->
		<c:if test="${successMsgs!=null}">
			<div class="alert alert-success" role="alert">
				<ul class="notificationUL">
					<c:forEach items="${ successMsgs }" var="successMsg">
						<li>${ successMsg }</li>
					</c:forEach>
				</ul>
			</div>
		</c:if>
		<!-- /SUCCESS MSGS   -->

		<a href="${ addURL }"><button type="button"
				class="btn btn-primary">Nueva</button></a> <br>

		<div class="table-responsive">
			<table class="table table-hover table-striped table-bordered">
				<tr>
					<th>Nombre</th>
					<th>Opciones</th>
				</tr>
				<c:forEach items="${publishers}" var="publisher">
					<tr>
						<td>${publisher.name}</td>
						<td><a href="${ editURL }?id=${publisher.id}"><i
								class="fas fa-edit"></i></a> <a href="#"><i
								class="fas fa-trash-alt" data-toggle="modal"
								data-target="#modalConfirm"
								data-href="${ removeURL }?id=${publisher.id}"></i></a></td>
					</tr>
				</c:forEach>

			</table>
		</div>

	</div>
	<!-- Modal -->
	<div class="modal fade" id="modalConfirm" tabindex="-1" role="dialog"
		aria-labelledby="modalConfirmTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modalConfirmLongTitle">Eliminar
						editorial</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					¿Esta seguro que quiere eliminar la editorial seleccionada?<br>
					<i>Tambien se eliminaran los libros vinculados a la editorial.<br>
						<strong>Esta accion no se puede deshacer</strong>
					</i>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cancelar</button>
					<a id="dynamicLink"><button type="button"
							class="btn btn-primary">Confirmar</button></a>
				</div>
			</div>
		</div>
	</div>
	<!-- /Modal -->
	<jsp:include page="../static/footer.jsp" />
</body>
</html>