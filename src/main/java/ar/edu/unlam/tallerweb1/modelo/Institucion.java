package ar.edu.unlam.tallerweb1.modelo;

public class Institucion {

	private String Nombre;
	private String Orientacion;
	private String Nivel;

	// contructor
	// public Instituciones(String nombre, String orientacion,String nivel) {
	// this.Nombre= nombre;
	// this.Orientacion= orientacion;
	// this.Nivel= nivel;
	// }

	public void setNombre(String nombre) {
		this.Nombre = nombre;
	}

	public String getNombre() {
		return Nombre;
	}

	public void setOrientacion(String orientacion) {
		this.Orientacion = orientacion;
	}

	public String getOrientacion() {
		return Orientacion;
	}

	public void setNivel(String nivel) {
		this.Nivel = nivel;
	}

	public String getNivel() {
		return Nivel;
	}
}
