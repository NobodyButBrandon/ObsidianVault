18-Mar-2025 01:11
Up: [[Data Warehouse Systems - Vaisman & Zimanyi]]
# Ch3 - Data Warehouse Concepts

## Reference
[[Data Warehouse Systems.pdf#page=69&offset=0,617,0|Data Warehouse Systems, Chapter 3 Data Warehouse Concepts]]
___
# Notes

## Modelo multidimensional

Los _almacenes de datos_ son bases de datos dedicadas al análisis de datos diseñados para soportar queries OLAP eficientemente. 

Los almacenes de datos son diseñados para soportar grandes volúmenes de datos históricos por cada consulta, esto implica comúnmente que necesitan traerse todos o la mayoría de registros. Un ejemplo de una consulta sobre un DW (data warehouse) es la de obtener las ventas totales por producto  y por consumidor.

Están basados en el modelo _multidimensional_ que ve los datos en un cubo o hipercubo donde cada _dimension_ del cubo es una perspectiva de análisis.

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

#### <span style="color:7cd37c;">Ejemplos jerarquías:</span>

![600](https://i.imgur.com/xonIsda.png)

En la figura anterior vemos como en las 3 dimensiones, tenemos distintos niveles dentro de cada una de ellas. La relación que va de un nivel a otro es una jerarquía. Mientras más abajo en la jerarquía, mayor es la granularidad y mientras más subamos por el esquema de dimensión encontramos menos detalle.

Por ejemplo, en la dimensión de Producto, tenemos que el nivel más bajo es el de Producto, esto quiere decir que los productos se agrupan por el nivel más alto, que es categoría. Ósea, los productos pueden ser agrupados por categoría en la dimensión Producto. 

Similarmente en la dimensión de tiempo la granularidad más baja es la de días y se nos indica que los días pueden ser agregados por meses, a su vez estos por cuatrimestres, que a su vez por semestres y por años.
___

![600](https://i.imgur.com/NXZlI0B.png)

En la figura anterior tenemos un ejemplo de instancia de dimensión, específicamente la dimensión Producto. Cada producto del nivel más bajo de la jerarquía puede asignarse a una categoría correspondiente.

En el mundo real existen muchos tipos de jerarquías, la imagen muestra uno de los más básicos, una _jerarquía equilibrada_ ya que hay el mismo
número de niveles desde cada producto individual hasta la raíz de la jerarquía.
___

![[Pasted image 20250318085945.png|600]]

Comparación entre bases de datos operativas y almacenes de datos
![[Pasted image 20250318090416.png|600]]

Typical data warehouse architecture
![[Pasted image 20250318090530.png|600]]

