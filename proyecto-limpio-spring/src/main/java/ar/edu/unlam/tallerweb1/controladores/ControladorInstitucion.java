package ar.edu.unlam.tallerweb1.controladores;

import java.util.LinkedList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import ar.edu.unlam.tallerweb1.modelo.Institucion;

@Controller
public class ControladorInstitucion {
		
	 @RequestMapping("/mostrar-lista")
	 public ModelAndView irAInstitucion() {
		Institucion insti1 = new Institucion("Sarmiento","Primario/Secundario","Tecnico informatico");
		Institucion insti2 = new Institucion("La Catolica","Primario","Naturales");
		Institucion insti3 = new Institucion("Semillita","Jardin/Prescolar","Inicial");
		Institucion insti4 = new Institucion("Escuela 133","Secundario","Economia y gestion");
		LinkedList<Institucion> instituciones = new LinkedList<Institucion>();
		instituciones.add(insti1);		
		instituciones.add(insti2);
		instituciones.add(insti3);		
		instituciones.add(insti4);
	 ModelMap modelo = new ModelMap();	 
	 modelo.put("lista", instituciones);
	 return new ModelAndView("mostrar-lista", modelo);
	 }
	 
	 
	//Temas clase 04/05  
	 // <form:form		// buscar singleton
	 // Que seria JSTL?? --> Aprender
	 // Implementar singleton // llamarlo --> 
	 
	//Ejemplos de clase Anterior 27/04
	// cntrol shift o
	// cntrol espacio
	//Metodo buscar instituciones Lista
	@RequestMapping(path = "/ver/{name}")
	public ModelAndView saludoInicial(@RequestParam("name") String nombre) {
		// public ModelAndView saludoInicial(@PathVariable("nombre") String
		// nombre) {
		String menssage = "Hola, " + nombre + "Chau";

		ModelMap modelo = new ModelMap();

		modelo.put("messageAMostrar", menssage);
		return new ModelAndView("mostrar-lista", modelo);
	}
	// <div>${messageAMostrar}</div> 
	// Pruebas
	// http://localhost:8080/proyecto-limpio-spring/ver/name?name=esto
	// http://localhost:8080/proyecto-limpio-spring/ver/nombre?nombre=hdsf
}
// @RequestMapping("/institucion")
// public ModelAndView irAInstitucion() {

// ModelMap modelo = new ModelMap();
// Institucion insti = new Institucion();
// modelo.put("usuario", insti);
// return new ModelAndView("login", modelo);
// }

// @RequestMapping(path = "/institucion", method = RequestMethod.GET)
// public ModelAndView irAInstitucion() {
// return new ModelAndView("institucion");
// }
//
