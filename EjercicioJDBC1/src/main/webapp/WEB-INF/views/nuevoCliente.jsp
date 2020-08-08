<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="es">
  <head>
    <title>ADMINISTRADOR || Nuevo Cliente</title>
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
          <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/mantenedor/cliente"
              >Mantenedor de Clientes</a
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

    <div class="container mt-5">
    	<div class="row d-flex justify-content-center">
    		<div class="col-12 col-lg-6 col-md-6 border shadow p-4">
    			<form action="${pageContext.request.contextPath}/agregarCliente" method="POST">
 
    				<h1>Nuevo Cliente</h1>
    				<hr>
                	<div class="form-group">
                		<label>Nombre</label>
                 	 	<input
                   		 type="text"
                    	 name="nombre"
                    	 id="nombre"
                    	 class="form-control"
                    	 placeholder="Razon Social"
                  	 	 required/>
                	</div>
                	<div class="form-group">
                		<label>Rut</label>
                 	 	<input
                   		 type="text"
                    	 name="rut"
                    	 id="rut"
                    	 class="form-control"
                    	 placeholder="99.999.999-K"
                  	 	 required/>
                	</div>                	    				
                	<div class="form-group">
                		<label>Email</label>
                 	 	<input
                   		 type="email"
                    	 name="correo"
                    	 id="correo"
                    	 class="form-control"
                    	 placeholder="ejemplo@ejemplo.cl"
                  	 	 required/>
                	</div>
                	<div class="form-group">
                 	 	<label>Direccion</label>
                 	 	<input
                   		 type="text"
                    	 name="direccion"
                    	 id="direccion"
                    	 class="form-control"
                    	 placeholder="Av. Calle bonita"
                  	 	 required/>
                	</div>
                	<div class="form-group">
                 	 	<label>N°</label>
                 	 	<input
                   		 type="number"
                    	 name="numero"
                    	 id="numero"
                    	 class="form-control"
                    	 placeholder="1234"
                  	 	 required/>
                	</div>
                	<div class="form-group">
                	<label>Comuna</label>
					<select name="comuna"
						required="required">
						<c:forEach var="comuna" items="${comunas}">
							<option value="${comuna.getId_comuna()}">${comuna.getComuna()}</option>
						</c:forEach>
					</select>
                	</div>
                	<div class="form-group d-flex justify-content-end">
                		<a href="${pageContext.request.contextPath}/mantenedor/cliente"><input type="button" class="btn btn-sm btn-danger" value="Cancelar"/></a>
                		<input type="submit" class="ml-2 btn btn-sm btn-success" value="Agregar"/>
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
  </body>
</html>