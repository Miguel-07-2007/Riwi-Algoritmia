# Negar una edad válida

Condición de edad válida: `edad >= 0 Y edad <= 120`.

Al aplicar De Morgan, `NO (edad >= 0 Y edad <= 120)` equivale a `edad < 0 O edad > 120`. Cambian las comparaciones y también cambia Y por O.

| Edad | edad < 0 | edad > 120 | Edad inválida | Resultado |
| --- | --- | --- | --- | --- |
| -1 | Verdadero | Falso | Verdadero | Inválida |
| 0 | Falso | Falso | Falso | Válida |
| 120 | Falso | Falso | Falso | Válida |
| 121 | Falso | Verdadero | Verdadero | Inválida |

Prueba de escritorio con 121: `121 < 0` es falso; `121 > 120` es verdadero; falso O verdadero da verdadero, así que la edad es inválida.
