<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url value="/books/form" var="formURL"></spring:url>
<spring:url value="/books/remove" var="removeURL"></spring:url>
<spring:url value="/resources/img" var="urlImages"></spring:url>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../static/include.jsp" />
<title>Libros</title>
</head>
<body>
	<jsp:include page="../static/header.jsp" />
	<div class="container theme-showcase" role="main">
		
		<!-- CAROUSEL -->
	<c:if test="${ not empty banners}">
	<div id="carouselIndicators" class="carousel slide col-md-8 mt-5 mb-2 mx-auto" data-ride="carousel" >
  <ol class="carousel-indicators">
    <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselIndicators" data-slide-to="1"></li>
    <li data-target="#carouselIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner shadow">
  <c:forEach items="${ banners }" var="banner" varStatus="iteration">
  <c:choose>
  	<c:when test="${ iteration.first }">
  		<div class="carousel-item active row">
  	</c:when>
  	<c:otherwise>
  		<div class="carousel-item row">
  	</c:otherwise>
  </c:choose>
  
  
		<div class="col-md-4">
			<img class="d-block w-100" src="${ urlImages }/${banner.book.image}" alt="${banner.book.title}"/>
		</div>
		<div class="col-md-8 float-right mt-3">
			<div class="h2 mx-auto col-md-10 title1">
				<p>${banner.book.title}</p>
			</div>			
		</div>
		<div class="col-md-8 float-right mt-3 title2">
				<p>Autor: ${banner.book.author}</p>		
		</div>
		<div class="col-md-8 float-right mt-1 title2">
				<p>Genero: <c:forEach items="${banner.book.genre}" var="oneGenre" varStatus="iteration">
								
								<c:if test="${ !iteration.last }">
								${ oneGenre },
								</c:if>
								<c:if test="${ iteration.last }">
								${ oneGenre }
								</c:if>
								
							</c:forEach>
				</p>
		</div>
		<div class="col-md-8 float-right mt-1 title2">
			<div class="truncate">${ banner.book.synopsis }</div>
		</div>
    </div>
  </c:forEach>
	
  </div>
  <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
	</c:if>
		

<!-- END CAROUSEL -->
		
		<div class="row mt-5">
		<div class="col-11 h4">Listado de Libros</div>
		<div class="col-1"><a href="/app/books/form"><i class="fas fa-plus-square"></i></a></div>
		</div>

		<!-- SUCCESS MSGS. WHEN CREATING A NEW BOOK  -->
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

		<!-- BOOKS -->

		<div class="books-container mt-4">
		<c:forEach items="${ books }" var="book">
			<div class="book-row row mt-2 mb-4">
				<div class="col-2">
						<img src="${ urlImages }/${book.image }" alt="${ book.title }" title="${ book.title }">
				</div>
				<div class="info-container col-4">
						<div class="row">Titulo: ${ book.title }</div>
						<div class="row">Autor: ${ book.author }</div>
						<div class="row">Editorial: ${ book.publisher }</div>						
						<div class="row">Fecha de publicacion: ${ book.publicationDate }</div>	
						<div class="row">Generos: 
							<c:forEach items="${book.genre}" var="oneGenre" varStatus="iteration">
								
								<c:if test="${ !iteration.last }">
								${ oneGenre },
								</c:if>
								<c:if test="${ iteration.last }">
								${ oneGenre }
								</c:if>
								
							</c:forEach>
						</div>
				</div>
				<div class="info2-container col-6">
						<div class="row">Rating: ${ book.rating }</div>
						<div class="row">Sinopsis: ${ book.synopsis }</div>
				</div>

				<div class="col-2">
					<div class="col-8 mx-auto">
							<a href="${ formURL }?id=${book.id}"><i
								class="fas fa-edit"></i></a> <a href="#"><i
								class="fas fa-trash-alt" data-toggle="modal"
								data-target="#modalConfirm"
								data-href="${ removeURL }?id=${book.id}"></i></a>
					</div>
						
				</div>

		</div></c:forEach>
		
	</div>



	</div>


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
					¿Esta seguro que quiere eliminar el libro seleccionado?<br> <i>
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