import roque.*
import ciudades.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 

	var rand1
	var rand2

	var property posicion = game.at(3,3)
	method imagen() = "pepita.png"

	method come(comida) {
		energia = energia + comida.energia()
	}
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.posicion())
			ciudad = unaCiudad
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	

	method teEncontraron(){
		
		
		rand1 = 5	//Debería ser una posicion aleatoria pero no encontre
		rand2 = 3	//una funcion que retorne un entero aleatorio 
		
		if (roque.queTenes() != null){
			
			self.come(roque.queTenes())
			game.addVisualIn(roque.queTenes(),game.at(rand1,rand2))
			roque.tenesNuevo(null)
			
		}
		
		
	}


}
