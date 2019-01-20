<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url value="/authors/edit" var="editURL"></spring:url>
<spring:url value="/authors/remove" var="removeURL"></spring:url>
<spring:url value="/authors/add" var="addURL"></spring:url>
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
		<h3>Listado de Autores</h3>

		<!-- SUCCESS MSGS. WHEN CREATING A NEW AUTHOR  -->
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
				class="btn btn-primary">Nuevo</button></a><br>

		<!-- TABLE  -->
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
						<td><a href="${ editURL }?id=${authorItem.id}"><i
								class="fas fa-edit"></i></a> <a
							href="${ removeURL }?id=${authorItem.id}"><i
								class="fas fa-trash-alt"></i></a></td>
					</tr>
				</c:forEach>

			</table>
		</div>
		<!-- /TABLE  -->
	</div>
</body>
</html>