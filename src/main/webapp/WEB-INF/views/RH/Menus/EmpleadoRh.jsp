
<div id="wrapper">
    <!-- New navigation bars -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="rhempleadobase">SAPito</a>
        </div>

        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <!-- Messages -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" onClick="return noFuncional();"><i class="fa fa-envelope"></i> <b class="caret"></b></a>

            </li>

            <!-- Alerts -->
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" onClick="return noFuncional();"><i class="fa fa-bell"></i> <b class="caret"></b></a>

            </li>

            <!-- User menu -->
            <li class="dropdown">
                   <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Recursos Humanos <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#" onClick="return noFuncional();"><i class="fa fa-fw fa-user"></i> Perfil</a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="indexMain"><i class="fa fa-fw fa-power-off"></i> Cerrar sesi�n</a>
                    </li>
                </ul>
            </li>
        </ul>

        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav"  id="side-menu">

                <li>
                    <a href="#"><i class="fa fa-fw fa-taxi"></i> Vacaciones<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="altaVacacionEmpleadoBase">Alta</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="asistenciaEmpleadoBase"><i class="fa fa-fw fa-taxi"></i>Asistencia</a>
                    <!-- /.nav-second-level -->
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>
