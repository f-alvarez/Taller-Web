package ar.edu.unlam.tallerweb1.servicios;

import java.util.LinkedList;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import ar.edu.unlam.tallerweb1.modelo.Institucion;

@Service("servicioInstitu") // nombre del servicio // ejecucion atomica
@Transactional 
public class ServicioInstiImpl implements ServicioInsti{

	@Override
	public LinkedList<Institucion> consultarInstitciones(LinkedList<Institucion> instituciones, String nivel) {
		
		LinkedList<Institucion> institucionFiltrada = new LinkedList<Institucion>();
		
		for(Institucion in: instituciones){
			if(in.getNivel().equals(nivel)){
				institucionFiltrada.add(in);
			}
		}
		return institucionFiltrada;
	}
	
}
