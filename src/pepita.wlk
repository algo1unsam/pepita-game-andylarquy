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
		
			if((energia - self.energiaParaVolar(posicion.distance(unaCiudad.posicion()))>0)){ //Esta linea es un poco redundante
																							  //con la del metodo move, probablemente
				self.move(unaCiudad.posicion())												  //se podria mejorar
				ciudad = unaCiudad
		
			}else{
				game.say(self,"No tengo energia, dame de comer")
			}

		}else{
			game.say(self,"Ya estoy en "+unaCiudad+".")
		}
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia

	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
		self.posicion(nuevaPosicion)
	}	

	method teEncontraron(){
		
		
		
		if (roque.queTenes() != null){
			
			self.come(roque.queTenes())
			game.addVisualIn(roque.queTenes(),game.at(1.randomUpTo(9),1.randomUpTo(9)))
			roque.tenesNuevo(null)
			
		}
		
		
	}


}
