<%@page import="com.github.amigos_de_jesus.extend.model.GraphType"%>
<%@page import="com.github.amigos_de_jesus.extend.model.Type"%>
<%@page import="com.github.amigos_de_jesus.extend.model.Sensor"%>
?<!DOCTYPE html><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Adicionar Sensor</title>
    <script src="cadastro.js"></script>
</head>
<body>
    <% 
        Sensor sensor = (Sensor) request.getAttribute("sensor");
    %>
    
    <jsp:include page="../../partials/header/header.jsp"/>
    <br/><br/>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="panel-heading">
                <center><h2><kbd>New Sensor</kbd></h2></center>
            </div>
            <div class="panel-body">
                <form name="formulario">
                    <div class="form-group">
                        <label for="type">Sensor Type:</label>
                        <select onChange="alteraSensor();" class="form-control" id="type">
                            <option value="../../img/graficos/img4.jpg">*</option>
                            <option <%= 
                                    (sensor!=null && sensor.type().equals(Type.TEMPERATURE))? 
                                            "selected=\"selected\"" : ""
                                %> value="../../img/graficos/img1.jpg">Temperature</option>
                            <option
                                <%= 
                                    (sensor!=null && sensor.type().equals(Type.ALARM))? 
                                             "selected=\"selected\"" : "" 
                                %> value="../../img/graficos/img2.jpg">Alarm</option>
                            <option 
                                <%= 
                                    (sensor!=null && sensor.type().equals(Type.ELETRICITY))? 
                                            "selected=\"selected\"" : ""
                                %> value="../../img/graficos/img3.jpg">Electricity</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="graph">Graph Type:</label>
                        <select onChange="alteraImagem();" class="form-control" id="graph">
                            <option value="../../img/graficos/img4.jpg">Todos os gráficos</option>
                            <option <%= 
                                (sensor!=null && sensor.representation().equals(GraphType.BARRAS))? 
                                        "selected=\"selected\"" : ""
                                %> value="../../img/graficos/img1.jpg">Barras</option>
                            <option <%= 
                                (sensor!=null && sensor.representation().equals(GraphType.SETORES))? 
                                        "selected=\"selected\"" : ""
                                %> value="../../img/graficos/img2.jpg">Setores</option>
                            <option <%= 
                                (sensor!=null && sensor.representation().equals(GraphType.LINHAS))? 
                                        "selected=\"selected\"" : ""
                                %> value="../../img/graficos/img3.jpg">Linhas</option>
                        </select>
                    </div>
                    <center>
                        <img src="<%= 
                                (sensor!=null)? 
                                      "../../img/" + sensor.representation().imgPath() 
                                        : "../../img/graficos/img4.jpg"
                                %>" width="300" height="300" id="id-da-imagem" />
                    </center>
                    <div class="form-group">
                        <label for="description">Description:</label>
                        <textarea class="form-control" rows="4" id="description"><%=
                                (sensor!=null)? 
                                    sensor.description() : ""
                        %></textarea>
                    </div>
                    <div class="form-group">
                        <label for="calculo">Sensor Number:</label>
                        <input type="text" class="form-control" placeholder="<%= 
                                sensor != null? 
                                        sensor.publicId()
                                        :"Will be filled later"
                                %>" name="id" disabled>
                    </div>
                    <center>
                        <a onClick="submit()" class="btn btn-sm btn-success" type="button">OK</a>
                        
                        <% if(sensor!=null) { %>
                        <a onClick="excluir()" class="btn btn-sm btn-danger" type="button">EXCLUIR</a>
                        <% } %>
                    </center>
                </form>
            </div>
        </div>
    </div>
    <br/><br/>
</body>
</html>