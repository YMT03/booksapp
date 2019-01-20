<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<spring:url value="/resources" var="urlPublic"></spring:url>
<spring:url value="/" var="urlRoot"></spring:url>
<spring:url value="/resources/img" var="urlImages"></spring:url>
<spring:url value="/resources/css" var="urlCss"></spring:url>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <title>Biblioteca</title>
</head>
<body>

<jsp:include page="WEB-INF/pages/static/header.jsp" />

<!-- TITLE AND MAIN DESCRIPTION -->

<header>
    <div class="row display-4 justify-content-center mb-5 mt-5" id="title"> Biblioteca</div>
    <div class="row mb-5 ">
      <div class="col-lg-8 col-sm-12 mx-auto">
        <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Id hic rem doloribus labore enim minima dolorem
          doloremque!
          Maxime adipisci quas eos mollitia natus distinctio rem, beatae reprehenderit? Aspernatur, expedita quaerat.
          Lorem ipsum
          dolor sit amet consectetur adipisicing elit. Dolores incidunt dolore ab eveniet eos quasi eius ad ipsam!
          Dicta quae
          molestias magni maiores excepturi culpa odit voluptatum eius maxime? Lorem ipsum dolor sit amet consectetur
          adipisicing
          elit. Expedita animi quod molestias deserunt esse est vero labore consequatur beatae ipsum autem, laborum
          magnam eum.
          Voluptatum a repudiandae veritatis similique reprehenderit. Lorem ipsum dolor, sit amet consectetur
          adipisicing elit.
          Libero incidunt tenetur quo repellat provident? Sapiente labore dolores incidunt quae maxime, fugit expedita
          est, aperiam
          dolorum molestiae eius aliquam iure ut?</p>
      </div>
    </div>  
</header>


<div class="container mt-5 pt-5 mb-5 pb-5">

  <!--SECTION 1 -->
  <div class="row display-4 justify-content-center mb-4" id="section1"> SECTION1</div>
  <div class="row mb-5 ">
    <div class="col-lg-4 col-sm-12 align-items-center">
      <div class="display-4 pl-3 float-left ">
        <img class="img mx-auto d-flex" src="${ urlImages }/background.png" alt="rubiks" height="200px">
      </div>
    </div>
    <div class="col-lg-8 col-sm-12 border-left">
      <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Id hic rem doloribus labore enim minima dolorem
        doloremque!
        Maxime adipisci quas eos mollitia natus distinctio rem, beatae reprehenderit? Aspernatur, expedita quaerat.
        Lorem ipsum
        dolor sit amet consectetur adipisicing elit. Dolores incidunt dolore ab eveniet eos quasi eius ad ipsam!
        Dicta quae
        molestias magni maiores excepturi culpa odit voluptatum eius maxime? Lorem ipsum dolor sit amet consectetur
        adipisicing
        elit. Expedita animi quod molestias deserunt esse est vero labore consequatur beatae ipsum autem, laborum
        magnam eum.
        Voluptatum a repudiandae veritatis similique reprehenderit. Lorem ipsum dolor, sit amet consectetur
        adipisicing elit.
        Libero incidunt tenetur quo repellat provident? Sapiente labore dolores incidunt quae maxime, fugit expedita
        est, aperiam
        dolorum molestiae eius aliquam iure ut?</p>
    </div>
  </div>

  <!-- END SECTION1 -->

  <!-- SECTION 2 -->
  <div class="row display-4 justify-content-center mb-4 " id="section2"> SECTION2</div>
  <div class="row mb-5 d-flex flex-row-reverse">
    <div class="col-lg-4 col-sm-12 align-items-center">
      <div class="display-4 pl-3 float-left ">
        <img class="img mx-auto d-flex" src="${ urlImages }/background.png" alt="rubiks" height="200px">
      </div>
    </div>
    <div class="col-lg-8 col-sm-12  border-right">
      <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Id hic rem doloribus labore enim minima dolorem
        doloremque!
        Maxime adipisci quas eos mollitia natus distinctio rem, beatae reprehenderit? Aspernatur, expedita quaerat.
        Lorem ipsum
        dolor sit amet consectetur adipisicing elit. Dolores incidunt dolore ab eveniet eos quasi eius ad ipsam!
        Dicta quae
        molestias magni maiores excepturi culpa odit voluptatum eius maxime? Lorem ipsum dolor sit amet consectetur
        adipisicing
        elit. Expedita animi quod molestias deserunt esse est vero labore consequatur beatae ipsum autem, laborum
        magnam eum.
        Voluptatum a repudiandae veritatis similique reprehenderit. Lorem ipsum dolor, sit amet consectetur
        adipisicing elit.
        Libero incidunt tenetur quo repellat provident? Sapiente labore dolores incidunt quae maxime, fugit expedita
        est, aperiam
        dolorum molestiae eius aliquam iure ut?</p>
    </div>
  </div>

  <!-- END SECTION2 -->

  <!-- SECTION 3 -->
  <div class="row display-4 justify-content-center mb-4" id="section3"> SECTION3</div>
  <div class="row mb-5 ">
    <div class="col-lg-4 col-sm-12 align-items-center">
      <div class="display-4 pl-3 float-left ">
        <img class="img mx-auto d-flex" src="${ urlImages }/background.png" alt="rubiks" height="200px">
      </div>
    </div>
    <div class="col-lg-8 col-sm-12 border-left">
      <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Id hic rem doloribus labore enim minima dolorem
        doloremque!
        Maxime adipisci quas eos mollitia natus distinctio rem, beatae reprehenderit? Aspernatur, expedita quaerat.
        Lorem ipsum
        dolor sit amet consectetur adipisicing elit. Dolores incidunt dolore ab eveniet eos quasi eius ad ipsam!
        Dicta quae
        molestias magni maiores excepturi culpa odit voluptatum eius maxime? Lorem ipsum dolor sit amet consectetur
        adipisicing
        elit. Expedita animi quod molestias deserunt esse est vero labore consequatur beatae ipsum autem, laborum
        magnam eum.
        Voluptatum a repudiandae veritatis similique reprehenderit. Lorem ipsum dolor, sit amet consectetur
        adipisicing elit.
        Libero incidunt tenetur quo repellat provident? Sapiente labore dolores incidunt quae maxime, fugit expedita
        est, aperiam
        dolorum molestiae eius aliquam iure ut?</p>
    </div>
  </div>

  <!-- END SECTION3 -->

  <!-- SECTION 4 -->
  <div class="row display-4 justify-content-center mb-4" id="section4"> SECTION4</div>
  <div class="row mb-5 d-flex flex-row-reverse">
    <div class="col-lg-4 col-sm-12 align-items-center">
      <div class="display-4 pl-3 float-left ">
        <img class="img mx-auto d-flex" src="${ urlImages }/background.png" alt="rubiks" height="200px">
      </div>
    </div>
    <div class="col-lg-8 col-sm-12  border-right">
      <p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Id hic rem doloribus labore enim minima dolorem
        doloremque!
        Maxime adipisci quas eos mollitia natus distinctio rem, beatae reprehenderit? Aspernatur, expedita quaerat.
        Lorem ipsum
        dolor sit amet consectetur adipisicing elit. Dolores incidunt dolore ab eveniet eos quasi eius ad ipsam!
        Dicta quae
        molestias magni maiores excepturi culpa odit voluptatum eius maxime? Lorem ipsum dolor sit amet consectetur
        adipisicing
        elit. Expedita animi quod molestias deserunt esse est vero labore consequatur beatae ipsum autem, laborum
        magnam eum.
        Voluptatum a repudiandae veritatis similique reprehenderit. Lorem ipsum dolor, sit amet consectetur
        adipisicing elit.
        Libero incidunt tenetur quo repellat provident? Sapiente labore dolores incidunt quae maxime, fugit expedita
        est, aperiam
        dolorum molestiae eius aliquam iure ut?</p>
    </div>
  </div>
  <!-- END SECTION4 -->


  <script src="sources/js/script.js"></script>
</body>
</html>