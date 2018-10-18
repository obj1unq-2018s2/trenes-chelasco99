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
