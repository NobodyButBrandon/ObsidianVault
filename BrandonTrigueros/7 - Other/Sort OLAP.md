# Sort OLAP
Básicamente devuelve un cobo en el que ordena los miembros de una dimensión

_Sintaxis_:
``` c
SORT(CubeName, Dimension, (Expresion [{ASC, DESC, BASC, BDESC}] )*)
```
En el caso de ASC o DESC, los miembros se ordenan dentro de su padre, mientras que, en el caso de BASC o BDESC la ordenación se realiza a través de todos los miembros.

_Ejemplo_: Aplicar al cubo inicial la siguiente operación roll-up calcula la cantidad de ventas por país:
``` c
SORT(Sales, Product, ProductName))
```
Ordena los miembros de la dimensión de Producto ascendentemente usando el atributo ProductName. Transforma el cubo de la siguiente manera:
![300](https://i.imgur.com/OUZSEUA.png) **->** ![300](https://i.imgur.com/anjwwFj.png)

_Notas_: 
Cuando el cubo contiene una sola dimensión, los miembros pueden ordenarse en función de sus medidas. Si VentasPorTrimestre se obtiene del cubo original agregando las ventas por trimestre de todas las ciudades y todas las categorías:
```c
SORT(SalesByQuarter, Time, Quantity DESC)
```
Ordena los miembros de Tiempo en orden descendente de la medida Cantidad.

_Ejemplos_:
[[Ejemplo Sort en la vida real]] sería el siguiente:
![[Ejemplo Sort en la vida real#Ejemplo]]

[[Otro Ejemplo de Sort en la vida real]]
![[Otro Ejemplo de Sort en la vida real#Ejemplos]]