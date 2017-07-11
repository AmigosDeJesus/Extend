<!DOCTYPE html><!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>Adicionar Sensor</title>
   
    <script type="text/javascript">
		
		var imagemSensor;
		var slcType;						
		var slcGraph;					
		var caminhoImagemSensor;
		var caminhoImagemGrafico;
    	
		
		//Função de alterar a imagem do Sensor e escolher o tipo de gráfico
		function alteraSensor(){
			
			//Declarando o valor das variáveis
			imagemSensor = document.getElementById('id-da-imagem'); 		//Exibe as imagens
			caminhoImagemSensor = document.getElementById('type').value;	//Caminho da imagem do sensor
			slcType = document.getElementById('type');						//Select do tipo de sensor
			slcGraph = document.getElementById('graph');					//Select do tipo de gráfico
			
			
			//Altera o source da imagem armazenada
			imagemSensor.src = caminhoImagemSensor;
			
			
			// Loop para escolher o tipo de gráfico correspondente ao sensor selecionado
			for(var opt=0;opt<slcType.length;opt++){
				
				if(slcType.selectedIndex == opt){
					slcGraph.selectedIndex = opt;
				}
				
        	}
		}
		
		//Função de alterar a imagem do Gráfico do sensor
    	function alteraImagem(){
			
			//Declarando o valor das variáveis
			imagemSensor = document.getElementById('id-da-imagem'); 		//Exibe as imagens
			caminhoImagemGrafico = document.getElementById('graph').value;	//Caminho da imagem do gráfico
			
			// Altera o source da imagem armazenada
			imagemSensor.src = caminhoImagemGrafico;
		}
    </script>

</head>

<body>
	<jsp:include page="../../partials/header/header.jsp"/>

	<br><br>
	<div class="modal-dialog" style="margin-bottom:0">
		<div class="modal-content">
			<div class="panel-heading">
				<center>
                	<h2><kbd>New Sensor</kbd></h2>
                </center>
			</div>
			<div class="panel-body">
				<form name="formulario">
					<div class="form-group">
						<label for="type">Sensor Type:</label>
                        <select onChange="javascript:alteraSensor();" class="form-control" id="type">
                            <option value="../../img/graficos/img4.jpg">*</option>
                            <option value="../../img/graficos/img1.jpg">Temperature</option>
                            <option value="../../img/graficos/img2.jpg">Alarm</option>
                            <option value="../../img/graficos/img3.jpg">Electricity</option>
                        </select>
					</div>

					<div class="form-group">
                        <label for="graph">Graph Type:</label>
                        <select onChange="javascript:alteraImagem();" class="form-control" id="graph">
                        	<option value="../../img/graficos/img4.jpg">Todos os gráficos</option>
                            <option value="../../img/graficos/img1.jpg">Barras</option>
                            <option value="../../img/graficos/img2.jpg">Setores</option>
                            <option value="../../img/graficos/img3.jpg">Linhas</option>
                        </select>
                    </div>

					<center>
                    	<img src="../../img/graficos/img4.jpg" width="300" height="300" id="id-da-imagem" />
                    </center>

                    <div class="form-group">
                    	<label for="description">Description:</label>
                    	<textarea class="form-control" rows="4" id="description"></textarea>
                    </div>

                    <div class="form-group">
                    	<label for="calculo">Sensor Number:</label>
                    	<input type="text" class="form-control" placeholder="ac12f5h789olf56dhdlnchfkldofhgjtutikgfkf" name="id" disabled>
                    </div>

					<center>
                    	<a href="./../home/home.jsp" class="btn btn-sm btn-success" type="button">OK</a>
                    </center>
				</form>
			</div>
		</div>
	</div>
	<br><br>
</body>
</html>