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

    <title>Agregar Cita</title>

	<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>

  </head>
  <body>

   <nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<c:url value="/cita/list"/>">Demo</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
         <ul class="nav navbar-nav">
              <li class="active"><a href="<c:url value="/cita/list"/>">${user}</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="<c:url value="#"/>">CREAR CITA</a></li>
            <li><a href="<c:url value="/logout"/>">SALIR</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">
    
	    <div class="row">
	    
		    <div class="col-lg-4"></div>
		    <div class="col-lg-4">
			    <h2>Creación de Cita</h2>
			    <br/>
			    
				<form name='loginForm' action="<c:url value="/cita/addUser"/>" method='POST' class="form-horizontal">
	              <div class="input-group input-sm">
                    <label class="input-group-addon" for="name">Nombres</label>
                    <input type="text" class="form-control" id="name" name="name" maxlength="50" required/>
                  </div>
                  <div class="input-group input-sm">
                    <label class="input-group-addon" for="lastname">Apellidos</label> 
                    <input type="text" class="form-control" id="lastname" name="lastname" maxlength="50" required/>
                  </div>
                  <div class="input-group input-sm">
                    <label class="input-group-addon" for="dni">DNI</label> 
                    <input type="number" class="form-control" id="dni" name="dni" required/>
                  </div>
                  <div class="input-group input-sm">
                    <label class="input-group-addon" for="phone">Celular</label> 
                    <input type="number" class="form-control" id="phone" name="phone" required/>
                  </div>
                  
                  <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                  <div class="form-actions">
                    <input type="submit" name="submit" class="btn btn-block btn-success btn-default" value="Agregar">
                  </div>
                </form>
			      
			</div>
			<div class="col-lg-4"></div>
	
	      </div>

    </div> <!-- /container -->

    <script src="<c:url value='/static/js/jquery.min.js' />"></script>
  </body>
</html>