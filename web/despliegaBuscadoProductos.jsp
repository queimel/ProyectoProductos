<%-- 
    Document   : despliegaBuscadoProductos
    Created on : 07-09-2018, 8:38:53
    Author     : Cristian Campos, David Orellana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col s6">
                <h1 class="red-text">Productos Encontrados!</h1>
                <h5>Los productos encontrados son:</h5>
                <br/>
                <div class="card">
                    <div class="card-content">
                        <table class="striped">
                            <tr>
                                <th>Clave</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Cantidad</th>
                            </tr>
                            <tr>
                                <td>12345</td>
                                <td>leche</td>
                                <td>15.25</td>
                                <td>31</td>
                            </tr>
                            <tr>
                                <td>23456</td>
                                <td>pan</td>
                                <td>17.5</td>
                                <td>18</td>
                            </tr>
                        </table>
                        <br/>
                        <div class="row">
                            <p class="col s5 ">Número de registros: <span class="new badge teal lighten-2" data-badge-caption="">2</span></p>
                        </div>
                    </div>
                    <div class="card-action">
                        <div class="row">
                            <div class="right">
                                <button class="btn waves-effect waves-light  red darken-1" url="index.jsp"><i class="material-icons left">arrow_back</i> Volver</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
