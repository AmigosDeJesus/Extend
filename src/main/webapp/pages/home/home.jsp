<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>EXTEND</title>

<style>
*{
 margin:0;
 padding:0;
}

header{
 width: 100%;
 height: 60px;
 top: 0;
 left: 0;
 background-color: #777;
 position: fixed;
}

body{
 background-color:#f9f9f9;
}

#check{
 display:none;
 text-decoration:Extend;
}

#icone{
 cursor:pointer;
 padding:15px;
 position:absolute;
 z-index:1;
}

.barra{
 background-color:#333;
 height:100%;
 width:300px;
 position:absolute;
 transition:all .2s linear;
 left:-300px;
}

nav{
 width:100%;
 position:absolute;
 top:60px;
}

nav a{
 text-decoration:none;
}

.link{
 background-color:#494950;
 padding:20px;
 font-family:"Arial";
 font-size:12pt;
 transition:all .2s linear;
 color:#f4f4f9;
 border-bottom:2px solid #222;
 opacity:0;
 margin-top:200px;
}

.link:hover{
 background-color:#050542;
}

#check:checked ~ .barra{
 transform:translateX(300px);
}
 
#check:checked ~ .barra nav a .link{
 opacity:1;
 margin-top:0;
 transition-delay: .2s;
}

table, th, td {
    border: 1px solid gray;
}

table#t01 th#t01 {
    background-color: #CCCCCC;
}
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
<header><center><h2><strong>EXTEND</strong></h2></center></header>
<input type="checkbox" id="check">
<label id="icone" for="check"><img src="img/icone.png"></label>

<div class="bg"></div>

<div class="barra">

<nav>
    <a href="index.jsp"><div class="link"><span class="glyphicon">&#xe091;</span> Voltar</div></a>
    <a href="logoff.jsp"><div class="link"><span class="glyphicon">&#xe092;</span> Logoff</div></a>
</nav>

</div>
    <br><br>
        <div class="modal-dialog" style="margin-bottom:0">
            <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <div class="modal-content">
                        <div class="panel-body">
                            <form name="formulario">
                                <div class="form-group">
                                    <center><h3><label for="type">Temperature</h3></label>
                                </div>
                                <center><img src="img/thermometer.png" height="100" width="100">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="modal-content">
                        <div class="panel-body">
                            <form name="formulario">
                                <div class="form-group">
                                    <center><h3><label for="type">Alarm</h3></label>
                                </div>
                                <div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <table id="t01" height="100" width="100">
                                                <tr>
                                                    <th id="t01"><center>Home</th>
                                                <tr>
                                                    <th><center>Car</th>
                                                <tr>
                                                    <th><center>Fire</th>
                                            </table>
                                        </div>
                                        <div class="col-sm-6">
                                            <img src="img/alarm.png" height="100" width="100">
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="modal-content">
                        <div class="panel-body">
                            <form name="formulario">
                                <div class="form-group">
                                    <center><h3><label for="type">Electricity</h3></label>
                                </div>
                                <center><img src="img/electricity.png" height="100" width="100">
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="modal-content">
                        <div class="panel-body">
                            <form name="formulario">
                                <center><img src="img/add.png" height="100" width="100">
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