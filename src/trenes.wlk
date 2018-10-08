
class VagonDePasajeros {
    var property largoDeVagon = 0
    var property anchoDeVagon = 0
    
    method cantPasajeros() = if ( anchoDeVagon <= 2.5 ) { largoDeVagon =  largoDeVagon * 8 }
                        else largoDeVagon = largoDeVagon * 10
   
    method pesoMaximo() = self.cantPasajeros() * 80
                       
}

class VagonDeCarga {
	var property cargaMaxima
	
	method pesoMaximo() = cargaMaxima + 160
}

class Locomotoras {
	
}