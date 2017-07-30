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

    <title>Menú</title>

	<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />

  </head>
  <body>

<!-- Static navbar -->
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
              <li class="active"><a href="#">${user}</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="<c:url value="/cita/add"/>">CREAR CITA</a></li>
            <li><a href="<c:url value="/logout"/>">SALIR</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <table class="table">
        <tr>
          <td>ID</td>
          <td>Nombre</td>
          <td>Money</td>
          <td></td>
        </tr>
        <c:forEach items="${list}" var="item">
          <tr>
            <td>
            <input type="checkbox" name="id" value="${item.id}">
            </td>
            <td>${item.name}</td>
            <td>${item.money}</td>
            <td>
	            <a href="<c:url value="/cita/edit?id=${item.id}"/>"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></a>
	            &nbsp;
	            <a href="<c:url value="/cita/deleteByID?id=${item.id}"/>"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
            </td>
          </tr>
        </c:forEach>
      </table>

    </div> <!-- /container -->

    <script src="<c:url value='/static/js/jquery.min.js' />"></script>
  </body>
</html>