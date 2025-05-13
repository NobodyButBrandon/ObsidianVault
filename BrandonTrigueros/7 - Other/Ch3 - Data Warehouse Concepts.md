18-Mar-2025 01:11
Up: [[Data Warehouse Systems - Vaisman & Zimanyi]]
# Ch3 - Data Warehouse Concepts

## Reference
[[Data Warehouse Systems.pdf#page=69&offset=0,617,0|Data Warehouse Systems, Chapter 3 Data Warehouse Concepts]]
___
# Notes
## Modelo multidimensional
### Conceptos básicos
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
Las _jerarquías_ son relaciones de mapeo, una jerarquía mapea detalles finos en el nivel más bajo (hijo) a conceptos más generales en un nivel más alto (padre).

La estructura jerárquica de una dimensión se denomina el _esquema_ de la dimensión, mientras que una _instancia de dimensión_ comprende los miembros en todos niveles de una dimensión.
#### <span style="color:7cd37c;">Ejemplo jerarquías</span>

![600](https://i.imgur.com/xonIsda.png)

En la figura anterior vemos como en las 3 dimensiones, tenemos distintos niveles dentro de cada una de ellas. La relación que va de un nivel a otro es una jerarquía.

Mientras más abajo en la jerarquía, mayor es la granularidad y mientras más subamos por el esquema de dimensión encontramos menos detalle.

En la dimensión de Producto, tenemos que el nivel más bajo es el de Producto y le sigue un nivel más alto Categoría. Ósea, los productos pueden ser agrupados por Categoría en la dimensión Producto. 

Similarmente en la dimensión de Tiempo la granularidad más baja es la de Días y se nos indica que los días pueden ser agregados por Meses, a su vez estos por Cuatrimestres, que a su vez por Semestres y por Años.
#### <span style="color:7cd37c;">Ejemplo instancia de dimensión</span>

![600](https://i.imgur.com/NXZlI0B.png)

En la figura anterior tenemos un ejemplo de instancia de dimensión, específicamente la dimensión Producto. Cada producto del nivel más bajo de la jerarquía puede asignarse a una categoría correspondiente.

En el mundo real existen muchos tipos de jerarquías, la imagen muestra uno de los más básicos, una _jerarquía equilibrada_ ya que hay el mismo
número de niveles desde cada producto individual hasta la raíz de la jerarquía.
___
### Medidas
Una medida es un valor cuantitativo que representa un hecho en el cubo de datos. Ósea, la información numérica que se analiza (por ejemplo, ventas totales o cantidad de unidades vendidas).
#### <span style="color:7cd37c;">Ejemplo agregación de medidas:</span>

Cada medida dentro del cubo está asociada a una _función de agregación_ (como suma, promedio, máximo o mínimo). Las funciones de agregación entran en juego para resumir los datos al cambiar el nivel de detalle de la visualización, permitiendo analizar la información a través de las distintas jerarquías de las dimensiones.

![400](https://i.imgur.com/xonIsda.png) 

para cambiar la granularidad de esta dimensión de Ciudad a País en el nuestro cubo original

![400](https://i.imgur.com/qKdIvD4.png)

entonces las ventas de todos los compradores van a ser agregadas por país usando una función de agregación asociada, la suma por ejemplo obteniendo el siguiente nuevo cubo.

![400](https://i.imgur.com/QXOGv79.png)

El siguiente concepto es importante para las secciones posteriores:
**Resumibilidad** se refiere a la correcta agregación de las medidas del cubo a lo largo de jerarquías de dimensiones, para obtener resultados de agregación coherentes
#### [[Condiciones de resumibilidad]]

#### [[Medidas aditivas, semi-aditivas y no aditivas]]

#### [[Medidas Distribuidas, Algebraicas y Holísticas]]

___
## Operaciones OLAP
Se usa el siguiente cubo de partida para mostrar las distintas operaciones OLAP

![300](https://i.imgur.com/OUZSEUA.png)
### [[Roll-up OLAP]]
### [[Drill-down OLAP]]
### [[Sort OLAP]]

### [[Pivot OLAP]]

### [[Slice OLAP]]

### [[Dice OLAP]]

### [[Rename OLAP]]

### [[Drill across OLAP]]

### [[Add measure OLAP]]

### [[Drop measure OLAP]]

### [[Aggregation OLAP]]

### [[Union OLAP]]

### [[Difference OLAP]]

![](https://i.imgur.com/b9CwJpj.png)

## Almacenes de Datos

### Diferencias entre bases de datos transaccionales y almacenes de datos
![](https://i.imgur.com/vSHbaL6.png)

### Arquitectura de un almacén de datos
![](https://i.imgur.com/RkfH7cO.png)

**Como extraer datos**
Para resolver los problemas de interoperabilidad, los datos se extraen siempre que es posible utilizando interfaces de programación de aplicaciones (API) como ODBC (Open Database Connectivity) y JDBC (Java Database Connectivity).

**Refrescar el almacén (Data flows)**
Refrescar el almacén de datos quiere decir propagar las actualizaciones de las fuentes de datos al almacén de datos con una frecuencia determinada a fin de proporcionar datos actualizados para el proceso de toma de decisiones.

**Que metadatos tener**
Metadatos de estructura del almacén y data marts: Describen el modelo (conceptual, lógico, físico) e incluyen detalles de seguridad y supervisión.. 

Metadatos de fuentes de datos:  Documentan los esquemas, propiedad, frecuencia de actualización, restricciones legales y métodos de acceso. 

Metadatos de Proceso ETL: Cubren el linaje, extracción, limpieza, transformación, actualización y depuración, así como los algoritmos de integración.

**Lenguajes para interactuar con DW**
XMLA (XML for Analysis) tiene como objetivo proporcionar un lenguaje común para el intercambio de datos multidimensionales entre aplicaciones cliente y servidores OLAP.

Además, MDX (MultiDimensional eXpressions) y DAX (Data Analysis eXpressions) son lenguajes de consulta para bases de datos OLAP.

**Variaciones en la arquitectura**
Un data mart suele ser más fácil de crear que un almacén empresarial. Sin embargo, cuando se crean varios data marts de forma independiente, es necesario integrarlos en un DW, lo que suele ser complicado.

En otras situaciones, no existe un servidor OLAP y/o las herramientas cliente acceden directamente al almacén de datos.

**Herramientas**
Visual Studio es una plataforma de desarrollo que admite proyectos de Analysis Services, Reporting Services e Integration Services. 

SQL Server Management Studio (SSMS) proporciona una gestión integrada de todos los componentes de SQL Server. 

Power BI es una herramienta de inteligencia empresarial cuyo objetivo es permitir a los usuarios finales de negocio analizar datos y crear sus propias visualizaciones de datos en forma de informes

Por último, Power Pivot es un complemento para Excel que permite crear y analizar modelos de datos.