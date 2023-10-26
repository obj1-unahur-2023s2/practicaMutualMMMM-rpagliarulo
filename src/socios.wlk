class Socio {
	const actividades= []
	const maxDeActividades
	
	method esAdoradorDelSol()= actividades.all({actividad => actividad.sirveParaBroncearse()})
	method actividadesForzadas()= actividades.filter({actividad => actividad.implicaEsfuerzo()})
	method cantidadDeActividadesRealizadas()= actividades.size()
	method realizarActividad(actividad)= if (self.cantidadDeActividadesRealizadas() < maxDeActividades) actividades.add(actividad) else self.error("Se ha alcanzado el maximo de actividades a realizar")
	
}
