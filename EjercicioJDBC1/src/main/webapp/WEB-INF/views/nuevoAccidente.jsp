<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
<!doctype html>
<html lang="es">
  <head>
    <title>CLIENTE || Nuevo Accidente</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="js/funciones.js"></script>
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
                    <a class="nav-link" href="#">Nuevo Accidente <span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <form class="form-inline">
                <a href="${pageContext.request.contextPath}/salir"><input class="btn btn-danger mr-3 btn-block" type="submit" value="Salir"></a>
            </form>
        </div>
    </nav>

    <div class="container">

        <div class="row d-flex justify-content-center">

            <div class="col-12 col-lg-6">

                <form id="nuevoAccidente" class="mt-5 border shadow-lg p-4" action="" method="post">

                    <div class="form-group">
                      <label for="nombre">Nombres</label>
                      <input type="text" class="form-control" name="nombre" id="nombre" aria-describedby="nombreHelp" placeholder="Ej. Juan Pedro">
                      <small id="nombreHelp" class="form-text text-muted">Nombre del accidentado</small>
                    </div>
                    <div class="form-group">
                        <label for="apellido">Apellidos</label>
                        <input type="text" class="form-control" name="apellido" id="apellido" aria-describedby="apellidoeHelp" placeholder="Ej. Perez Rosales">
                        <small id="apellidoHelp" class="form-text text-muted">Apellido del accidentado</small>
                    </div>
                    <div class="form-group">
                        <label for="edad">Edad</label>
                        <input type="number" class="form-control" name="edad" id="edad" aria-describedby="edadHelp" placeholder="">
                        <small id="edadHelp" class="form-text text-muted">Edad del accidentado. Solo números.</small>
                    </div>
                    <label for="nivel">Gravedad</label>
                    <div class="form-group">
                        <div class="form-check form-check-inline">
                            <label class="form-check-label">
                                <input class="form-check-input" type="radio" name="nivel" id="grave" value="1"> Grave
                                <input class="form-check-input" type="radio" name="nivel" id="medio" value="2"> Medio
                                <input class="form-check-input" type="radio" name="nivel" id="leve" value="3"> Leve
                            </label>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-6">
                            <label for="">Hora</label>
                            <input type="time" name="hora" id="hora" class="form-control">
                        </div>
                        <div class="col-6">
                            <label for="">Fecha</label>
                            <input type="date" name="fecha" id="fecha" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                      <label for="descripcion">Descripción</label>
                      <textarea class="form-control" name="descripcion" id="descripcion" rows="3"></textarea>
                    </div>
                    <div class="form-group row d-flex justify-content-end">
                        <div class="col-12 col-lg-5 mt-1">
                            <input type="reset" class="form-control btn btn-block btn-warning" name="limpiar" value="Limpiar">
                        </div>
                        <div class="col-12 col-lg-5 mt-1">
                            <input type="submit" class="form-control btn btn-block btn-success" name="agregar" value="Agregar">
                        </div>
                    </div>
                </form>


            </div>

        </div>

    </div>

    <div class="container-fluid bg-dark mt-5 p-3">
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