package ar.edu.unlam.tallerweb1.controladores;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

// import ar.edu.unlam.tallerweb1.modelo.Institucion;

@Controller
public class ControladorInstitucion {
	// cntrol shift o
	// cntrol espacio
	@RequestMapping(path = "/ver/{name}")
	public ModelAndView saludoInicial(@RequestParam("name") String nombre) {
		// public ModelAndView saludoInicial(@PathVariable("nombre") String
		// nombre) {
		String menssage = "Hola, " + nombre + "Chau";

		ModelMap modelo = new ModelMap();

		modelo.put("messageAMostrar", menssage);
		return new ModelAndView("mostrar", modelo);
	}
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
