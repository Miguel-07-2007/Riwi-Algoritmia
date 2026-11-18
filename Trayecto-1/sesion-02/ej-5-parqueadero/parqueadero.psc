Algoritmo Parqueadero
	Definir tipo, minutos, tarifa, horas Como Entero
	Definir valor Como Real
	Definir factura Como Caracter
	Escribir "Tipo de vehículo: 1 = carro, 2 = moto"
	Leer tipo
	Escribir "Ingresa los minutos de permanencia:"
	Leer minutos
	Escribir "¿Tienes factura del centro comercial? (S/N)"
	Leer factura
	factura <- Mayusculas(factura)
	Si minutos < 0 Entonces
		Escribir "Error: minutos negativos"
	SiNo
		tarifa <- 0
		Segun tipo Hacer
			1:
				tarifa <- 4000
			2:
				tarifa <- 2000
			De Otro Modo:
				Escribir "Error: tipo no válido"
		FinSegun
		Si tarifa > 0 Entonces
			Si minutos <= 15 Entonces
				valor <- 0
			SiNo
				horas <- trunc((minutos + 59) / 60)
				valor <- horas * tarifa
				Si valor > 30000 Entonces
					valor <- 30000
				FinSi
				Si factura = "S" Entonces
					valor <- valor / 2
				FinSi
			FinSi
			Escribir "Total a pagar: ", valor
		FinSi
	FinSi
FinAlgoritmo
