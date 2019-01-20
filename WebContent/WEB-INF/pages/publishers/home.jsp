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
								class="fas fa-edit"></i></a> <a
							href="${ removeURL }?id=${publisher.id}"><i
								class="fas fa-trash-alt"></i></a></td>
					</tr>
				</c:forEach>

			</table>
		</div>

	</div>
</body>
</html>