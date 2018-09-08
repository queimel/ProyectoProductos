<%-- 
    Document   : index
    Created on : Sep 6, 2018, 9:54:00 PM
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
    <%@ page import="controller.registraProducto" %>
    <%@ page import="controller.muestraProductos" %>
    <div class="container">
        <div class="row">
            <div class="col s8">
                <h1 class="red-text">Hola!</h1>
                <h5>Ingresa los datos del producto</h5>
                <br/>
                <div class="card">
                    <form method="post" name="formRegistrar">
                        <div class="card-content">
                            <div class="input-field">
                                <input type="text" name="clave" id="clave" class="">
                                <label for="clave">Clave</label>
                            </div>
                            <div class="input-field">
                                <input type="text" name="nombre" id="nombre" class="">
                                <label for="nombre">Nombre</label>
                            </div>
                            <div class="input-field">
                                <input type="text" name="precio" id="precio" class="">
                                <label for="precio">Precio</label>
                            </div>
                            <div class="input-field">
                                <input type="text" name="cantidad" id="cantidad" class="">
                                <label for="cantidad">Cantidad</label>
                            </div>
                        </div>
                        <div class="card-action">
                            <div class="row">
                                <div class="left">
                                    <button class="waves-effect waves-teal btn-flat orange-text darken-4" type="submit" onclick="document.formRegistrar.action='muestraProductos'">Ver productos <i class="material-icons right">remove_red_eye</i></button> 
                                </div>
                                <div class="right">
                                    <button class="btn waves-effect waves-light lighten-2" type="reset" name="borrar">Borrar <i class="material-icons right">delete</i></button>
                                    <button class="btn waves-effect waves-light  darken-3" type="submit" name="registrar" onclick="document.formRegistrar.action='registraProducto'">Registrar <i class="material-icons right">add</i></button>
                                    <button class="btn waves-effect waves-light   darken-1" type="submit" name="Buscar">Buscar <i class="material-icons right">search</i></button>
                                </div>
                            </div>
                        </div>
                    </form>
                
                </div>
            </div>
        </div>
    </div>
</body>
</html>
