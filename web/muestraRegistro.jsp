<%-- 
    Document   : muestraRegistro
    Created on : 07-09-2018, 8:35:41
    Authors     : Cristian Campos, David Orellana
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
                <h1 class="red-text">Producto guardado!</h1>
                <h5>Se guardaron los siguientes datos:</h5>
                <br/>
                <div class="card">
                    <div class="card-content">
                        <table>
                            <tr>
                                <td>Clave:</td>
                                <td><%= clave %></td>
                            </tr>
                            <tr>
                                <td>Nombre:</td>
                                <td><%= nombre %></td>
                            </tr>
                            <tr>
                                <td>Precio:</td>
                                <td><%= precio %></td>
                            </tr>
                            <tr>
                                <td>Cantidad</td>
                                <td><%= cantidad %></td>
                            </tr>
                        </table>
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
