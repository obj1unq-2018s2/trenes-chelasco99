
class VagonDePasajeros {
    var property largoDeVagon = 0
    var property anchoDeVagon = 0
    
    method cantPasajeros() = if ( anchoDeVagon <= 2.5 ) { largoDeVagon =  largoDeVagon * 8 }
                        else largoDeVagon = largoDeVagon * 10
}

class VagonDeCarga {
	var property cargaMaxima
}

class Locomotoras {
	
}