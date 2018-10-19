import trenes.*

class Vagon {
	method esLiviano() = self.pesoMaximo() < 2500
	
	method pesoMaximo()
}


class VagonDePasajeros inherits Vagon {
    var property largoDeVagon = 0
    var property anchoDeVagon = 0
    
    method cantPasajeros() = if ( anchoDeVagon <= 2.5 ) largoDeVagon * 8 
                             else largoDeVagon * 10
   
   override method pesoMaximo() = self.cantPasajeros() * 80 
                 
}

class VagonDeCarga inherits Vagon {
	var property cargaMaxima = 0
	
	override method pesoMaximo() = cargaMaxima + 160
	
	method cantPasajeros() = 0
	 
}
	
	
class Locomotora {
	var property pesoMaximo = 0
	var property pesoMaximoQuePuedeArrastrar = 0
	var property velocidadMaxima = 0
		
	method arrastreUtil() = pesoMaximoQuePuedeArrastrar - pesoMaximo
		
}


class FormacionesDeCortaDistancia inherits Formacion {
	override method estaBienArmada() {
		return super() and not self.esCompleja()
	}
	override method velocidadMaxima() = 60
		

}

class FormacionesDeLargaDistancia inherits Formacion {
	var uneDosCiudades
	override method estaBienArmada() {
		return super() and self.hayUnBanioCada50Pasajeros()
	}
	
	override method velocidadMaxima() = if ( uneDosCiudades ) 200 else 150
}

class FormacionesDeAltaVelocidad inherits FormacionesDeLargaDistancia {
	override method estaBienArmada() {
		return self.velocidadMaxima() >= 250 and self.sonTodosVagonesLivianos()
	}
}

