package ar.edu.unlam.tallerweb1.servicios;

import java.util.LinkedList;

import ar.edu.unlam.tallerweb1.modelo.Institucion;

public interface ServicioInsti {
	LinkedList<Institucion> consultarInstitciones(LinkedList<Institucion> instituciones, String nivel); 
}

