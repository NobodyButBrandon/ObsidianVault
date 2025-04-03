18-Mar-2025 01:11
Up: [[Data Warehouse Systems - Vaisman & Zimanyi]]
# Ch3 - Data Warehouse Concepts

## Reference
[[Data Warehouse Systems.pdf#page=69&offset=0,617,0|Data Warehouse Systems, Chapter 3 Data Warehouse Concepts]]
___
# Notes
___
## Modelo multidimensional

Los _almacenes de datos_ son bases de datos dedicadas al análisis de datos diseñados para soportar queries OLAP eficientemente. 

Los almacenes de datos son diseñados para soportar grandes volúmenes de datos históricos por cada consulta, esto implica comúnmente que necesitan traerse todos o la mayoría de registros. Un ejemplo de una consulta sobre un DW (data warehouse) es la de obtener las ventas totales por producto  y por consumidor.

Están basados en el modelo _multidimensional_ que ve los datos en un cubo o hipercubo donde cada _dimension_ del cubo es una perspectiva de análisis.
___
#### <span style="color:7cd37c;">Ejemplo cubo de datos:</span>

![600](https://i.imgur.com/qKdIvD4.png)

En el cubo del ejemplo se está analizando _medidas_ de ventas como objeto de estudio. Las _medidas_ son el contenido numérico de cada celda del cubo, o _hecho_. 

Tenemos 3 dimensiones: Producto, Cliente y Tiempo. Dentro de cada dimensión tenemos _niveles_, un nivel representa la granularidad de la categoría con la cual se analizará las ventas. En nuestro ejemplo, los niveles son: Cuarto de año (Tiempo), Ciudad (Cliente), Categoría (Producto).

Luego tenemos _miembros_, los cuales son instancias de una dimensión, cada miembro pertenece a un nivel específico dentro de su dimensión, por ejemplo '2015' puede ser un miembro de la dimensión tiempo al nivel de años. O en nuestro ejemplo, mariscos y bebidas son instancias de la dimensión producto en el nivel de categoría.

Las dimensiones tienen además _atributos_ asociados a ellas que se usan para describirlas. Por ejemplo, la dimensión de producto puede tener los atributos NúmeroProducto y PrecioUnitario (no mostrado en la figura).
___
### Jerarquías
Las _jerarquías_ son relaciones de de mapeo, una jerarquía mapea detalles finos en el nivel más bajo (hijo) a conceptos más generales en un nivel más alto (padre).

La estructura jerárquica de una dimensión se denomina el _esquema_ de la dimensión, mientras que una _instancia de dimensión_ comprende los miembros en todos niveles de una dimensión.
___
#### <span style="color:7cd37c;">Ejemplo jerarquías</span>

![600](https://i.imgur.com/xonIsda.png)

En la figura anterior vemos como en las 3 dimensiones, tenemos distintos niveles dentro de cada una de ellas. La relación que va de un nivel a otro es una jerarquía.

Mientras más abajo en la jerarquía, mayor es la granularidad y mientras más subamos por el esquema de dimensión encontramos menos detalle.

En la dimensión de Producto, tenemos que el nivel más bajo es el de Producto y le sigue un nivel más alto Categoría. Ósea, los productos pueden ser agrupados por Categoría en la dimensión Producto. 

Similarmente en la dimensión de Tiempo la granularidad más baja es la de Días y se nos indica que los días pueden ser agregados por Meses, a su vez estos por Cuatrimestres, que a su vez por Semestres y por Años.
___
#### <span style="color:7cd37c;">Ejemplo instancia de dimensión</span>

![600](https://i.imgur.com/NXZlI0B.png)

En la figura anterior tenemos un ejemplo de instancia de dimensión, específicamente la dimensión Producto. Cada producto del nivel más bajo de la jerarquía puede asignarse a una categoría correspondiente.

En el mundo real existen muchos tipos de jerarquías, la imagen muestra uno de los más básicos, una _jerarquía equilibrada_ ya que hay el mismo
número de niveles desde cada producto individual hasta la raíz de la jerarquía.
___
### Medidas
Una medida es un valor cuantitativo que representa un hecho en el cubo de datos. Ósea, la información numérica que se analiza (por ejemplo, ventas totales o cantidad de unidades vendidas).
___
#### <span style="color:7cd37c;">Ejemplo agregación de medidas:</span>

Cada medida dentro del cubo está asociada a una _función de agregación_ (como suma, promedio, máximo o mínimo). Las funciones de agregación entran en juego para resumir los datos al cambiar el nivel de detalle de la visualización, permitiendo analizar la información a través de las distintas jerarquías de las dimensiones.

![400](https://i.imgur.com/xonIsda.png) 

para cambiar la granularidad de esta dimensión de Ciudad a País en el nuestro cubo original

![400](https://i.imgur.com/qKdIvD4.png)

entonces las ventas de todos los compradores van a ser agregadas por país usando una función de agregación asociada, la suma por ejemplo obteniendo el siguiente nuevo cubo.

![400](https://i.imgur.com/QXOGv79.png)
___
#### Condiciones de resumibilidad
Para asegurar resultados correctos de agregación se debe mantener un set de condiciones. A continuación se enumeran algunas de ellas.

**Disyunción de instancias**
La agrupación por instancias en un nivel con respecto al siguiente nivel deben ser de conjuntos disjuntos. Por ejemplo, en la figura

![](https://i.imgur.com/NXZlI0B.png)

Un producto no puede pertenecer a dos categorías, Si este fuera el caso, las ventas de cada producto se contarían dos veces, una por cada categoría.

**Completitud**
Todas las instancias o miembros de una dimensión deben estar presentes en su respectivo nivel y cada instancia en un nivel inferior debe estar mapeado a un miembro de un nivel superior.

Por ejemplo, en la dimensión Tiempo de la imagen, el nivel Día debe contener todos los días en el período de interés. 

![](https://i.imgur.com/xonIsda.png)

Si no se cumpliera esta condición, la agregación de los resultados sería
incorrecta, ya que habría fechas cuyas ventas no se contabilizarían.

**Correctitud**
Las medidas pueden tener varios tipos, y el tipo de medida me va a definir la clase de funciones de agregación que se pueden ejecutar sobre ellas. La correctitud tiene que ver con el uso correcto de las funciones de agregación.
___
#### Medidas aditivas, semi-aditivas y no aditivas

El siguiente concepto es importante:

**Resumibilidad** se refiere a la correcta agregación de las medidas del cubo a lo largo de jerarquías de dimensiones, para obtener resultados de agregación coherentes

 Ahora, las medidas se pueden clasificar de acuerdo a cómo se pueden agregar con respecto a las dimensiones. Existen de 3 tipos
 
**Medidas aditivas**
Son aquellas que pueden ser sumadas de manera significativa a lo largo de todas las dimensiones. Por ejemplo consideremos que la medida que se representa en el siguiente cubo es la de <u>ventas</u>

![600](https://i.imgur.com/qKdIvD4.png)

Se trata de una medida aditiva ya que para agrupar un nivel bajo en uno más alto es posible sumar los valores de las instancias del nivel más bajo y me dará la nueva medida correcta y real para la instancia del nivel más alto que agrupa a las medidas hijas originales. 

Es decir, si estoy en el nivel Día en la dimensión Tiempo y quiero escalar al nivel Mes, es posible sumar las <u>ventas</u> de todos los días y obtendré las ventas del Mes que contiene a esos días. Esto es verdad para cualquiera de las 3 dimensiones.

**Medidas semi-aditivas**
Las medidas semi-aditivas son aquellas en las que puedo resumir correctamente un nivel en uno superior usando adición pero solo para algunas dimensiones. 

Un ejemplo típico es la medida de <u>inventarios</u>. Ya que sumar los inventarios de 30 días distintos no produce la medida correcta mensual, esto se debe a que hay productos en inventario más de 1 día.

**Medidas no aditivas**
Las medidas no aditivas son aquellas que no se pueden resumir correctamente mediante suma en ninguna dimensión. Ejemplos típicos son el precio del artículo, el coste por unidad y el tipo de cambio. Esto se debe a que su **significado** no cambia con el tamaño del conjunto ni se acumula.

- Si sumás los precios de diferentes productos, no obtenés un precio significativo.
- [[Explicación ChatGPT para coste por unidad]].
- Sumar los tipos de cambio de diferentes días no genera un tipo de cambio representativo.
___
#### Medidas Distribuidas, Algebraicas y Holísticas

**Medidas Distributivas**
Es distributiva si puede aplicarse por separado en subconjuntos particionados del conjunto total y, luego, combinarse para obtener el mismo resultado que si se aplicara a todo el conjunto directamente.

Por ejemplo la **suma:** ya que se suma cada partición y luego se suman las sumas parciales para obtener la suma total. El **conteo:** ya que contar en cada subconjunto y luego sumar los conteos da el total.

Por contraejemplo está la función **distinct count** (conteo de valores únicos). 

**Medidas Algebraicas**  
Las medidas algebraicas son aquellas cuyo resultado se puede obtener como función escalar de otras funciones de agregación distributivas.

Por ejemplo, el **promedio:** se calcula obteniendo primero la **suma** de todos los datos (una función distributiva) y el **conteo** de todos los elementos (también distributivo). Luego, se divide la suma total entre el conteo total. Esto permite computarlo de forma distribuida.

**Medidas Holísticas**  
Las medidas holísticas no pueden derivarse a partir de la combinación de subagregados parciales.

Por ejemplo, la **mediana:** necesita ordenar todos los datos para determinar el valor central. La **moda:** requiere evaluar la frecuencia de cada valor para identificar el más recurrente.

Debido a esta necesidad de procesar todos los datos, estas medidas suelen ser más costosas.

Seguir con las operaciones OLAP -> _03-Apr-2025_ #UNI_TODO 