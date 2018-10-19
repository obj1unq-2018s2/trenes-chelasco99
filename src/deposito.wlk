import trenes.*
import vagones.*
	
class Deposito {
	var property locomotorasSueltas
	var property formacionesArmadas
       
	method agregarLocomotoraAFormacion(formacion) {
	  return if ( not formacion.puedeMoverse() ) formacion.agregarLocomotora(locomotorasSueltas) else {}
 }
 	
	method vagonMasPesadoPorFormacion() {
		return formacionesArmadas.map { formacion => formacion.masPesado() }.asSet()
	}
	
	method necesitaConductorExperimentado() {
		return formacionesArmadas.any { formacion => formacion.esCompleja() }
	}
	
}
