import roque.*
import ciudades.*

object pepita {

	var property energia = 100
	var property ciudad = buenosAires
	var imag = "pepita1.png"
	var property posicion = game.at(3, 3)

	method imagen() = imag

	method come(comida) {
		energia = energia + comida.energia()
		// TODO esto va en el método imagen que se llama automátciamente cuando cambie
		// no lo tenes que llamar vos a mano, de esta forma también se llama automáticamente cuando viaja
		if (energia < 10) {
			self.pepitaFlaca()
		} else if (energia > 100) {
			self.pepitaGorda()
		} else {
			self.pepitaNormal()
		}
	}

	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			if ((energia - self.energiaParaVolar(posicion.distance(unaCiudad.posicion())) > 0)) { // Esta linea es un poco redundante
			// con la del metodo move, probablemente
				self.move(unaCiudad.posicion()) // se podria mejorar
				ciudad = unaCiudad
			} else {
				game.say(self, "No tengo energia, dame de comer")
			}
		} else {
			game.say(self, "Ya estoy en " + unaCiudad + ".")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
		if (energia < 10) {
			self.pepitaFlaca()
		} else if (energia > 100) {
			self.pepitaGorda()
		} else {
			self.pepitaNormal()
		}
	}

	method teEncontraron() {
		if (roque.queTenes() != null) {
			self.come(roque.queTenes())
			game.addVisualIn(roque.queTenes(), game.at(1.randomUpTo(9), 1.randomUpTo(9)))
			roque.tenesNuevo(null)
		}
	}

	method pepitaFlaca() {
		imag = "pepita.png"
	}

	method pepitaGorda() {
		imag = "pepita2.png"
	}

	method pepitaNormal() {
		imag = "pepita1.png"
	}

}

