<%-- 
    Document   : checarInventariosView
    Created on : Feb 14, 2015, 10:45:59 PM
    Author     : R2R
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SAPITO</title>

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/resources/css/libs/font-awesome.min.css" rel="stylesheet" type="text/css">


    </head>

    <body>

        <div id="wrapper"> 
            <%@include file="Menu/menuInventarios.jsp"%>

            <form>
                <div id="page-wrapper">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">
                                    Materia Prima
                                </h1>
                            </div>
                        </div>
                        <!-- /.col-lg-4 -->
                        <div class="panel panel-default">
                            <div class="row">
                                <div class="col-lg-12 text-left">
                                    <div class="panel panel-primary">
                                        <div class="panel-heading">
                                            <h2 class="panel-title">Registro materia prima </h2>
                                        </div>
                                        <div class="panel-body">
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>ID</label> 
                                                    <input class="form-control" autofocus placeholder="ID de materia prima" pattern="[0-9]{10}" required>  
                                                    <p class="help-block" ></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>Nombre</label> 
                                                    <input class="form-control" autofocus placeholder="Nombre de materia prima" pattern="[a-z]{20}" required>  
                                                    <p class="help-block" ></p>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="form-group">
                                                    <label>Cantidad</label> 
                                                    <input class="form-control" autofocus placeholder="Cantidad de materia prima" pattern="[0-9]{6}" required>  
                                                    <p class="help-block" ></p>
                                                </div>      
                                            </div>
                                            <div class="col-lg-12 text-left">
                                                <div class="form-group">
                                                    <label>Fecha de entrada</label>
                                                    <input type="date" class="form-control" autofocus required>
                                                </div>
                                            </div>          

                                        </div>  <!-- /#fin del panel -->
                                    </div>
                                    <div align="right">
                                        <button type="submit" class="btn btn-primary">Aceptar</button>
                                        <button type="button" class="btn btn-danger">Cancelar</button>
                                    </div>
                                </div>
                            </div>
                            <!-- /.col-lg-4 -->
                        </div>
                    </div>
                </div>
            </form>


            <!-- jQuery -->

            <script src="${pageContext.request.contextPath}/resources/js/libs/jquery.min.js"></script>

            <!-- Bootstrap Core JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/libs/bootstrap.min.js"></script>

            <!-- Metis Menu Plugin JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/libs/metisMenu.min.js"></script>

            <!-- Custom Theme JavaScript -->
            <script src="${pageContext.request.contextPath}/resources/js/libs/sb-admin-2.js"></script>

    </body>

</html>