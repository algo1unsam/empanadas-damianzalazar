object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	//	var property sueldo = 15000

	var sueldo = 15000
	var dinero = 0
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	method cobrarSueldo() { dinero += sueldo }
	method totalCobrado() { return dinero }
}

object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var deuda = 0
	var dinero = 0
	
	method venderEmpanada() { cantidadEmpanadasVendidas += 1 }
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	method cambiaMontoEmpanada(nuevoMonto){montoPorEmpanada = nuevoMonto}
	method cobrarSueldo(){ dinero += cantidadEmpanadasVendidas * montoPorEmpanada
						   dinero -= deuda }
	method gastar(cuanto){deuda += cuanto}
	method totalDeuda() {return deuda}
	method totalDinero(){return dinero}
}

object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo() 
		empleado.cobrarSueldo()
	}
}
