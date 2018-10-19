import vagones.*

class Formacion {
	var property vagones
	var property locomotoras

//-------- Metodos de ayuda

   method pesoTotalDeLocomotorasMasVagones() {
   	 return self.pesoTotalDeLocomotoras() + self.pesoMaximoTotalDeLosVagones()
   }
   
   method pesoTotalDeLocomotoras() {
   	  return locomotoras.sum {locomotora => locomotora.pesoMaximo() }
   }
   
   method pesoMaximoTotalDeLosVagones() {
   	 return vagones.sum { vagon => vagon.pesoMaximo() }
   }
   
   method arrastreUtilTotal() {
    return locomotoras.sum {locomotora => locomotora.arrastreUtil() }
   }
   
   method cantidadDeVagonesYLocomotoras() {
    	return vagones.size() + locomotoras.size()
    }
   	
// -------- Metodos del ejercicio 

   
	method vagonesLivianos() {
		return vagones.count { vagon => vagon.esLiviano() }
	}
	
	method velocidadMaxima() {
		return locomotoras.min {locomotora => locomotora.velocidadMaxima() }.velocidadMaxima()
	}
	
	method esEficiente() {
		return locomotoras.all {vagon => vagon.pesoMaximoQuePuedeArrastrar() >= vagon.pesoMaximo()*5}
	}

    method puedeMoverse(){
    	return self.arrastreUtilTotal() >= self.pesoMaximoTotalDeLosVagones()
    }
    
    method kilosDeEmpujeQueFaltan() {
       return if ( self.puedeMoverse() ) 0 else self.pesoMaximoTotalDeLosVagones() - self.arrastreUtilTotal() 
    }
    
    method masPesado() {
    	return vagones.max { vagon => vagon.pesoMaximo() }
    }
    
    method esCompleja() {
    	return self.cantidadDeVagonesYLocomotoras() > 20 or self.pesoTotalDeLocomotorasMasVagones() > 10000
    }
    
    method buscarLocomotora(listaLocomotoras) {
     	return listaLocomotoras.find { locomotora => locomotora.arrastreUtil() >= self.kilosDeEmpujeQueFaltan() }
     }
     
    method agregarLocomotora(listaLocomotoras) {
    	return locomotoras.add(self.buscarLocomotora(listaLocomotoras))
    }
    
    method estaBienArmada() {
    	return self.puedeMoverse()
    }
    
    method hayUnBanioCada50Pasajeros() {  	
    	return self.totalDePasajeros() / 50 >= 1
   
    }
    
    method totalDePasajeros() {
    	return vagones.sum { vagon => vagon.cantPasajeros() }
    }
       
    method sonTodosVagonesLivianos() {
    	return vagones.all { vagon => vagon.esLiviano() }
    }
}