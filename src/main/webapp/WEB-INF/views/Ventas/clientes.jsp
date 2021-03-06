<%-- 
    Document   : clientes
    Created on : Feb 23, 2015, 4:08:36 PM
    Author     : giovanni
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="ventasHead.jsp" %>
    <title>SAPito - Ventas - Clientes</title>
  </head>
  <body>
    <div id="wrapper">

      <!-- Navigation bar -->
      <%@include file="ventasNavs.jsp" %>

      <!-- Page content -->
      <div id="page-wrapper">
        <div class="container-fluid">

          <!-- Page title -->
          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Clientes registrados
              </h1>
            </div>
          </div>

          <!-- Data table -->
          <table id="tclientes" class="table table-bordered table-hover 
                 table-striped table-responsive" cellspacing="0" width="100%">
            <thead>
              <tr>
                <th>Empresa</th>
                <th>Sucursal</th>
                <th>Nombre de contacto</th>
                <th>Email</th>
                <th>Detalles</th>
                  <c:if test="${authority == 'JEFE_OPERATIVO_ROL'}">
                  <th>Editar</th>
                  <th>Inhabilitar</th>
                  </c:if>
              </tr
            </thead>
            <tbody>
              <c:forEach items="${clientes}" var="cliente">
                  <tr>
                    <td>${cliente.empresa}</td>
                    <td>${cliente.sucursal}</td>
                    <td>${cliente.nombreContacto}</td>
                    <td>${cliente.email}</td>
                    <td>
                      <button class="btn btn-xs btn-success" type="button" 
                              data-toggle="modal" data-target="#cts-modal${cliente.id}">
                        Detalles
                      </button>
                    </td>
                    <c:if test="${authority == 'JEFE_OPERATIVO_ROL'}">
                        <td>
                          <button class="btn btn-xs btn-success" type="button" >
                            Editar
                          </button>
                        </td>
                        <td>
                          <button class="btn btn-xs btn-success" type="button"  >
                            Inhabilitar
                          </button>
                        </td>
                    </c:if>
                  </tr>
              </c:forEach>
            </tbody>
          </table>

        </div>
      </div>
    </div>

    <!-- Modal dialog para detalles de clientes -->
    <c:forEach items="${clientes}" var="cliente">
        <div id="cts-modal${cliente.id}" class="modal fade" tabindex="-1" role="dialog" 
             aria-labelledby="cliente-modal-title" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">

              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true" id="cliente-modal-title">&times;</span>
                </button>
                <h4 class="modal-title">Detalles de cliente</h4>
              </div>
              <div class="modal-body">
                <h4>Datos de la empresa:</h4>
                <div class="row">
                  <div class="col-md-6">
                    <br/><label>Empresa</label>
                    <input type="text" class="form-control" readonly value="${cliente.empresa}"/>
                  </div>
                  <div class="col-md-6">
                    <br/><label>Sucursal</label>
                    <input type="text" class="form-control" readonly value="${cliente.sucursal}"/>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <br/><label>RFC</label>
                    <input type="text" class="form-control" readonly value="${cliente.rfc}"/>
                  </div>
                  <div class="col-md-6">
                    <br/><label>Calle</label>
                    <input type="text" class="form-control" readonly value="${cliente.calle}"/>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <br/><label>Código Postal</label>
                    <input type="text" class="form-control" readonly value="${cliente.cp}"/>
                  </div>
                  <div class="col-md-6">
                    <br/><label>Colonia</label>
                    <input type="text" class="form-control" readonly value="${cliente.colonia}"/>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <br/><label>Ciudad o Municipio</label>
                    <input type="text" class="form-control" readonly value="${cliente.municipio}" />
                  </div>
                  <div class="col-md-6">
                    <br/><label>Estado</label>
                    <input type="text" class="form-control" readonly value="${cliente.estado}" />
                  </div>
                </div>

                <br/><br/><h4>Datos de contacto:</h4>
                <div class="row">
                  <div class="col-md-4">
                    <br/><label>Nombre (s)</label>
                    <input type="text" class="form-control" readonly value="${cliente.nombreContacto}" />
                  </div>
                  <div class="col-md-4">
                    <br/><label>Apellido paterno</label>
                    <input type="text" class="form-control" readonly value="${cliente.apellidoPaternoContacto}" />
                  </div>
                  <div class="col-md-4">
                    <br/><label>Apellido materno</label>
                    <input type="text" class="form-control" readonly value="${cliente.apellidoMaternoContacto}" />
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-4">
                    <br/><label>Email</label>
                    <input type="text" class="form-control" readonly value="${cliente.email}" />
                  </div>
                  <div class="col-md-4">
                    <br/><label>Teléfono 1</label>
                    <input type="text" class="form-control" readonly value="${cliente.telefono1}" />
                  </div>
                  <div class="col-md-4">
                    <br/><label>Teléfono 2.</label>
                    <input type="text" class="form-control" readonly value="${cliente.telefono2}"/>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-4 col-md-offset-4">
                    <br/><label>Extensión 1</label>
                    <input type="text" class="form-control" readonly value="${cliente.extension1}" />
                  </div>
                  <div class="col-md-4">
                    <br/><label>Extensión 2</label>
                    <input type="text" class="form-control" readonly value="${cliente.extension2}" />
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                  Cerrar
                </button>
              </div>

            </div>
          </div>
        </div>
    </c:forEach>


    <!-- Footer and scripts -->
    <%@include file="ventasFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-clientes');
            $('#tclientes').DataTable();
        });
    </script>
  </body>
</html>
