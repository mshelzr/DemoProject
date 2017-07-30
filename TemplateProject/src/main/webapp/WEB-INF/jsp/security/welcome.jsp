<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Bienvenido</title>

	<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />

  </head>

  <body>

    <div class="site-wrapper">
      <div class="site-wrapper-inner">
        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">Demo</h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li><a href="<c:url value="/login" />">Iniciar Sesión</a></li>
                </ul>
              </nav>
            </div>
          </div>

          <div class="inner cover">
            <h1 class="cover-heading">Bienvenido</h1>
            <p class="lead">
	             A la Demo de la Nueva Web del Hospital de la Fuerza Aerea.
             </p>
            <p class="lead">
              <a href="<c:url value="/login" />" class="btn btn-lg btn-default">Inicia Sesión para continuar</a>
            </p>
          </div>

        </div>
      </div>
    </div>

    <script src="<c:url value='/static/js/jquery.min.js' />"></script>
  </body>
</html>