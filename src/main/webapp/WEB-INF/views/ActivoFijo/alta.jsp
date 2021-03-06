<%-- 
    Document   : indexactivofijo
    Created on : Feb 7, 2015, 3:15:33 AM
    Author     : Usuario
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link type="text/css" rel="stylesheet" href="resources/css/sapito.css">

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/libs/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Morris css -->
    <link href="resources/css/libs/morris.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="resources/css/libs/sb-admin.css" rel="stylesheet" type="text/css">

    <!-- Custom Fonts -->
    <link href="resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- PARA FECHA -->
    <link href="resources/css/activofijo/jquery-ui.css" rel="stylesheet" />

    <title>SAPito</title>
  </head>
  <body>
    <div id="wrapper">
      <%@include file="Menu.jsp"%>

      <!-- Page Content -->
      <div id="page-wrapper">
        <div class="container-fluid">

          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Alta de Activo Fijo
              </h1>                        
            </div>
          </div>        
          <center>
            <div class="row">
              <div class="col-lg-12 text-left" >
                <div class="panel panel-default">
                  <div class="panel-body">
                    <br/>                            
                    <div class="panel panel-green">
                      <div class="panel-heading">
                        <h3 class="panel-title" >Datos</h3>
                      </div>
                      <div class="panel-body">
                        <div class="row">
                          <div class="col-lg-12 text-left"> 
                            <form id="fa-activofijo" action="gdaAlta" method="POST">                                                                
                              <div class="form-group ">
                                <label class="control-label" >Activo Fijo</label>
                                <select name="activoId" class="form-control" required="true">
                                  <option value="">Selecciona Activo Fijo</option>
                                  <c:forEach items="${activos}" var="activo">
                                      <option value="${activo.id}">${activo.productoProveedor.producto.nombreProducto}</option>
                                  </c:forEach>
                                </select>
                              </div>                                                                                       
                              <div class="form-group ">
                                <label class="control-label" >Tipo</label>
                                <select name="tipoactivofijoS" class="form-control" required="true">
                                  <option value="">Selecciona Tipo</option>
                                  <c:forEach items="${tipoAF}" var="tipo">
                                      <option value="${tipo.id}">${tipo.nombre}</option>
                                  </c:forEach>
                                </select>
                                <a href="addTipoAF">Agregar nuevo Tipo de Activo Fijo</a>
                              </div>                                                                                       
                              <div class="form-group">
                                <label class="control-label" >Fecha de Adquisición</label>
                                <input name="fecha" pattern="(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d" id="fecha" class="form-control" required="true"/>
                              </div>
                              <div class="form-group">
                                <label class="control-label" >Años de vida útil</label>
                                <input name="anosVidaUtil" id="fa-anosVidaUtil" 
                                       type="number" min="1" class="form-control" required="true"/>
                              </div>
                              <div class="form-group" style="text-align:right">
                                <input type="reset" class="btn btn-success" value="Cancelar">
                                <input type="submit" class="btn btn-success" value="Continuar">
                              </div> 
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>                               


                    <!--                          Fin Codigo Para panel 5 o menos input -->
                  </div>
                  <!--                      Fin TODO aqui abajo-->               
                </div>
              </div>
            </div>
          </center>
        </div>
      </div>
    </div>
    <!-- jQuery -->
    <script src="resources/js/libs/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/libs/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/js/libs/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/libs/sb-admin-2.js"></script>

    <!-- PARA FECHA -->
    <script type="text/javascript" src="resources/js/activofijo/jquery-ui.js"></script>        
    <script type="text/javascript">
        $(document).ready(function () {
            $("#fecha").datepicker({
                dateFormat: "dd-mm-yy",
                dayNames: ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"],
                dayNamesMin: ["Do", "Lu", "Ma", "Mi", "Ju", "Vi", "Sa"],
                monthNames: ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"]
            });
        });
    </script>

    <!--Para validar solo numeros-->
    <script type="text/javascript" src="resources/js/activofijo/jquery.numeric.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#fa-anosVidaUtil').numeric({decimal: false, negative: false});
        });
    </script>
  </body>
</html>
