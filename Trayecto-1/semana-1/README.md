# Semana 1: algoritmos secuenciales

Ejercicios de la primera sesión de Algoritmia. Los programas usan entrada, cálculo y salida, sin condiciones ni ciclos.

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

Cada diagrama está directamente en la carpeta de su ejercicio, junto al programa. Los SVG se elaboraron a partir del código; no son exportaciones de PSeInt.

## Entrada, proceso y salida

| Programa | Entrada | Proceso | Salida |
| --- | --- | --- | --- |
| Saludo | Nombre. | Guardar el nombre en una variable de texto. | Saludo con el nombre. |
| Edad en días | Edad en años enteros. | Multiplicar la edad por 365. | Días vividos aproximadamente. |
| Propinas | Cuenta, porcentaje y cantidad de personas. | Calcular la propina, sumarla a la cuenta y dividir el total entre las personas. | Propina, total y pago por persona. |
| Promedio de notas | Tres notas reales entre 0 y 5. | Sumar las tres notas y dividir la suma entre 3. | Promedio. |

## Pruebas para ejecutar

Estos son resultados esperados, calculados con las fórmulas. Falta ejecutar los archivos en PSeInt y registrar las salidas observadas; esta tabla no afirma que se hayan ejecutado allí.

| Programa | Entrada | Salida esperada | Salida observada en PSeInt |
| --- | --- | --- | --- |
| Saludo | Ana | `Hola, Ana!` | Pendiente |
| Saludo | Carlos | `Hola, Carlos!` | Pendiente |
| Edad en días | 20 | `Has vivido aproximadamente 7300 días.` | Pendiente |
| Edad en días | 18 | `Has vivido aproximadamente 6570 días.` | Pendiente |
| Propinas | Cuenta: 120000; porcentaje: 10; personas: 4 | Propina: 12000; total: 132000; cada persona: 33000. | Pendiente |
| Propinas | Cuenta: 80000; porcentaje: 15; personas: 2 | Propina: 12000; total: 92000; cada persona: 46000. | Pendiente |
| Promedio de notas | 4; 3.5; 4.5 | Promedio: 4. | Pendiente |
| Promedio de notas | 3; 3; 4 | Promedio: 3.333… (aproximadamente 3.33). | Pendiente |

## Observaciones

La edad en días es aproximada porque no cuenta los días adicionales de los años bisiestos ni el tiempo transcurrido desde el último cumpleaños.

En propinas se usan variables intermedias para dividir el total completo entre las personas. La cantidad de personas debe ser mayor que cero: con cero se intenta dividir por cero. El programa todavía no valida entradas, de acuerdo con el alcance secuencial de la sesión.

Las notas se guardan como `Real` para aceptar decimales. El promedio se muestra sin redondearlo; la cantidad de decimales visibles puede depender de PSeInt. Usa punto para ingresar los decimales de estas pruebas.

## Completar la evidencia

1. Abrir cada `.psc` en PSeInt y seleccionar el perfil flexible.
2. Ejecutar las dos pruebas de cada programa con F9 y completar la columna de salida observada.
3. Usar «Dibujar diagrama de flujo» y exportar cada diagrama como imagen directamente dentro de la carpeta del ejercicio correspondiente para obtener las exportaciones solicitadas por la guía.
4. Si los ejercicios A1 y A2 deben presentarse en papel, escribirlos en una hoja después de entenderlos.
5. Añadir los archivos al repositorio de entrega y hacer commit y push. La carpeta de trabajo no tenía un repositorio Git al preparar estos archivos.
