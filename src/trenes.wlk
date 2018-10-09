
class VagonDePasajeros {
    var property largoDeVagon = 0
    var property anchoDeVagon = 0
    
    method cantPasajeros() = if ( anchoDeVagon <= 2.5 ) largoDeVagon * 8 
                        else largoDeVagon * 10
   
    method pesoMaximo() { return self.cantPasajeros() * 80 }
    method esLocomotora() = false                   
}

class VagonDeCarga {
	var property cargaMaxima = 0
	
	method pesoMaximo() = cargaMaxima + 160
	
	method cantPasajeros() = 0
	method esLocomotora() = false 
}

class Locomotora {
	var property pesoMaximo = 0
	var property pesoMaximoQuePuedeArrastrar = 0
	var property velocidadMaxima = 0
	
	method esLocomotora() = true
	
	method arrastreUtil() = pesoMaximoQuePuedeArrastrar - pesoMaximo
		
}

class Formacion {
	var property vagones = []
	
	method vagonLiviano() {
		return vagones.count { vagon => vagon.pesoMaximo() < 2500 }
	}
	
	method velocidadMaxima() {
		return vagones.filter { vagon =>
			vagon.esLocomotora() }.min {locomotora => locomotora.velocidadMaxima()}.velocidadMaxima()
	}
	
}