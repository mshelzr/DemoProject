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

    <title>Modificar Cita</title>

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
              <li class="active"><a href="/cita/list">${user}</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="<c:url value="#"/>">MODIFICAR CITA</a></li>
            <li><a href="<c:url value="/logout"/>">SALIR</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <form id="itemForm" action="<c:url value="/cita/saveOrUpdate"/>" method="post">
        <input type="hidden" name="id" value="${item.id}" />
        <table class="table">
        <tr>
          <td>Name</td>
          <td><input type="text" name="name" value="${item.name }"/></td>
        </tr>
        <tr>
          <td>Money</td>
          <td><input type="text" name="money" value="${item.money}"/></td>
        </tr>
        <tr>
        <td colspan="2" align="center"><input type="submit" value="Enviar"/>
        </td>
        </tr>
        </table>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
      </form>
    </div>

    <script src="<c:url value='/static/js/jquery.min.js' />"></script>
  </body>
</html>