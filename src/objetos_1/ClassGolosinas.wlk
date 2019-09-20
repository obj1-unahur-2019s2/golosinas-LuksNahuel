import mariano.mariano

class Bombon {
	var peso = 15
	
	method precio() { return 5 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 - 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
}

class Alfajor {
	var peso = 300
	
	method precio() { return 12 }
	method peso() { return peso }
	method mordisco() { peso = peso * 0.8 }
	method gusto() { return "chocolate" }
	method libreGluten() { return false }
}

class Caramelo {
	var peso = 5
	
	method precio() { return 1 }
	method peso() { return peso }
	method mordisco() { peso -= 1 }
	method gusto() { return "frutilla" }
	method libreGluten() { return true }
	
}

class Chupetin {
	var peso = 7
	
	method precio() = 2 
	method peso() { return peso }
	method mordisco() {
		if (peso >= 2) {
			peso = peso * 0.9
		}
	}
	method gusto() { return "naranja" }
	method libreGluten() { return true }
}

class Oblea {
	var peso = 250
	
	method precio(){ return 5 }
	method peso() { return peso }
	method gusto() { return "vainilla" }
	method libreGluten() { return false }
	method mordisco() {
		if(peso > 70) {
			peso = peso * 0.5
		} else {
			peso = peso * 0.75
		}
	}
	
}

class Chocolatin {
	// hay que acordarse de *dos* cosas, el peso inicial y el peso actual
	// el precio se calcula a partir del precio inicial
	// el mordisco afecta al peso actual
	var pesoInicial
	var pesoActual 
	
	/* al principio, el peso actual coincide con el inicial */
	method pesoInicial(cuanto) { 
		pesoInicial = cuanto
		pesoActual = cuanto
	}
	method precio() { return pesoInicial * 0.5 }
	method libreGluten() { return false }
	method gusto() { return "chocolate" }
	method mordisco() { pesoActual -= 2 }
	method peso() {
		return pesoActual
	}
}

class GolosinaBaniada {
	var golosinaInterior
	var pesoBanio = 4
	
	method baniaA(unaGolosina) { golosinaInterior = unaGolosina }
	method precio() { return golosinaInterior.precio() + 2 }
	method peso() { return golosinaInterior.peso() + pesoBanio }
	method mordisco() {
		golosinaInterior.mordisco()
		if (pesoBanio > 0) { pesoBanio -= 2 }
		// otra forma de hacer la cuenta: pesoBanio = (pesoBanio - 2).max(0) 
	}	
	method gusto() { return golosinaInterior.gusto() }
	method libreGluten() { return golosinaInterior.libreGluten() }	
}

class Tuttifrutti {
	var peso = 5
	
	var gustos = ["frutilla", "chocolate", "naranja"]
	var gustoSiguiente = 0
	
	method mordisco() {
		gustoSiguiente += 1
		if(gustoSiguiente == 3) { gustoSiguiente = 0}
	}
	
	method gusto() {
		return gustos.get(gustoSiguiente)
	}
	method peso() {
		return peso
	}
	
	
}

