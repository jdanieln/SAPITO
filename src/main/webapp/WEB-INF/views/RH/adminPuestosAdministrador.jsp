<%-- 
    Document   : adminDepartamentosAdministrador
    Created on : 17/02/2015, 02:06:41 AM
    Author     : Jovic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="Librerias/headgeneral.jsp"%><!-- ESTO MANDA A TRAER Las cabeceras-->
    <title>Jefe Operativo RH</title>
  </head>
  <body>

    <%@include file="Menus/MenuJefeDepartamento.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
    <div id="page-wrapper">
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header">
            Ver Puestos 
          </h1>
        </div>
      </div>
      <div class="container-fluid">
        <div class="row">
          <div class="col-lg-12 text-left">


            <div class="panel panel-green">
              <div class="panel-heading">
                <h3 class="panel-title">Puestos</h3>
              </div>
              <div class="panel-body">
                <table id="tpuestos"class="table table-bordered table-hover 
                 table-striped table-responsive" cellspacing="0" width="100%">
                  <thead>
                    <tr>
                      <th>Puesto</th>
                      <th>Hora de entrada</th>
                      <th>Hora de salida</th>
                      <th>Sueldo base</th>
                    </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${Puestos}" var="puesto">
                        <tr>
                          <td>${puesto.nombre}</td>
                          <td>${puesto.horaentrada}</td>
                          <td>${puesto.horafin}</td>
                          <td>${puesto.sueldobase}</td></tr>
                    </c:forEach>
                  </tbody>
                </table>   
              </div>

            </div>
          </div>
        </div>

        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                <h4 class="modal-title" id="myModalLabel">Empleados en capacitación</h4>
              </div>
              <div class="modal-body">
                <div class="panel-body">
                  <div class="input-group">
                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
                    <input class="form-control" id="system-search" name="q" placeholder="Busqueda" required>
                    <span class="input-group-btn">
                      <button type="submit" class="btn btn-default"><i class="fa fa-search"></i></button>
                    </span>
                  </div>
                </div>
                <table class="table table-list-search">
                  <thead>
                    <tr>
                      <th>Curp</th>
                      <th>Nombre</th>
                      <th>Edad</th>
                      <th>Departamento</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>BADD110313HCMLNS12</td>
                      <td>Roberto Hernandez Gomez</td>
                      <td>34</td>
                      <td>Ventas</td>
                    </tr>
                    <tr>
                      <td>JOSD110313HCMLPL87</td>
                      <td>Jesus Montes Cruz</td>
                      <td>23</td>
                      <td>Recursos Humanso</td>
                    </tr>
                    <tr>
                      <td>PODD110313HCSER781</td>
                      <td>Samantha Flores Ruiz</td>
                      <td>38</td>
                      <td>Compras</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>

      <%@include file="Librerias/piegeneral.jsp"%><!-- ESTO MANDA A TRAER EL MENU-->
      <script src="${pageContext.request.contextPath}/resources/js/rh/empleadosRh.js"></script>
      <script >
        $(document).ready(function () {
            $('#tpuestos').DataTable();
        });
    </script>
  </body>
</html>
