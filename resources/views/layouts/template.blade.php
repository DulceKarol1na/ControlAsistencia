<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Control Aprendices</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-lg" >
<div class= "titles">
    
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="inicio">INICIO</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="IngresoAprendiz">Ingresar Aprendiz</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="IngresoInstructor">Ingresar Instructor</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="reporte">Reporte de Asistencia</a>
                </li>
            </ul>
        </div>
    </div>

</nav>
<!-- End Navbar-->

<div class="container">
    <div class="row">
        <!-- Content--->
        <div class="col-md-9" style="">
             @yield('contenido')
        </div>
        <!-- end Content-->
    </div>
</div>
<footer>
  <center>  Control Aprendices - 2021 - Jessica Carolina Zabala </center>
</footer>


</body>
</html>

<style>

</style>