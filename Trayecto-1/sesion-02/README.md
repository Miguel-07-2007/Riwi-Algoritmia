# Sesión 2: lógica y decisiones

## Ejercicios

| Ejercicio | Desarrollo | Diagrama |
| --- | --- | --- |
| 1. El paraguas | [Razonamiento y tabla](ej-1-paraguas/README.md) | No aplica |
| 2. Validar registro | [Programa](ej-2-validar-registro/validar_registro.psc) | [SVG](ej-2-validar-registro/validar_registro.svg) |
| 3. Edad válida | [De Morgan y pruebas](ej-3-edad-valida/README.md) | No aplica |
| 4. Propinas | [Programa](ej-4-propinas/propinas.psc) | [SVG](ej-4-propinas/propinas.svg) |
| 5. Parqueadero | [Programa](ej-5-parqueadero/parqueadero.psc) | [SVG](ej-5-parqueadero/parqueadero.svg) |
| 6. Semáforo de inventario | [Programa](ej-6-semaforo/semaforo.psc) | [SVG](ej-6-semaforo/semaforo.svg) |
| 7. Año bisiesto | [Programa](ej-7-bisiesto/bisiesto.psc) | [SVG](ej-7-bisiesto/bisiesto.svg) |

## Registro

| edad >= 14 | respuesta = "S" | Resultado |
| --- | --- | --- |
| Verdadero | Verdadero | Registro exitoso |
| Verdadero | Falso | No puedes registrarte |
| Falso | Verdadero | No puedes registrarte |
| Falso | Falso | No puedes registrarte |

| Edad | Respuesta | Respuesta en mayúsculas | Resultado esperado |
| --- | --- | --- | --- |
| 13 | S | S | No puedes registrarte |
| 14 | S | S | Registro exitoso |
| 14 | s | S | Registro exitoso |
| 14 | N | N | No puedes registrarte |
| 13 | n | N | No puedes registrarte |

Prueba de escritorio: edad = 14, respuesta = "s" → Mayusculas cambia la respuesta a "S" → `14 >= 14` es verdadero y `respuesta = "S"` es verdadero → registro exitoso.

## Propinas

| Condición | Acción |
| --- | --- |
| personas <= 0 | Mostrar error y no dividir. |
| personas > 0 | Calcular propina, total y pago por persona. |

| Cuenta | Porcentaje | Personas | Resultado esperado |
| --- | --- | --- | --- |
| 120000 | 10 | 4 | Propina 12000; total 132000; cada persona 33000. |
| 80000 | 15 | 2 | Propina 12000; total 92000; cada persona 46000. |
| 120000 | 10 | 0 | El número de personas debe ser mayor que cero. |
| 120000 | 10 | -1 | El número de personas debe ser mayor que cero. |
| 120000 | 10 | 1 | Propina 12000; total 132000; cada persona 132000. |

Prueba de escritorio: personas = 4 → `4 <= 0` es falso → propina = 120000 × 10 / 100 = 12000 → total = 132000 → pagoPorPersona = 132000 / 4 = 33000.

## Parqueadero

| Regla | Tipo | Minutos | Factura | Resultado |
| --- | --- | --- | --- | --- |
| R1 | Cualquiera | Menos de 0 | Cualquiera | Error: minutos negativos. |
| R2 | Distinto de 1 y 2 | 0 o más | Cualquiera | Error: tipo no válido. |
| R3 | 1 o 2 | De 0 a 15 | Cualquiera | Gratis. |
| R4 | 1 o 2 | Más de 15 | No | Horas por tarifa, máximo 30000. |
| R5 | 1 o 2 | Más de 15 | Sí | Aplicar el máximo y después dividir entre 2. |

| Tipo | Minutos | Factura | Resultado esperado |
| --- | --- | --- | --- |
| 1 | 0 | N | 0 |
| 1 | 15 | N | 0 |
| 1 | 16 | N | 4000 |
| 1 | 60 | N | 4000 |
| 1 | 61 | N | 8000 |
| 2 | 61 | S | 2000 |
| 1 | 600 | N | 30000 |
| 1 | 600 | s | 15000 |
| 3 | 30 | N | Error: tipo no válido. |
| 1 | -5 | N | Error: minutos negativos. |
| 3 | -1 | N | Error: minutos negativos. |
| 2 | 900 | N | 30000 |
| 2 | 901 | S | 15000 |

Prueba de escritorio del carro con 600 minutos y factura:

| Paso | Variable o decisión | Valor |
| --- | --- | --- |
| 1 | minutos < 0 | Falso |
| 2 | tipo = 1: tarifa | 4000 |
| 3 | minutos <= 15 | Falso |
| 4 | horas = trunc((600 + 59) / 60) | 10 |
| 5 | valor = horas × tarifa | 40000 |
| 6 | valor > 30000: aplicar tope | 30000 |
| 7 | factura = "S": dividir entre 2 | 15000 |

## Semáforo de inventario

| Unidades | Resultado |
| --- | --- |
| Menos de 0 | Error: las unidades no pueden ser negativas. |
| 0 | Rojo: agotado. |
| De 1 a 10 | Amarillo: hay que pedir. |
| Más de 10 | Verde: todo bien. |

Casos borde: -1 → error; 0 → rojo; 1 → amarillo; 10 → amarillo; 11 → verde.

Prueba de escritorio con 10 unidades: `10 < 0` es falso → `10 = 0` es falso → `10 <= 10` es verdadero → amarillo. Con 11, la última condición es falsa y se muestra verde.

## Año bisiesto

Condición: `((anio MOD 4 = 0) Y (anio MOD 100 <> 0)) O (anio MOD 400 = 0)`.

| Divisible entre 4 | Divisible entre 100 | Divisible entre 400 | Resultado |
| --- | --- | --- | --- |
| No | No | No | No bisiesto. |
| Sí | No | No | Bisiesto. |
| Sí | Sí | No | No bisiesto. |
| Sí | Sí | Sí | Bisiesto. |

| Año | MOD 4 | MOD 100 | MOD 400 | Resultado esperado |
| --- | --- | --- | --- | --- |
| 2026 | 2 | 26 | 26 | No bisiesto. |
| 2024 | 0 | 24 | 24 | Bisiesto. |
| 1900 | 0 | 0 | 300 | No bisiesto. |
| 2000 | 0 | 0 | 0 | Bisiesto. |

Prueba de escritorio con 1900: divisible entre 4 es verdadero; no divisible entre 100 es falso; divisible entre 400 es falso → `(Verdadero Y Falso) O Falso` → falso. Con 2000, el último término es verdadero y el resultado es bisiesto.
