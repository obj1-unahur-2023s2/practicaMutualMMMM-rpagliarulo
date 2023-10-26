class Socio {
	const edad
	const actividades= []
	const maxDeActividades
	const idiomasQueHabla= #{}
	
	method esAdoradorDelSol()= actividades.all({actividad => actividad.sirveParaBroncearse()})
	method actividadesForzadas()= actividades.filter({actividad => actividad.implicaEsfuerzo()})
	method cantidadDeActividadesRealizadas()= actividades.size()
	method realizarActividad(actividad)= if (self.cantidadDeActividadesRealizadas() < maxDeActividades) actividades.add(actividad) else self.error("Se ha alcanzado el maximo de actividades a realizar")
	method leAtrae(actividad)
}

class Tranquilo inherits Socio {
	
	override method leAtrae(actividad)= actividad.diasQueLleva() >= 4
}

class Coherente inherits Socio {
	
	override method leAtrae(actividad)= (self.esAdoradorDelSol() && actividad.sirveParaBroncearse()) || (!self.esAdoradorDelSol() && actividad.implicaEsfuerzo())
}

class Relajado inherits Socio {
	
	//override method leAtrae(actividad)= 

}