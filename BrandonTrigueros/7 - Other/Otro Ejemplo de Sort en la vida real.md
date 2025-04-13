Imagina que una empresa de comercio electrónico utiliza un cubo de datos llamado **ECommerceCube** para analizar sus ventas y distribución.

Inicialmente, el cubo consolida la información en dos dimensiones: **Producto** (por ejemplo, "Smartphone", "Laptop", "Accesorios", etc.) y **Ubicación** (por ejemplo, "Nueva York", "Madrid", "Tokio", etc.). En una revisión general se detecta que es necesario ordenar los datos para:
- Ordenar los productos alfabéticamente.
- Ordenar las ubicaciones por la cantidad de ventas, de mayor a menor.
### Operación SORT en la Vida Real con Múltiples Dimensiones
Para lograr este ordenamiento se aplican dos operaciones **SORT** de la siguiente manera:
#### Ejemplos
```c
SORT(ECommerceCube, Producto, ProductName ASC)
SORT(ECommerceCube, Ubicación, Ventas DESC)
```
### Explicación de los Ejemplos

- **CubeName**: _ECommerceCube_ es el cubo que contiene la información consolidada de las ventas.
- **Operación para la Dimensión Producto**:
    - Se aplica la ordenación sobre la dimensión **Producto** utilizando el atributo **ProductName**.
    - El modificador **ASC** asegura que los productos se ordenen de forma ascendente (alfabéticamente).
- **Operación para la Dimensión Ubicación**:
    - Se aplica la ordenación sobre la dimensión **Ubicación** utilizando la medida **Ventas**.
    - El modificador **DESC** indica que las ubicaciones se ordenen en forma descendente, de manera que las ciudades con mayores ventas se posicionen al inicio.
### Aplicación Práctica
Con estas operaciones, la gerencia del e-commerce puede:
- Visualizar los productos en orden alfabético para facilitar búsquedas y análisis comparativos.
- Identificar rápidamente las ubicaciones con mayores ventas, lo que permite focalizar estrategias de marketing o redistribución de inventario.

De esta manera, la operación **SORT** aplicada a múltiples dimensiones permite optimizar la presentación y análisis de los datos, facilitando la toma de decisiones estratégicas basadas en información organizada y priorizada.