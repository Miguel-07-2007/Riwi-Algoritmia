SubProceso subtotal <- LeerPedido()
	Definir subtotal, precioBandeja, precioAjiaco Como Real
	Definir bandejas, ajiacos Como Entero
	precioBandeja <- 25000
	precioAjiaco <- 12000
	Escribir "¿Cuántas bandejas de $25000 deseas?"
	Leer bandejas
	Escribir "¿Cuántos ajiacos de $12000 deseas?"
	Leer ajiacos
	subtotal <- bandejas * precioBandeja + ajiacos * precioAjiaco
FinSubProceso

SubProceso resultado <- CalcularPorcentaje(base, porcentaje)
	Definir resultado Como Real
	resultado <- base * porcentaje / 100
FinSubProceso

SubProceso ImprimirFactura(subtotal, impuesto, propina)
	Definir total Como Real
	total <- subtotal + impuesto + propina
	Escribir "Subtotal: ", subtotal
	Escribir "Impuesto al consumo (8%): ", impuesto
	Escribir "Propina sugerida (10%): ", propina
	Escribir "Total: ", total
FinSubProceso

Algoritmo FacturaRestaurante
	Definir subtotal, impuesto, propina Como Real
	subtotal <- LeerPedido()
	impuesto <- CalcularPorcentaje(subtotal, 8)
	propina <- CalcularPorcentaje(subtotal, 10)
	ImprimirFactura(subtotal, impuesto, propina)
FinAlgoritmo
