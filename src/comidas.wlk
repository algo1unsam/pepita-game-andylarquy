import roque.*

object manzana {
	const property imagen = "manzana.png"
	method energia() = 80


	method teEncontraron(){
		
		game.removeVisual(self)
		
		if(roque.queTenes() != null){
			game.addVisualIn(roque.queTenes(),roque.dondeEstas().up(1))
		}
		
		roque.tenesNuevo(self)
		
	}

}

	
	


object alpiste {
	const property imagen = "alpiste.png"
	method energia() = 5
	
	
	method teEncontraron(){
		
		game.removeVisual(self)
		
		if(roque.queTenes() != null){
			game.addVisualIn(roque.queTenes(),roque.dondeEstas().up(1))
		}
		
		roque.tenesNuevo(self)
		
	}
}
