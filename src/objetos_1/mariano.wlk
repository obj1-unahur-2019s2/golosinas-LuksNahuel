import golosinas.*

object mariano {
	const golosinas = []
	
	method golosinas() = golosinas
	
	method comprar(unaGolosina) { 
		golosinas.add(unaGolosina)
	}
	method desechar(unaGolosina) {
		golosinas.remove(unaGolosina)
	}
	method probarGolosinas() { 
		golosinas.forEach({ golo => golo.mordisco() })
	}
	method hayGolosinaSinTACC() {
		golosinas.any({ golo => golo.libreGluten() })
	}
	method preciosCuidados() {
		golosinas.all({golo => golo.precio() <= 10 })
	}
	method golosinaDeSabor(unSabor) {
		return golosinas.filter({ golo => golo.gusto() == unSabor }).first()
	}
	method golosinasDeSabor(unSabor) {
		return golosinas.filter({ golo => golo.gusto() == unSabor })
	}
	method sabores() {
		return golosinas.map({golo => golo.gusto() }).asSet()
	}
	method golosinaMasCara() {
		return golosinas.max({ golo => golo.precio() })
	}
	method precioMasCaro() {
		return golosinas.map({ golo => golo.precio() }).max()
	}
	method pesoGolosinas() {
		return golosinas.sum({ golo => golo.peso() })
	}
}

