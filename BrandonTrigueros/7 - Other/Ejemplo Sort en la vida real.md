Una empresa dedicada a la distribución de comida rápida utiliza un cubo de datos llamado **PedidosCube** para analizar el desempeño de sus productos.

Inicialmente, el cubo consolida la información a nivel de **Producto** (por ejemplo, "Hamburguesa", "Papas Fritas", "Bebida", etc.) junto con medidas como **Ingresos** y **CantidadVendida**. En una revisión general se detecta que es fundamental identificar rápidamente cuáles son los productos que generan mayores ingresos, ya que esta información es clave para ajustar la oferta y promociones.
### Operación SORT en la Vida Real
Para ordenar los productos de manera que los de mayores ingresos aparezcan primero, se utiliza la operación **sort**. La sintaxis se expresaría de la siguiente manera:
#### Ejemplo
```c
SORT(PedidosCube, Producto, Ingresos DESC)
```
### Explicación del Ejemplo
- **CubeName**: _PedidosCube_ es el cubo que contiene la información consolidada de los pedidos.
- **Dimension**:
    - Se aplica la ordenación sobre la dimensión **Producto**, que agrupa los diferentes artículos vendidos.
- **Expresión y Orden**:
    - Se utiliza la medida **Ingresos** para determinar el orden.
    - El modificador **DESC** indica que la ordenación es descendente, de forma que los productos con mayores ingresos se posicionan al inicio.
### Aplicación Práctica
Con esta operación, la gerencia puede visualizar de forma inmediata cuáles son los productos más rentables. Por ejemplo, se puede identificar que la "Hamburguesa" es el producto líder en términos de ingresos, lo que resulta esencial para:

- **Ajustar Promociones**: Focalizar campañas y ofertas en productos altamente rentables.    
- **Optimizar Inventarios**: Asegurar que los productos líderes estén siempre disponibles para satisfacer la demanda.
- **Tomar Decisiones Estratégicas**: Realizar análisis comparativos que faciliten la planificación de la expansión o la diversificación del menú.

De esta manera, el sort se convierte en una herramienta valiosa para ordenar y priorizar la información, permitiendo una toma de decisiones más ágil y basada en datos precisos.