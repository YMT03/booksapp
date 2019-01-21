<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../static/include.jsp" />
<title>Libros</title>
</head>
<body>
	<jsp:include page="../static/header.jsp" />
	<div class="container theme-showcase" role="main"></div>
	<!-- Modal -->
	<div class="modal fade" id="modalConfirm" tabindex="-1" role="dialog"
		aria-labelledby="modalConfirmTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modalConfirmLongTitle">Eliminar
						libro</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					¿Esta seguro que quiere eliminar el libro seleccionado?<br> <i><br>
						<strong>Esta accion no se puede deshacer</strong> </i>
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