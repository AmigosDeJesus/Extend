<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.github.amigos_de_jesus.extend.model.Sensor"%>
<html>
<head>
    <title>Extend</title>
    <link rel="stylesheet" href="home.css">
</head>
<body>
    <jsp:include page="../../partials/header/header.jsp"/>
    <br/><br/>
        <div class="container-fluid">
            <div class="row">
                <%
                    List<Sensor> sensores =
                        (List<Sensor>) request.getAttribute("sensores");
                    if(sensores != null) 
                        for(Sensor sensor:sensores) {
                %>
                <div class="col-sm-4">
                    <div class="modal-content">
                        <div class="panel-body">
                            <form name="formulario">
                                <div class="form-group">
                                    <center>
                                        <h3><label><%= sensor.type().toString() %></label></h3>
                                    </center>
                                </div>
                                <center>
                                    <img src=<%= sensor.representation().toString() %>
                                            height="100" width="100"/>
                                </center>
                            </form>
                        </div>
                    </div>
                </div>
                <% } %>

                <div class="col-sm-4">
                    <a href="../cadastro/cadastro.jsp">
                        <div class="modal-content">
                            <div class="panel-body">
                                <form name="formulario">
                                    <center>
                                        <img src="./../../img/add.png" height="100" width="100">
                                    </center>
                                </form>
                            </div>
                        </div>
                    </a>
                </div>
                
            </div>
        </div>
    </body>
</html>
