<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Gestor de Organizadores</title>

    <!-- Bootstrap core CSS -->
    <link rel='stylesheet prefetch'
          href='${request.contextPath}/bducu/css/bootstrap.min.css'>
    <link rel='stylesheet prefetch'
          href='${request.contextPath}/bducu/css/simple-sidebar.css'>
    <script src="${request.contextPath}/bducu/js/jquery.min.js"></script>

</head>

<body>

<div id="wrapper" class="toggled">

    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li class="sidebar-brand">
                <a href="#">
                    Bienvenido ${session.userAccountResponse.name}  ${session.userAccountResponse.lastName}
                </a>
            </li>
            <li>
                <g:link controller="organizer">Organizadores</g:link>
            </li>
            <li>
                <g:link controller="role">Roles</g:link>
            </li>
            <li>
                <g:link controller="user">Usuarios</g:link>
            </li>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <li>
                <g:link style="color:blank;" controller="auth" action="logout">Cerrar Sesion</g:link>
            </li>
        </ul>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <div class="container-fluid">

            <h1>Mis Organizadores</h1>

            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Descripcion</th>
                    <th scope="col">Tipo Organizador</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${organizers}" var="organizer" status="i">
                    <tr>
                        <th scope="row">${organizer.id}</th>
                        <td>${organizer.name}</td>
                        <td>${organizer.description}</td>
                        <td>${organizer.type}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>


    <br>
    <hr class="style1">
    <br>


    <!-- /#page-content-wrapper -->
    <div class="row">
    <h3 style="
    margin-left: 41px;
    margin-top: 174px;
    ">Buscar Elementos</h3>
        <div class="col-12 col-md-10 col-lg-8">
            <input id="searchQuery" class="form-control form-control-lg " type="search" placeholder="Nombre o Descripcion de elemento" style=" margin-top: 25px;
            margin-left: 25px;>
        </div>

            <div class="col-auto">
            <button id="seachButton" class="btn btn-md btn-success" type="submit" style="
            margin-left: 767px;
            margin-top: -58px;
            ">Search</button>
            </div>
    </div>

        <!--end of col-->
    </div>

</div>

<!-- /#wrapper -->

<!-- Bootstrap core JavaScript -->
<script src="${request.contextPath}/bducu/js/bootstrap.min.js"></script>
<script src="${request.contextPath}/bducu/js/ajaxHelper.js"></script>
<!-- Menu Toggle Script -->
<script>
    $("#menu-toggle").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
</script>

</body>

</html>