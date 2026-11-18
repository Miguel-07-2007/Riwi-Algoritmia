Algoritmo CajeroParqueadero
	Definir valor, total Como Real
	Definir carros Como Entero
	carros <- 0
	total <- 0
	Escribir "Ingresa el cobro del carro o 0 para cerrar la caja:"
	Leer valor
	Mientras valor <> 0 Hacer
		total <- total + valor
		carros <- carros + 1
		Escribir "Ingresa el cobro del carro o 0 para cerrar la caja:"
		Leer valor
	FinMientras
	Escribir "Carros atendidos: ", carros
	Escribir "Total recaudado: ", total
FinAlgoritmo
