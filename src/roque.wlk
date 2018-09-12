object roque {

	var property posicion = game.at(5, 7)
	var mano = null

	// TODO este y tenesNuevo() deberían usarse con una property
	// ya que tenes un setter y un getter
	method queTenes() {
		return mano
	}

	method dondeEstas() {
		return posicion
	}

	method tenesNuevo(nuevo) {
		mano = nuevo
	}

	method imagen() = "jugador.png"

	method chocaste(algo) {
		algo.teEncontraron()
	}

}

