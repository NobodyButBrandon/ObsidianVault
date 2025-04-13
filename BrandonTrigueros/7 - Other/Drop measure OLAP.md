# Drop measure
Drop measure remueve una o varias medidas de un cubo

_Sintaxis_:
``` c
DROPMEASURE(CubeName, Measure* )
```

_Ejemplo_: Si aplicamos la operación
``` css
DROPMEASURE(Sales2o11-2012, Quantity2011, Quantity2012 )
```
Al cubo resultante del ejemplo [[Add measure OLAP]] (El cual contiene 3 medidas), obtenemos como resultado el cubo
![300](https://i.imgur.com/KRVmKzY.png)

_Notas_:
Este nuevo cubo solamente tiene la medida de PercentageChange