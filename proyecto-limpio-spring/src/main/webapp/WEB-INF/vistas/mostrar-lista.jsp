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
		<div class = "container">
		
			<h3>Todas las instituciones</h3>

			<table class="table table-striped">
				<thead><tr ><th>Nombre</th><th>Nivel</th><th>Orientacion</th><th></th></tr></thead>
				<tbody>
				<c:forEach items="${lista}" var="inst" varStatus="count">					
						
					<tr><td><input type="text" value="${inst.nombre}"/></td>
					<td><input type="text" value="${inst.nivel}"/></td>				
					<td><input type="text" value="${inst.orientacion}"/></td></tr>
												
				</c:forEach>
				
				</tbody>
			</table>			
		  			
		</div><div>${messageAMostrar}</div> 
		
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>
