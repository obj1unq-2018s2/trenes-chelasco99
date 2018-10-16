import vagones.*

class Formacion {
	var property vagones
	var property locomotoras
	
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
    	return locomotoras.sum {locomotora => locomotora.pesoMaximo() } >= vagones.sum { vagon => vagon.pesoMaximo() }
    }
    
    method kilosQueFaltan() {
    
    }

}