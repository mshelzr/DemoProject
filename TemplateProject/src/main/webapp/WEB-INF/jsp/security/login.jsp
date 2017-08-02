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

    <title>Iniciar Sesión</title>

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
          <a class="navbar-brand" href="#">Demo</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="<c:url value="/logout"/>">Atrás</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">
    
	    <div class="row">
	    
		    <div class="col-lg-4"></div>
		    <div class="col-lg-4">
			    
				<form name='loginForm' action="<c:url value='j_spring_security_check' />" method='POST' class="form-horizontal">
	              <div class="input-group input-sm">
                    <label class="input-group-addon" for="username"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></label>
                    <input type="text" class="form-control" id="username" name="username" 
                      placeholder="Enter Username" required/>
                  </div>
                  <div class="input-group input-sm">
                    <label class="input-group-addon" for="password"><span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span></label> 
                    <input type="password" class="form-control" id="password" name="password" 
                      placeholder="Enter Password" required/>
                  </div>
                  <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
                  <div class="form-actions">
                    <input type="submit" name="submit" class="btn btn-block btn-primary btn-default" value="Ingresar">
                  </div>
                </form>
			      
			</div>
			<div class="col-lg-4"></div>
	
	      </div>
    </div>

    <script src="<c:url value='/static/js/jquery.min.js' />"></script>
  </body>
</html>