<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url value="/authors/save" var="saveURL"></spring:url>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../static/include.jsp" />
<title>Autores</title>
</head>
<body>
	<jsp:include page="../static/header.jsp" />
	<div class="container theme-showcase" role="main">

		<br> <br>
		<h3>Autor</h3>
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
		<form:form action="${ saveURL }" method="POST" modelAttribute="author">
			<form:hidden path="id" />
			<form:label path="name">Nombre</form:label>
			<form:input path="name" />
			<form:label path="lastName">Apellido</form:label>
			<form:input path="lastName" />
			<input type="submit" value="Aceptar" />
		</form:form>
		<!-- FIN FORM -->

	</div>

</body>
</html>