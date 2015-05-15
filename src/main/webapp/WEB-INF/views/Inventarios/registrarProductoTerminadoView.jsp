<%-- 
    Document   : checarInventariosView
    Created on : Feb 14, 2015, 10:45:59 PM
    Author     : Elizabeth
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <%@include file="inventariosHead.jsp" %>
    <title>SAPito</title>
  </head>
  <body>
    <div id="wrapper">           
      <%@include file="inventariosNavs.jsp" %>
      <div id="page-wrapper">
        <div class="container-fluid">

          <div class="row">
            <div class="col-lg-12">
              <h1 class="page-header">
                Producto Terminado
              </h1>
            </div>
          </div>
          <!-- /.col-lg-4 -->
          <form:form id="fnvo-producto" commandName="inventario" action="nvoproducto" method="POST" >
              <div class="row">
                <div class="col-lg-12 text-left">
                  <div class="panel panel-green">
                    <div class="panel-heading">
                      <h2 class="panel-title">Registro de producto terminado </h2>
                    </div>
                    <div class="panel-body">

                      <div class="col-lg-12">
                        <div class="form-group">
                          <label for="fnvoc-codigoInventario">Código Inventario</label>
                          <form:input path="codigoInventario" name="codigoInventario" id="fnoc-codigoInventario" type="text" class="form-control" placeholder="Código de inventario" required="required"/>
                          <form:errors path="codigoInventario" element="div" class="alert-danger pad-10"/>
                        </div>
                      </div>

                      <div class="col-lg-12">
                        <div class="form-group">
                          <label for="fnvoc-nombre">Nombre</label>  
                          <form:input path="nombre" name="nombre" id="fnoc-nombre" type="text" class="form-control" placeholder="Nombre del producto" required="required"/>
                          <form:errors path="nombre" element="div" class="alert-danger pad-10"/>
                        </div>
                      </div>

                      <div class="col-lg-12">
                        <div class="form-group">
                          <label for="fnvoc-cantidad">Cantidad</label> 
                          <form:input path="cantidad" name="cantidad" id="fnoc-cantidad" type="number" class="form-control" placeholder="Cantidad del producto" required="required"/>
                          <form:errors path="cantidad" element="div" class="alert-danger pad-10"/>
                        </div>
                      </div>

                      <div class="col-lg-12">
                        <div class="form-group">
                          <label for="fnvoc-maximo">Máximo</label>
                          <form:input path="maximo" name="maximo" id="fnoc-maximo" type="number" class="form-control" placeholder="Cantidad máxima de producto" required="required"/>
                          <form:errors path="maximo" element="div" class="alert-danger pad-10"/>
                        </div>
                      </div>

                      <div class="col-lg-12">
                        <div class="form-group">
                          <label for="fnvoc-minimo">Mínimo</label>
                          <form:input path="minimo" name="minimo" id="fnoc-minimo" type="number" class="form-control" placeholder="Cantidad mínima de producto" required="required"/>
                          <form:errors path="minimo" element="div" class="alert-danger pad-10"/>
                        </div>
                      </div>

                      <div class="col-lg-12 text-left">
                        <div class="form-group">
                          <label for="fnvoc-fechaEntrada">Fecha de entrada</label>
                          <form:input  path="fechaEntrada" name="fechaEntrada" id="fnoc-fechaEntrada" type="date" class="form-control"/>
                          <form:errors path="fechaEntrada" element="div" class="alert-danger pad-10"/>
                        </div>
                      </div>
                      <div class="col-lg-12 text-left">
                        <div class="form-group">
                          <label for="fnvoc-fechaProduccion">Fecha de producción</label>
                          <form:input   path="fechaProduccion" name="fechaProduccion" id="fnoc-fechaProduccion" type="date" class="form-control"/>
                          <form:errors path="fechaProduccion" element="div" class="alert-danger pad-10"/>
                        </div>
                      </div>

                      <div class="col-lg-12">
                        <div class="form-group">
                          <label>Ubicación</label> 
                          <form:input path="ubicacion" name="ubicacion" id="fnoc-ubicacion" type="text" class="form-control" placeholder="Ubicación del producto" required="required"/>
                          <form:errors path="ubicacion" element="div" class="alert-danger pad-10"/>
                        </div>
                      </div>

                    </div>  <!-- /#fin del panel -->
                  </div>
                  <div align="right">
                    <button type="submit" class="btn btn-success">Aceptar</button>
                  </div> 

                </div>
              </div>
          </form:form>
          <!-- /.col-lg-4 -->
        </div>
      </div>
    </div>
    <%@include file="inventariosFooter.jsp" %>
    <script >
        $(document).ready(function () {
            activatenb('nb-nvoproducto');
        });
    </script>
  </body>
</html>