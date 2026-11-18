# Sesión 3: repetir y descomponer

## Ejercicios

| Ejercicio | Archivo |
| --- | --- |
| 1. Caracol del pozo | [Solución y traza](ej-1-caracol/README.md) |
| 2. Cajero del PIN | [Programa](ej-2-cajero-pin/cajero_pin.psc) |
| 3. Vueltas de los ciclos | [Resultados](ej-3-vueltas-de-los-ciclos/README.md) |
| 4. Cajero del parqueadero | [Programa](ej-4-cajero-parqueadero/cajero_parqueadero.psc) |
| 5. Calificaciones | [Programa](ej-5-calificaciones/calificaciones.psc) |
| 6. Pirámide | [Programa](ej-6-piramide/piramide.psc) |
| 7. Factura del restaurante | [Programa](ej-7-factura-restaurante/factura_restaurante.psc) |

## Traza del cajero del parqueadero

Entrada: 4000, 8000, 2000, 0.

| Vuelta | valor | total | carros | Siguiente lectura |
| --- | --- | --- | --- | --- |
| Antes del ciclo | 4000 | 0 | 0 | — |
| 1 | 4000 | 4000 | 1 | 8000 |
| 2 | 8000 | 12000 | 2 | 2000 |
| 3 | 2000 | 14000 | 3 | 0 |

Resultado de escritorio: 3 carros atendidos y 14000 recaudados.

## Traza de la pirámide

Entrada: n = 4.

| Fila | Espacios | Asteriscos |
| --- | --- | --- |
| 1 | 3 | 1 |
| 2 | 2 | 3 |
| 3 | 1 | 5 |
| 4 | 0 | 7 |

Salida esperada:

```text
   *
  ***
 *****
*******
```

## Pruebas de escritorio

| Programa | Entrada | Resultado esperado |
| --- | --- | --- |
| Cajero del PIN | 1234 | Acceso permitido en el primer intento. |
| Cajero del PIN | 0000, 1111, 1234 | Acceso permitido en el tercer intento. |
| Cajero del PIN | 0000, 1111, 2222 | Tarjeta bloqueada después de tres intentos. |
| Cajero del parqueadero | 0 | 0 carros y 0 recaudados. |
| Cajero del parqueadero | 4000, 8000, 2000, 0 | 3 carros y 14000 recaudados. |
| Calificaciones | 3.5, 2.8, 4.9, 3.0, 4.2 | Promedio 3.68; 4 aprobados; mayor 4.9; menor 2.8; hay estudiantes en refuerzo. |
| Calificaciones | 3, 3, 3, 3, 3 | Promedio 3; 5 aprobados; mayor 3; menor 3; ningún estudiante perdió. |
| Pirámide | 1 | Una fila con un asterisco y cero espacios. |
| Pirámide | 4 | Cuatro filas con 1, 3, 5 y 7 asteriscos. |
| Factura del restaurante | 2 bandejas y 1 ajiaco | Subtotal 62000; impuesto 4960; propina 6200; total 73160. |
| Factura del restaurante | 1 bandeja y 0 ajiacos | Subtotal 25000; impuesto 2000; propina 2500; total 29500. |

## Árbol de componentes

Página escogida: menú de un restaurante.

```text
Página del restaurante
├── Encabezado
│   ├── Logo
│   ├── Menú de navegación
│   └── Banner
├── Contenido
│   └── Lista de platos
│       ├── Tarjeta de plato 1
│       │   ├── Imagen
│       │   ├── Nombre y precio
│       │   └── Botón Agregar
│       ├── Tarjeta de plato 2
│       │   ├── Imagen
│       │   ├── Nombre y precio
│       │   └── Botón Agregar
│       └── Tarjeta de plato 3
│           ├── Imagen
│           ├── Nombre y precio
│           └── Botón Agregar
└── Pie de página
    ├── Datos de contacto
    └── Horario de atención
```
