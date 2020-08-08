<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="es">
  <head>
    <title>ADMINISTRADOR || Mantenedor Cliente</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css"
    />

  </head>
  <body>
    <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
      <a class="navbar-brand" href="#">NO + ACCIDENTES</a>
      <button
        class="navbar-toggler d-lg-none"
        type="button"
        data-toggle="collapse"
        data-target="#collapsibleNavId"
        aria-controls="collapsibleNavId"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
          <li class="nav-item active">
            <a class="nav-link" href="${pageContext.request.contextPath}/mantenedor/cliente"
              >Mantenedor de Clientes <span class="sr-only">(current)</span></a
            >
          </li>
        </ul>
        <form class="form-inline">
          <a href="${pageContext.request.contextPath}/salir"
            ><input
              class="btn btn-danger mr-3 btn-block"
              type="submit"
              value="Salir"
          /></a>
        </form>
      </div>
    </nav>

    <div class="container mt-5 border shadow p-4">
      <div class="row d-flex justify-content-center">
        <div class="col-6 d-flex justify-content-end">
          <a href="${pageContext.request.contextPath}/nuevoCliente" class="btn btn-sm btn-primary">Nuevo</a>
          <a href="${pageContext.request.contextPath}/menuAdmin" class="btn ml-1 btn-sm btn-success">Volver</a>
        </div>
      </div>
      
      <div class="row mt-2 d-flex justify-content-center">
        <table id="mantenedorCli" class="table table-responsive table-striped table-hover table-bordered mt-5">
          <thead>
            <tr>
				<th>RUT</th>
				<th>Nombre</th>
				<th>Email</th>
				<th>Direccion</th>
				<th>Comuna</th>
				<th>Acción</th>
            </tr>
          </thead>
          <tbody>
					<c:forEach var="cliente" items="${lista}">
							<tr>
								<td>${cliente.getRut()}</td>
								<td>${cliente.getNombre()}</td>
								<td>${cliente.getEmail()}</td>
								<td>${cliente.getDireccion()} #${cliente.getNum_direccion()}</td>
								<td>${cliente.getComuna()}</td>
								<td>
									<a class="btn btn-sm btn-warning" href="${pageContext.request.contextPath}/editarCliente/${cliente.getId_cliente()}">Editar</a>
									<a href="${pageContext.request.contextPath}/eliminarCliente/${cliente.getId_cliente()}" class="btn btn-sm btn-danger">Eliminar</a>
								</td>
							</tr>								
					</c:forEach>       
          </tbody>
          <tfoot></tfoot>
        </table>
      </div>

    </div>
  


    <div class="container-fluid bg-dark mt-5 p-3">
      <footer class="text-center text-light">
        <h5>Copyright 2020</h5>
      </footer>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script
    type="text/javascript"
    charset="utf8"
    src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"
  ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"
    ></script>
    <script>
      $(document).ready(function () {
        $("#mantenedorCli").DataTable();
      });
    </script>
  </body>
</html>