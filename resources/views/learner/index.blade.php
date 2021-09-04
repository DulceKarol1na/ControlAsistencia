@extends('layouts.template')
@section('contenido')

<!DOCTYPE html>
<html>
<head>
<title>Registro Aprendiz</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
</head>

<body>

<div class= "container">
    <div class= "row">
        <div class= "col-md-12">
        <table class="table table-success table-striped">
            <thead>
                <tr>
                <th scope="col"># Identificacion</th>
                <th scope="col">Nombre </th>
                <th scope="col">Apellido</th>
                <th scope="col">Email</th>
     <!--       <th scope="col">Jornada</th>
                <th scope="col">Programa</th>
                <th scope="col">Ficha</th>
                <th scope="col">Instructor</th> -->
                <th scope="col"> Acciones </th>
                </tr>
            </thead>
            <tbody>
            @foreach($learner as $learner)    
                <tr>
                <td>{{ $learner-> identificationnumber}}</td>
                <td>{{ $learner-> name}}</td>
                <td>{{ $learner-> lastaname}}</td>
                <td>{{ $learner-> email}}</td>
        <!--    <td>{{ $learner-> workingday_id}}</td>
                <td>{{ $learner-> program_id}}</td>
                <td>{{ $learner-> course_id}}</td> 
                <td>{{ $learner-> instructor_id}}</td>-->
                <td>
                    <a href="">Detalles</a>
                    <a href="">Editar</a>
                    <a href="">Eliminar</a>
                </td>
                </tr>
            @endforeach
            </tbody>
            </table>
        </div>
    </div>
</div>

</body>

</html>












@endsection