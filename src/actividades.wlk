class Actividad {
	const property idiomas= #{}
	
	method diasQueLleva()
	method implicaEsfuerzo()
	method sirveParaBroncearse()= true
	method esInteresante()= idiomas.size() > 2
	method esRecomendadaPara(socio)= self.esInteresante() && socio.leAtrae(self) && !socio.actividades().contains(self)
}

class ViajeDePlaya inherits Actividad {
	const largo
	
	override method diasQueLleva()= largo/500
	override method implicaEsfuerzo()= largo > 1200
}

class ExcursionACiudad inherits Actividad {
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

class SalidaDeTrekking inherits Actividad {
	const diasDeSolPorAnio
	const kmDeSenderos
	
	override method diasQueLleva()= kmDeSenderos/50
	override method implicaEsfuerzo()= kmDeSenderos > 80
	override method sirveParaBroncearse()= diasDeSolPorAnio > 200 || (diasDeSolPorAnio.between(100, 200) and kmDeSenderos > 120)
	override method esInteresante()= super() && diasDeSolPorAnio > 140
}

class ClaseDeGimnasia inherits Actividad {
	
	override method idiomas()= "espaniol"
	override method diasQueLleva()= 1
	override method implicaEsfuerzo()= true
	override method sirveParaBroncearse()= false
	override method esRecomendadaPara(socio)= socio.edad().between(20,50)
	
}


class TallerLiterario inherits Actividad {
	const librosConLosQueTrabaja= new List()
	
	method idiomasUsados()= librosConLosQueTrabaja.map({libro => libro.idioma()})
	override method diasQueLleva()= librosConLosQueTrabaja.size() + 1
	override method implicaEsfuerzo()= librosConLosQueTrabaja.any({libro => libro.cantPaginas() > 500 })
	//incluye al menos un libro de más de 500 páginas, o bien todos los libros son del mismo autor, y hay más de uno.
	override method sirveParaBroncearse()= false
	override method esRecomendadaPara(socio)= socio.idiomasQueHabla().size() > 1
}