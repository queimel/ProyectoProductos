<%-- 
    Document   : despliegaProductos
    Created on : 07-09-2018, 8:37:50
    Author     : Cristian Campos, David Orellana
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Productos</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
</head>
<body>
    <%@page import="java.util.ArrayList"%>
    <%@page import="model.Producto"%>
    <%
        ArrayList<Producto> productos = null;
        productos= (ArrayList<Producto>)request.getAttribute("Productos");
    %>
    <div class="container">
        <div class="row">
            <div class="col s8">
                <h1 class="red-text">Lista de Productos</h1>
                <h5>Los productos que están registrados son:</h5>
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
                            <%
                                for (Producto producto : productos) {
                            %>
                            <tr>
                                <td><%=producto.getClave()%></td>
                                <td><%=producto.getNombre()%></td>
                                <td><%=producto.getPrecio()%></td>
                                <td><%=producto.getCantidad()%></td>
                            </tr>
                            <% }%>
                        </table>
                        <br/>

                    </div>
                    <div class="card-action">
                        <div class="row">
                            <div class="left">
                                <p>Número de registros: <span class="new badge teal lighten-2" data-badge-caption=""><%= productos.size() %></span></p>
                            </div>
                            <div class="right">
                                <form action="index.jsp" method="post">
                                    <button class="btn waves-effect waves-light  red darken-1" url="index.jsp"><i class="material-icons left">arrow_back</i> Volver</button>
                                </form>
                            </div>
                        </div>
                    </div>              
                </div>
            </div>
        </div>
    </div>
</body>
</html>
