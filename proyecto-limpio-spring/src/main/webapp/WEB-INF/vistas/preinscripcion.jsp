<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
	<!-- Bootstrap core CSS -->
	    <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <!-- Bootstrap theme -->
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">		         
	</head>
	<body>
	<div class="gcba-fixed-top">
      <div class="header-gcba">
          <div class="header-inner">
            <div class="container">
              <img class="img-responsive" src="img/imagen1.png">
              <!--h2 class="slogan">En todo est&aacute;s vos</h2-->
            </div>
          </div>
      </div>
    </div>
	<div class="container">
	  <form>				
		    <div class="form-group"> <!-- Nombre -->
		        <label for="nombre_id" class="control-label">Nombre</label>
		        <input type="text" class="form-control" id="nombre_id" name="nombre_name" placeholder="Ingrese su nombre">
		    </div>    
		
		    <div class="form-group"> <!-- Apellido -->
		        <label for="apellido_id" class="control-label">Apellido</label>
		        <input type="text" class="form-control" id="apellido_id" name="apellido_name" placeholder="Ingrese su apellido">
		    </div>  
		    
		    <div class="form-group"> <!-- Pais -->
		        <label for="pais_id" class="control-label">Pais de nacimiento</label>
		        <select class="form-control" id="pais_id" class="required valid">
					<option value="1">Argentina</option>
					<option value="2">Bolivia</option>
					<option value="3">Brasil</option>
					<option value="4">Chile</option>
				    <option value="5">Colombia</option>
					<option value="6">Ecuador</option>
				    <option value="7">Paraguay</option>
				    <option value="8">Perú</option>
				    <option value="9">Uruguay</option>
					<option value="10">Venezuela</option>
				    <option value="11">Otros países de América</option>
					<option value="12">Países de Europa</option>
					<option value="13">Corea</option>
				    <option value="14">Rep. Popular de China</option>
					<option value="15">Taiwan</option>
		            <option value="16">Otros países de Asia</option>
					<option value="17">Otros</option>
		        </select>  		        		  		                          
		    </div>   
		    
		    <div class="form-group"> <!-- Sistema de salud -->
		        <label for="salud_id" class="control-label">Sistema de salud</label>
		        <select class="form-control" id="salud_id">
		            <option value="">Seleccionar</option>
					<option value="Hospital publico">Hospital público</option>
					<option value="Obra social">Obra social</option>
				    <option value="Pre-paga">Pre-paga</option>
		        </select>                    
		    </div>               
		                            
		    <div class="form-group"> <!-- Documento -->
		        <label for="doc_id" class="control-label">Documento</label>
		        <input type="text" class="form-control" id="doc_id" name="doc" placeholder="Ingrese su documento">
		    </div>    
		
		     <div class="form-group"> <!-- Sexo -->
		        <label for="sexo_id" class="control-label">Sexo</label>
		        <select class="form-control" id="genero_id">
		            <option value="M">Masculino</option>
		            <option value="F">Femenino</option>
		        </select>                    
		    </div>                                    
		                            
		    <div class="form-group"> <!-- Nivel -->
		        <label for="nivel_id" class="control-label">Nivel</label>
		        <select class="form-control" id="nivel_id">
		            <option value="P">Primario</option>
		            <option value="S">Secundario</option>
		        </select>                    
		    </div>
		  	    
		    <div class="form-group"> <!-- Problemas de Salud -->		    	
		        <div><label>¿Problemas de salud existentes?</label></div>
		        <label class="checkbox-inline"><input type="checkbox" value="">Fisicos</label>
				<label class="checkbox-inline"><input type="checkbox" value="">Alergias</label>
				<label class="checkbox-inline"><input type="checkbox" value="">Sensorial</label>	
				<label class="checkbox-inline"><input type="checkbox" value="">Epileptico</label>
				<label class="checkbox-inline"><input type="checkbox" value="">Otros</label>	     		     
		    </div>   
		    
		    <div class="form-group"> <!-- Certificado Disc -->		    	
		        <div><label>¿Tiene certificado de discapacidad?</label></div>
		        <select class="form-control" id="certificado_id">
		        	<option value="">Seleccionar</option>
		            <option value="si">Si</option>
		            <option value="no">No</option>
		        </select>     
		    </div>
		    
		    <div class="form-group"> <!-- Enviar -->
		        <button type="submit" class="btn btn-primary">Enviar</button>
		    </div>  
	  </form>
	</div>	
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>
