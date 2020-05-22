object azul {}

object rojo {}

object verde {}

object negro {}

object blanco {}

object bordo {}

object beige {}

class ChevroletCorsa {
	var color
	method capacidad(){return 4}
	method velMax(){return 150}
	method peso(){return 1300}
	method setColor(nuevoColor){color = nuevoColor}
	method color(){return color}
}

class RenaultKwid {
	var tanqueAdicional = false
	method capacidad(){
		if(tanqueAdicional){
			return 3
			} else {
			return 4	
			}
	}
	method velMax(){
		if(tanqueAdicional){
			return 120
			} else {
			return 110	
			}
	}
	method peso(){
		if(tanqueAdicional){
			return 1350
			} else {
			return 1200
			}
	}
	method modificarTanque(){tanqueAdicional = not tanqueAdicional}
	method color(){return azul}
}

class AutosEspeciales {
	var property capacidad
	var property velMax
	var property peso
	var property color
}
