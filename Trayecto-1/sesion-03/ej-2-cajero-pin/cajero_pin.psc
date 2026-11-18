Algoritmo CajeroPIN
	Definir pin, pinCorrecto Como Caracter
	Definir intentos Como Entero
	Definir acceso Como Logico
	pinCorrecto <- "1234"
	intentos <- 0
	acceso <- Falso
	Repetir
		Escribir "Ingresa tu PIN:"
		Leer pin
		intentos <- intentos + 1
		acceso <- pin = pinCorrecto
	Hasta Que acceso O intentos = 3
	Si acceso Entonces
		Escribir "Acceso permitido"
	SiNo
		Escribir "Tarjeta bloqueada"
	FinSi
FinAlgoritmo
