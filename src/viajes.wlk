class Viaje {
	const property idiomas= []
	
	method diasQueLleva()
	method implicaEsfuerzo()
	method sirveParaBroncearse()= true
	method esInteresante()= idiomas.size() > 2
	
}

class ViajeDePlaya inherits Viaje {
	const largo
	
	override method diasQueLleva()= largo/500
	override method implicaEsfuerzo()= largo > 1200
}

class ExcursionACiudad inherits Viaje {
	const cantidadDeAtracciones
	
	override method diasQueLleva()= cantidadDeAtracciones/2
	override method implicaEsfuerzo()= cantidadDeAtracciones.between(5, 8)
	override method sirveParaBroncearse()= false
	override method esInteresante()= super() || cantidadDeAtracciones == 5
	
}

class ExcursionACiudadTropical inherits ExcursionACiudad {
	
	override method diasQueLleva()= super() + 1
	override method sirveParaBroncearse()= true
}

class SalidaDeTrekking inherits Viaje {
	const diasDeSolPorAnio
	const kmDeSenderos
	
	override method diasQueLleva()= kmDeSenderos/50
	override method implicaEsfuerzo()= kmDeSenderos > 80
	override method sirveParaBroncearse()= diasDeSolPorAnio > 200 || (diasDeSolPorAnio.between(100, 200) and kmDeSenderos > 120)
	override method esInteresante()= super() && diasDeSolPorAnio > 140
}