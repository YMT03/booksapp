<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/news" var="urlNews"></spring:url>
<spring:url value="/promo" var="urlPromo"></spring:url>
<spring:url value="/vehicles" var="urlVehicles"></spring:url>
<spring:url value="/contact" var="urlContact"></spring:url>
<spring:url value="/authors" var="urlAuthors"></spring:url>
<spring:url value="/publishers" var="urlPublishers"></spring:url>
<spring:url value="/genres" var="urlGenres"></spring:url>
<spring:url value="/books" var="urlBooks"></spring:url>
<spring:url value="/" var="urlRoot"></spring:url>
<spring:url value="/resources/img" var="urlImages"></spring:url>
<!-- NAVBAR-->
  
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand col-12 col-lg-1 d-flex justify-content-center" href=""><img src="${ urlImages }/logo.png" alt="Java" height="80px"></a>  
    
      <ul class="navbar-nav justify-content-xl-center flex-fill col-xl-7 align-items-center ">
        <li class="nav-item d-inline-flex">
          <a class="nav-link" href="${ urlRoot }">Home</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="${ urlNews }">Noticias</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${ urlPromo }">Promociones</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="${ urlBooks }">Libros</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="${ urlAuthors }">Autores</a>
        </li>
         <li class="nav-item ">
          <a class="nav-link" href="${ urlPublishers }">Editoriales</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="${ urlGenres }">Generos</a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="${ urlContact }">Contacto</a>
        </li>

      </ul>
      <form class="form-inline col-12 col-lg-4 align-items-center d-flex justify-content-center">
        <input class="form-control col-lg-3 col-xl-4 col-4 mr-md-1 mr-lg-1 col-12 col-sm-4 mr-sm-1" type="text" placeholder="username">
        <input class="form-control col-lg-3 col-xl-4 col-4 mr-md-1 mr-lg-1 col-12 col-sm-4 mr-sm-1"  type="text" placeholder="password">
        <button class="btn btn-success col-lg-3 col-xl-2 col-md-1 col-4 col-12 col-sm-3 mr-sm-1" type="button">Login</button>
      </form>
  </nav>

<!-- END NAVBAR -->