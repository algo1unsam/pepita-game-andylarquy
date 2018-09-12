object villaGesell {

	var flag_vg = true

	method imagen() = "ciudad.png"

	method nombre() = "Villa Gesell"

	method posicion() = game.at(8, 3)

	method cambioFlagVg(valor) {
		flag_vg = valor
	}

	// TODO no veo por que usar este flag, no parece necesario
	// y en todo caso no debería resolverse con un flag
	method teEncontraron() {
		if (flag_vg) {
			game.say(self, "Bienvenido a Villa Gesell")
			// TODO por qué lo pones en false y justo después en true? 
			flag_vg = false
			buenosAires.cambioFlagBa(true)
		}
	}

}

object buenosAires {

	var flag_ba = true

	method imagen() = "ciudad.png"

	method nombre() = "Buenos Aires"

	method posicion() = game.at(1, 1)

	method cambioFlagBa(valor) {
		flag_ba = valor
	}

	method teEncontraron() {
		if (flag_ba) {
			game.say(self, "Bienvenido a Villa Gesell")
			flag_ba = false
			villaGesell.cambioFlagVg(true)
		}
	}

}

