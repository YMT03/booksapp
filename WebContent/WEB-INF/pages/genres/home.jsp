<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url value="/genres/form" var="formURL"></spring:url>
<spring:url value="/genres/remove" var="removeURL"></spring:url>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../static/include.jsp" />
<title>Generos</title>
</head>
<body>
	<jsp:include page="../static/header.jsp" />
	<div class="container theme-showcase" role="main">

		<br> <br>
		<h3>Listado de Generos</h3>
		<!-- SUCCESS MSGS. WHEN CREATING A NEW GENRE  -->
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

		<a href="${ formURL }"><button type="button"
				class="btn btn-primary"">Nuevo</button></a><br>

		<div class="table-responsive">
			<table class="table table-hover table-striped table-bordered">
				<tr>
					<th>Nombre</th>
					<th>Opciones</th>
				</tr>
				<c:forEach items="${genres}" var="genre">
					<tr>
						<td>${genre.name}</td>
						<td><a href="${ formURL }?id=${genre.id}"><i
								class="fas fa-edit"></i></a> <a href="#"><i
								class="fas fa-trash-alt" data-toggle="modal"
								data-target="#modalConfirm"
								data-href="${ removeURL }?id=${genre.id}"></i></a></td>
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
						genero</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					¿Esta seguro que quiere eliminar el genero seleccionado?<br> <strong>Esta
						accion no se puede deshacer</strong> </i>
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