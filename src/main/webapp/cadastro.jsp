<!DOCTYPE html><!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>WIRE FRAME</title>

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
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
<header><center><h2><strong>Wire Frame</strong></h2></center></header>
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
            <div class="modal-content">
                <div class="panel-heading">
                    <center><h2><kbd>New Sensor</kbd></h2></center>
                </div>
                <div class="panel-body">
                    <form name="formulario">
            <div class="form-group">
                                <label for="type">Sensor Type:</label>
                                <select class="form-control" id="type">
                                      <option>Temperature</option>
                                      <option>Alarm</option>
                          <option>Electricity</option>
                          <option>***</option>
                                </select>
                        </div>
           
            <center><img src="img/grafico.png" height="170" width="170"></center>
                            <div class="form-group">
                                <label for="description">Description:</label>
                    <textarea class="form-control" rows="4" id="description"></textarea>
                            </div>

                            <center><button class="btn btn-sm btn-success" type="button" onclick="">OK</a></center>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>

<html>
<head>
<meta charset="UTF-8"/>
<title>WIRE FRAME</title>

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
</style>

<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>

<body>
<header><center><h2><strong>Wire Frame</strong></h2></center></header>
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
            <div class="modal-content">
                <div class="panel-heading">
                    <center><h2><kbd>New Sensor</kbd></h2></center>
                </div>
                <div class="panel-body">
                    <form name="formulario">
			<div class="form-group">
                                <label for="type">Sensor Type:</label>
                                <select class="form-control" id="type">
                              		<option>Temperarture</option>
                              		<option>Alarm</option>
			      		<option>Electricity</option>
			      		<option>***</option>
                            	</select>
                        </div>
			
			<center><img src="img/grafico.png" height="170" width="170"></center>
                            <div class="form-group">
                                <label for="descripition">Descripition:</label>
					<textarea class="form-control" rows="4" id="descripition"></textarea>
                            </div>

                            <center><button class="btn btn-sm btn-success" type="button" onclick="">Bounce</a></center>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
