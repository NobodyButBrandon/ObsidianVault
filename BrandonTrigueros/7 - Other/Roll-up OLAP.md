# Roll-up
Básicamente sumariza medidas a lo largo de una jerarquía de dimensión para obtener las medidas de una granularidad menos detallada.

_Sintaxis_:
``` c
ROLLUP(CubeName, (Dimension → Level)*, AggFunction(Measure)*)
```

_Ejemplo_: Aplicar al cubo inicial la siguiente operación roll-up calcula la cantidad de ventas por país:
``` c
ROLLUP(Sales, Customer -> Country, SUM(Quantity))
```
Transforma el cubo de la siguiente manera:
![300](https://i.imgur.com/OUZSEUA.png) **->** ![300](https://i.imgur.com/BPtwTWE.png)

_Notas_: 
Puedo hacer roll-up sobre una dimensión y llevar el resto a la jerarquía All así:
```c
ROLLUP*(Sales, Time → Quarter, SUM(Quantity))
```
Que realiza un roll-up a lo largo de la dimensión Tiempo hasta el nivel Trimestre y de las otras dimensiones (en este caso Cliente y Producto) hasta el nivel Todo.

Puedo contar el número de miembros en una de las dimensiones eliminadas del cubo. La consulta:
```c
ROLLUP*(Ventas, Tiempo → Trimestre, COUNT(Producto) AS ProdCount)
```
Obtiene el número de productos distintos vendidos por trimestre y se añadirá una nueva medida ProdCount al cubo.

_Otro_ [[Ejemplo Roll-up en la vida real]] sería el siguiente:
![[Ejemplo Roll-up en la vida real#Ejemplo]]
