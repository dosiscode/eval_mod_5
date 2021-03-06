<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
<!doctype html>
<html lang="es">
  <head>
    <title>ADMINISTRADOR || Seleccionar Mantenedor</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
        <a class="navbar-brand" href="#">NO + ACCIDENTES</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Seleccionar Mantenedor <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <form class="form-inline">
                <a href="${pageContext.request.contextPath}/salir"><input class="btn btn-danger mr-3 btn-block" type="submit" value="Salir"></a>
            </form>
        </div>
    </nav>

    <div class="container mt-5">

        <div class="row d-flex justify-content-center">

            <div class="col-12 col-md-5 mt-5">
                <a href="${pageContext.request.contextPath}/mantenedor/profesional">
                	<input type="submit" class="btn btn-primary btn-lg btn-block" value="Mantenedor Profesional">
                </a>
            </div>
            <div class="col-12 col-md-5 mt-5">
                <a href="${pageContext.request.contextPath}/mantenedor/cliente">
                	<input type="submit" class="btn btn-primary btn-lg btn-block" value="Mantenedor Cliente">
                </a>
            </div>
        </div>

    </div>

    <div class="container-fluid bg-dark mt-5 p-3 fixed-bottom">
        <footer class="text-center text-light">
            <h5>Copyright 2020</h5>
        </footer>
    </div>
      
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>