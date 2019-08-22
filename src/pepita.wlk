object pepita {
	var energia = 100
	
	method estaCansada() {
		return energia < 50
	}
	
	method estaFeliz() {
		return (energia > 500 && energia < 1000)	
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	

	
	method cuantoQuiereVolar() {
		var kilometros = 0
		
		kilometros += energia / 5
		
		if(energia>300 && energia<400) kilometros += 10
		if(energia % 20 == 0) kilometros += 15
		
		return kilometros
	}

	method salirAComer() {
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras() {
		if(self.estaCansada()) self.come(alpiste)
		if(self.estaFeliz()) self.vola(8)
	}
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}


object mijo {
	var estado = "seco"
	
	method mojarse() {
		estado = "mojado"
	}
	
	method secarse() {
		estado = "seco"
	}
	
	method energiaQueOtorga() {
		if(estado == "mojado"){
			return 15
		}else{
			return 20
		}
	}
}

object canelones {
	var salsa = false
	var queso = false
	
	method agregarSalsa() {
		salsa = true
	}
	
	method sacarSalsa() {
		salsa = false
	}
	
	method agregarQueso() {
		queso = true
	}
	
	method sacarQueso() {
		queso = false
	}
	
	method energiaQueOtorga() {
		if(salsa && queso) return 32
		if(salsa && not(queso)) return 25
		if(not(salsa) && queso) return 27
		else return 20
	}
}

object roque {
	method entrena(ave){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}
