import otros_Rodados.*

class Dependencia {
	const flota = []
	var empleados = 0
	method agregarAFlota(rodado){flota.add(rodado)}
	method quitarDeFlota(rodado){flota.remove(rodado)}
	method pesoTotalFlota(){
		return flota.sum({unRodado => unRodado.peso()})
	}
	method estaBienEquipada(){
		return flota.size() >= 3 and flota.all({unRodado => unRodado.velMax() >= 100})
	}
	method capacidadTotalEnColor(color){
		return flota.filter({unRodado => unRodado.color() == color}).sum({unRodado => unRodado.capacidad()})
	}
	method colorDelRodadoMasRapido(){
		return flota.max({unRodado => unRodado.velMax()}).color()
	}
	method setEmpleados(nroEmpleados){empleados = nroEmpleados}
	method esGrande(){
		return empleados >= 40 and flota.size() >= 5
	}  
	method capacidadFaltante(){
		return empleados - flota.sum({unRodado => unRodado.capacidad()})
	}
}
