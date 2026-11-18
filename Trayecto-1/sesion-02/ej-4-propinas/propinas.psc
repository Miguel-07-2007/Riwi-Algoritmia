Algoritmo Propinas
	Definir cuenta, porcentaje, propina, total, pagoPorPersona Como Real
	Definir personas Como Entero
	Escribir "Ingresa el valor de la cuenta:"
	Leer cuenta
	Escribir "Ingresa el porcentaje de propina:"
	Leer porcentaje
	Escribir "Ingresa el número de personas:"
	Leer personas
	Si personas <= 0 Entonces
		Escribir "El número de personas debe ser mayor que cero"
	SiNo
		propina <- cuenta * porcentaje / 100
		total <- cuenta + propina
		pagoPorPersona <- total / personas
		Escribir "Propina: ", propina
		Escribir "Total: ", total
		Escribir "Cada persona paga: ", pagoPorPersona
	FinSi
FinAlgoritmo
