# Sesión 1: algoritmos secuenciales

## Ejercicios

| Ejercicio | Archivos |
| --- | --- |
| A1. Cruzar la quebrada | [Solución](ej-1-cruzar-la-quebrada/README.md) |
| A2. Pedir un domicilio | [Entrada, proceso y salida](ej-2-pedir-un-domicilio/README.md) |
| A3. Tinto del robot | [Instrucciones](ej-3-tinto-del-robot/tinto.md) |
| B1. Saludo | [Programa](ej-4-saludo/saludo.psc) · [Diagrama](ej-4-saludo/saludo.svg) |
| B2. Edad en días | [Programa](ej-5-edad-en-dias/edad_en_dias.psc) · [Diagrama](ej-5-edad-en-dias/edad_en_dias.svg) |
| B3. Propinas | [Programa](ej-6-propinas/propinas.psc) · [Diagrama](ej-6-propinas/propinas.svg) |
| B4. Promedio de notas | [Programa](ej-7-promedio-de-notas/promedio_de_notas.psc) · [Diagrama](ej-7-promedio-de-notas/promedio_de_notas.svg) |

## Entrada, proceso y salida

| Programa | Entrada | Proceso | Salida |
| --- | --- | --- |
| Saludo | Nombre. | Guardar el nombre en una variable de texto. | Saludo con el nombre. |
| Edad en días | Edad en años enteros. | Multiplicar la edad por 365. | Días vividos aproximadamente. |
| Propinas | Cuenta, porcentaje y cantidad de personas. | Calcular la propina, sumarla a la cuenta y dividir el total entre las personas. | Propina, total y pago por persona. |
| Promedio de notas | Tres notas reales entre 0 y 5. | Sumar las tres notas y dividir la suma entre 3. | Promedio. |

## Pruebas de escritorio

| Programa | Entrada | Salida esperada |
| --- | --- | --- |
| Saludo | Ana | `Hola, Ana!` |
| Saludo | Carlos | `Hola, Carlos!` |
| Edad en días | 20 | `Has vivido aproximadamente 7300 días.` |
| Edad en días | 18 | `Has vivido aproximadamente 6570 días.` |
| Propinas | Cuenta: 120000; porcentaje: 10; personas: 4 | Propina: 12000; total: 132000; cada persona: 33000. |
| Propinas | Cuenta: 80000; porcentaje: 15; personas: 2 | Propina: 12000; total: 92000; cada persona: 46000. |
| Promedio de notas | 4; 3.5; 4.5 | Promedio: 4. |
| Promedio de notas | 3; 3; 4 | Promedio: 3.333… (aproximadamente 3.33). |
