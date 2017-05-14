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
			<form:form action="datos-registrados" method="POST" modelAttribute="preInscripto">
	<input type="hidden" id="idAlumno" name="idAlumno" value="0">
	<div class="page-header"></div>
	<div class="container-fluid">
		<div class="span9 offset1">
			<h2>Nivel </h2><h6> (*) Campos obligatorios</h6>
			<div class="well">
				<div class="row">
					<div class="span9">
						<div class="row">
							<div class="span3">
								<label>Nivel (*)</label>
																<div id="selectNivel" style="width:215px;">
									<div class="flecha"></div>
									<select id="nivel" name="nivel" class="required input-medium valid">
																					<option value="">Seleccionar</option>
																															<option value="1">Inicial</option>
																						<option value="2">Primario</option>
																						<option value="3">Secundario</option>
																						<option value="4">Terciario</option>
																						<option value="7">Socioeducativo</option>
																						<option value="4*5">Adultos y Adolescentes</option>
																				</select>
								</div>

							</div>
							<div class="span3" id="selectModalidadContainer">
								<label class="modLabel">Tipo u opción (*)</label>
								<div id="selectModalidad" style="width:215px;"> 
<div class="flecha" id="flecha_modalidad" style=""></div>
<select id="modalidad" name="modalidad" class="required valid">
	<option value="">Seleccionar</option>
			<option value="3">Inicial</option>
	 		<option value="17">Escuelas Normales Superiores (ENS)</option>
	 		<option value="11">Especial</option>
	 </select>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         </div>
							</div>
							<div class="span3" id="especialidad_container" style="display: none;">	<label>Especialidad (*)</label>

<select id="especialidad" name="especialidad" style="width: 150px;" class="">
	<option value="">Seleccionar</option>
			<option value="26">Escuela Infantil</option>
	 		<option value="38">Jardin de Infantes Comun</option>
	 		<option value="39">Jardin de Infantes Integral</option>
	 		<option value="40">Jardin de Infantes Nucleado</option>
	 		<option value="43">Jardin Maternal</option>
	 </select>
		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         </div>
							<div class="span3" id="modalidad_cursada_container" style="display: none;">
								<label>Modalidad de Cursada (*)</label>
									<select id="modalidad_cursada" name="modalidad_cursada" class="required" style="width: 150px;" disabled="disabled">
										<option value="">Seleccionar</option>
										<option value="Presencial">Presencial</option>
										<option value="Distancia">A distancia</option>
									</select>
							</div>
							<div class="span3" id="gradoSala_container" style=""><label>
Sala (*) </label>
<input type="hidden" name="mensajeGradoSala" id="mensajeGradoSala" value="la Sala"> <select id="gradoSala" name="gradoSala" class="checkGradoSala" disabled="disabled">
	<option value=""></option>
			<option value="11">Lactario</option>
	 		<option value="12">1 año</option>
	 		<option value="13">2 años</option>
	 		<option value="14">3 años</option>
	 		<option value="15">4 años</option>
	 		<option value="16">5 años</option>
	 </select>
	<i class="icon custom-tooltip" data-content="Se completará automáticamente cuando ingreses la fecha de nacimiento." data-placement="right" data-toggle="popover" data-trigger="hover" data-original-title="Sala"></i>
 <script>
	$("i[data-toggle=popover]")
		.popover()
		.click(function(e) {
		  e.preventDefault()
		})
</script>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         </div>
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<h2>Datos del aspirante</h2>
			<br>
			<h3>A. Datos Personales.
			</h3><h6>(*) campos obligatorios</h6>
			<div class="well">
				<div class="row">
					<div class="span9">
						<div class="row">
							<div class="span10" id="nacimiento_container">
                                <label style="clear: none; display: inline-block;" id="seleccionFecha">Fecha de nacimiento o fecha probable de parto (*)</label><i class="icon custom-tooltip" id="infoParto" data-content="Si estás embarazada y querés preinscribir a tu bebé, consigná tu fecha probable de parto." data-placement="right" data-toggle="popover" data-trigger="hover" data-original-title="Aún no nacido">
									</i>
								<br>
								<input type="text" placeholder="dd-mm-aaaa" class="input-big required fechaArg hasDatepicker" id="fecha_nacimiento_picker" name="fecha_nacimiento_picker" value="">&nbsp;<br>
									<span class="nonacido_label" style="display:none;">Estás realizando una preinscripción de un no nacido.</span>
								<input type="hidden" id="fecha_nacimiento_alt" name="fecha_nacimiento" value="">
							</div>


							<input type="checkbox" name="no_nacio" id="no_nacio" style="display: none">
						</div>
					</div>
				</div>
			</div>


			<div class="well">
				<div class="row datosPersonalesAlumno">
					<div class="span9">
						<div class="row">
							<div class="span3">
								<label>Nombre (*)</label>
								<input type="text" class="required span3" id="nombre" name="nombre" value="">
							</div>
							<div class="span3">
								<label>Apellido (*) </label>
								<input type="text" id="apellido" name="apellido" class="required span3" value="">
							</div>
							<div class="span3">
								<label>Sexo (*)</label>
																			<select id="sexo" name="sexo" class="required span2">
											<option value="">Seleccionar</option>
																						<option value="1">Masculino</option>
																					<option value="2">Femenino</option>
																			</select>
							</div>
						</div>
						<div class="row">
							<div class="span3">
								<label>Tipo de documento (*)</label>
																		<select id="tipo_documento" name="tipo_documento">
									<option value="">Seleccionar</option>
																														<option value="1">Documento Nacional de Identidad</option>
																															<option value="3">Partida de nacimiento</option>
																																																			<option value="6">Credencial residencia precaria</option>
																															<option value="7">Pasaporte extranjero</option>
																															<option value="8">Cédula extranjera</option>
																															<option value="9">Otro documento extranjero</option>
																															<option value="10">Documento en trámite</option>
																															<option value="11">Sin documento</option>
																		</select>
							</div>


							<div class="span3">
								<label>Número (*)</label>
								<input type="text" id="numero_documento" name="numero_documento" value="" class="">
							</div>

							
						</div>

						<div class="row">
							<div class="span3">
								<label>País de nacimiento (*)</label> 								<select id="nacionalidad" name="nacionalidad" class="required">
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

							<div class="span3">
								<label>Sistema de salud (*)</label>
																<select id="sistema_salud" name="sistema_salud">
									<option value="">Seleccionar</option>
																			<option value="Hospital público">Hospital público</option>
																			<option value="Obra social">Obra social</option>
																			<option value="Pre-paga">Pre-paga</option>
																	</select>
							</div>
							<div class="span3">
								<label class="telefonoLabel">Teléfono</label>
								<input type="text" name="cod_area" id="cod_area" style="width: 35px; display: none;" value="">
								<input style="width: 105px;" type="text" id="telefono" name="telefono" value="" class="digits">
							</div>
						</div>
						<div class="row">
							<div class="span3" id="emailContainer" style="display: none;">
								<label>E-mail (*)</label>
								<input type="text" id="email" name="email" value="" class="required email">
							</div>
						</div>
						<div class="row">
							<div class="span8">
								<label>¿Problemas de salud existentes?(*)</label>
								<div class="controls">
																		<div class="span1">
									<label class="checkbox inline" for="discMotora">Físicos</label>
										<input style="margin-top: -35px;" type="checkbox" name="discMotora" id="discMotora">
									</div>
									<div class="span1">
									<label class="checkbox inline" for="discMental">Alergias
									</label>
										<input style="margin-top: -35px;" type="checkbox" name="discMental" id="discMental">
									</div>
									<div class="span1">
									<label class="checkbox inline" for="discSensorial">Sensorial
									</label>
										<input style="margin-top: -35px;" type="checkbox" name="discSensorial" id="discSensorial">
									</div>
									<div class="span1" style="padding-left: 10px;">
									<label class="checkbox inline" for="epileptico">Epiléptico
									</label>
										<input style="margin-top: -35px;" type="checkbox" name="epileptico" id="epileptico">
									</div>
									<div class="span1" style="padding-left: 10px;">
									<label class="checkbox inline" for="discOtros">Otros
									</label>
										<input style="margin-top: -35px;" type="checkbox" name="discOtros" id="discOtros">
									</div>
									<div class="span1 errorNinguno" style="margin-left:100px;">
										<label class="checkbox inline" for="discNinguno">
											Ninguno
										</label>
										<input style="margin-top: -35px;" type="checkbox" name="discNinguno" id="discNinguno">
									</div>
								</div>
								<div class="span8">
									<div id="discOtrosDescContainer" class="controls" style="margin-top: 10px; display: none;">
										<label>Por favor aclarar ¿cuál? (*)</label>
										<input type="text" class="span6 required" name="discOtrosDesc" id="discOtrosDesc" value="" disabled="disabled">
									</div>
								</div>
							</div>

						</div>
						<div class="row">
							<div class="span4">
								<label>¿Tiene certificado de discapacidad?</label>
								<select id="certificado_discapacidad" name="certificado_discapacidad" class="span1">
									<option value="false" selected="">No</option>
									<option value="true">Si</option>
								</select>
							</div>
						</div>
						<!--div class="row">
							<div class="span8">
								<div class="controls">
									<label class="checkbox">
										<input type="checkbox" name="nBInsatisfechas" id="nBInsatisfechas" />
										Necesidades básicas insatisfechas
									</label>

								</div>

							</div>
						</div-->
					</div>
				</div>

			</div>
			<br><br>

			<h3>B.Domicilio del aspirante </h3><h6>(*) campos obligatorios</h6>


			<div class="well">
				<input type="hidden" name="idDomicilio" value="0">
				<div class="row">
					<div class="span9">
						<div class="row">
							<div class="span4">
								<label>Provincia (*)</label>
																		<select name="provincia" id="provincia" class="span4"><option value="1">Ciudad Autónoma de Buenos Aires</option><option value="2">Buenos Aires</option></select>
							</div>
							<div class="span3">
								<label class="calleLabel">Calle y nº (*)</label><i class="icon custom-tooltip calleTooltip" data-content="Debés ingresar el nombre de la calle con su altura y luego seleccionarla para que quede registrada." data-placement="top" data-toggle="popover" data-trigger="hover" data-original-title="Calle"></i>
								<div class="calleContainer"><input type="text" size="40" name="calle" id="calle" title="Lugar a buscar" class="text" value="" autocomplete="off" style="width: 224px;"></div>

								<div id="mapa"></div>
								<div id="map_canvas"></div>
								<input type="hidden" name="coordenadaX" id="coordenadaX" value="" class="required">
								<input type="hidden" name="coordenadaY" id="coordenadaY" value="">
								<input type="hidden" name="calleUsig" id="calleUsig" value="">
								<input type="hidden" name="alturaUsig" id="alturaUsig" value="">
								<input type="hidden" name="distritoEscolar" id="distritoEscolar" value="">
							</div>
							<div id="localidadProvinciaContainer" class="span2" style="display: none;">
								<label>Localidad (*)</label>
								<input type="text" name="localidadProvincia" id="localidadProvincia" class="span2 required" value="" disabled="disabled">
							</div>
						</div>

						<div class="row">
							<div class="span4 villaContainer">
								<label style="float:left;">Villa</label>
								<i class="icon custom-tooltip" data-content="En caso de Asentamiento o Villa, seleccionalo del listado y completá la manzana." data-placement="top" data-toggle="popover" data-trigger="hover" data-original-title="Barrio"></i>
																		<div style="clear:both"></div>
								<select id="barrio" name="barrio" class="span4" style="width: 300px !important;">
									<option value="">No aplica</option>
																																																																				<option value="65">Asentamiento Barrio Obrero</option>
																																								<option value="68">Asentamiento Bermejo</option>
																																								<option value="51">Asentamiento Biarritz y Espino</option>
																																								<option value="80">Asentamiento Bosch</option>
																																								<option value="85">Asentamiento Calle B. Mitre</option>
																																								<option value="78">Asentamiento Charlone</option>
																																								<option value="74">Asentamiento El pueblito</option>
																																								<option value="86">Asentamiento El Triángulo</option>
																																								<option value="58">Asentamiento Fraga</option>
																																								<option value="59">Asentamiento La Carbonilla</option>
																																								<option value="64">Asentamiento Lamadrid</option>
																																								<option value="54">Asentamiento Los Pinos</option>
																																								<option value="73">Asentamiento Magaldi</option>
																																								<option value="75">Asentamiento Mar Dulce</option>
																																								<option value="87">Asentamiento María Auxiliadora</option>
																																								<option value="88">Asentamiento Paredón Lacroze</option>
																																								<option value="57">Asentamiento Portela</option>
																																								<option value="81">Asentamiento Rodrigo Bueno</option>
																																								<option value="89">Asentamiento Saldías</option>
																																								<option value="82">Asentamiento Scapino</option>
																																								<option value="83">Asentamiento Warnes y Newbery</option>
																																								<option value="71">Asentamiento Yerbal</option>
																																																																																																																																																																																																																																																																																																																																																								<option value="77">NHT Del Trabajo</option>
																																								<option value="66">NHT Zavaleta</option>
																																																																																																																																																																																																																																																																																																																																																																											<option value="79">Villa 1-11-14</option>
																																								<option value="72">Villa 13 bis</option>
																																								<option value="60">Villa 15</option>
																																								<option value="55">Villa 16</option>
																																								<option value="63">Villa 17</option>
																																								<option value="69">Villa 19</option>
																																								<option value="84">Villa 20</option>
																																								<option value="76">Villa 21-24</option>
																																								<option value="53">Villa 26</option>
																																								<option value="70">Villa 31</option>
																																								<option value="61">Villa 31 BIS</option>
																																								<option value="52">Villa 3- Bo. Fatima</option>
																																								<option value="56">Villa 6</option>
																																								<option value="62">Villa Calacita</option>
																																																																																																																																																																													<option value="67">Villa Piletones</option>
																																																																																																																																													</select>
							</div>
							<div class="span4 partidoContainer" style="display: none;">
								<label>Partido (*)</label>
																<select id="partido" name="partido" class="required span4" disabled="disabled">
									<option value="">No aplica</option>
																				<option value="9*90515.25*103381.15">3 de Febrero</option>
																				<option value="23*108529.94*77490.03">Almirante Brown</option>
																				<option value="4*110980.23*94457.36">Avellaneda</option>
																				<option value="19*124253.43*85161.79">Berazategui</option>
																				<option value="24*0*0">Cañuelas</option>
																				<option value="13*70804.46*131891.90">Escobar</option>
																				<option value="5*100254.63*77752.75">Esteban Echeverría</option>
																				<option value="7*92005.34*80420.95">Ezeiza</option>
																				<option value="6*117624.75*81529.90">Florencio Varela</option>
																				<option value="25*55779.05*101135.55">General Rodríguez</option>
																				<option value="8*93256.78*105959.50">General San Martín</option>
																				<option value="16*83951.51*104229.46">Hurlingham</option>
																				<option value="17*79084.56*96885.88">Ituzaingó</option>
																				<option value="12*71639.27*111617.15">José C. Paz</option>
																				<option value="1*85881.94*84051.11">La Matanza</option>
																				<option value="3*106474.97*92215.77">Lanús</option>
																				<option value="26*0*0">La Plata</option>
																				<option value="14*103978.68*84937.95">Lomas de Zamora</option>
																				<option value="11*76784.26*115828.68">Malvinas Argentinas</option>
																				<option value="27*66672.65*82022.98">Marcos Paz</option>
																				<option value="28*73408.05*94193.56">Merlo</option>
																				<option value="29*69684.10*99138.96">Moreno</option>
																				<option value="15*85941.15*95558.33">Morón</option>
																				<option value="30*59105.18*119142.19">Pilar</option>
																				<option value="31*106383.81*65245.07">Presidente Perón</option>
																				<option value="18*119838.14*89436.09">Quilmes</option>
																				<option value="20*90507.00*119821.78">San Fernando</option>
																				<option value="21*94001.53*117438.37">San Isidro</option>
																				<option value="10*74942.30*108316.91">San Miguel</option>
																				<option value="32*0*0">San Vicente</option>
																				<option value="2*89654.40*122453.47">Tigre</option>
																				<option value="22*99108.00*111586.61">Vicente López</option>
																	</select>
							</div>
							<div class="span2" id="manzanaContainer" style="display: none;">
								<label>Manzana (*)</label>
								<select id="manzana" name="manzana" class="required span2" disabled="disabled">
									<option>Seleccionar</option>
								</select>
							</div>
							<div class="span1 pisoDeptoCp">
								<label>Piso </label>
								<input type="text" name="piso" class="span1" id="piso" value="">
							</div>
							<div class="span1 pisoDeptoCp">
								<label>Depto.</label>
								<input type="text" name="dpto" id="depto" class="span1" value="">
							</div>
							<div class="span1 pisoDeptoCp">
								<label>CP</label>
								<input type="text" name="cp" id="cp" class="span2" value="">
							</div>

						</div>
						<br><br>
						<div class="tipoViviendas">
							<div class="row">
								<div class="span9">
									<label>¿En qué tipo de espacio conviven?(*)</label>
									<select id="tipo_vivienda" class="required span4" name="tipo_vivienda">
										<option value="">Seleccionar</option>
										<option value="casa">Vivienda propia</option>
										<option value="viviendaalquilada">Vivienda alquilada</option>
										<option value="pension">Pensión</option>
										<option value="hotel">Hotel familiar</option>
										<option value="situacionCalle">Situación de calle</option>
										<option value="nhp">Núcleo habitacional precario</option>
										<option value="villa">Villa</option>
										<option value="ninguno">Ninguno de los anteriores</option>
									</select>
								</div>
							</div>
						</div>
						<br>
						<div class="row" id="row_datos_referencia" style="display: none;">
							<div class="span8">
								<label>Datos de referencia
									<span id="vivienda_hint" style=" font-size:12px;"> (*) (Por favor indique en qué tipo de espacio conviven)</span>
								</label>
								<textarea rows="3" name="datos_referencia" id="datos_referencia" class="input-xxlarge" style="" disabled="disabled"></textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</form:form>
		</div>
		
		<!-- Placed at the end of the document so the pages load faster -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" ></script>
		<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
		<script src="js/bootstrap.min.js" type="text/javascript"></script>
	</body>
</html>
