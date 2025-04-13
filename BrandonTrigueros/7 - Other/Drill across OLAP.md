Observe también que el cubo tiene tres dimensiones y que la condición join de la consulta anterior sólo se refiere a una dimensión. Para las otras dimensiones se supone que se realiza un equijoin externo.# Drill across
Combina celdas de dos cubos de datos que tienen el mismo esquema e instancias, utilizando una condición de join. Esta operación es análoga a un complete outer join en el álgebra relacional.

_Sintaxis_:
``` c
DRILLACROSS(CubeName1, CubeName2, [Condition])
```

_Ejemplo_: Para ejemplificarlo necesitamos partir de dos cubos iniciales, el original de 2012 y uno nuevo para 2011
![300](https://i.imgur.com/OUZSEUA.png) ![300](https://i.imgur.com/Lz8GqDH.png)
Para tener las medidas de los dos cubos consolidadas en uno solo podemos utilizar la operación drill-across de la siguiente manera
``` css
Sales2011-2012 ← DRILLACROSS(Sales2011, Sales2012)
```
Obteniendo el cubo Sales2011-2012:
![300](https://i.imgur.com/EyHFF5h.png)

_Ejemplo_: Si tenemos el siguiente cubo Sales:
![300](https://i.imgur.com/9cMg2Q0.png)
Y quiero comparar las ventas de un mes con las del mes anterior puede obtenerse en dos pasos como se indica a continuación:
```c
Sales1 ← RENAME(Sales, Quantity → PrevMonthQuantity)

Result ← DRILLACROSS(Sales1, Sales, Sales1.Time.Month+1 = Sales.Time.Month)
```
En el segundo paso, realizamos el Drill across de los dos cubos combinando una celda de Sales1 con la celda de Sales correspondiente al mes siguiente.

_Notas_:
Observe también que el cubo tiene tres dimensiones y que la condición join de la consulta anterior sólo se refiere a una dimensión. Para las otras dimensiones se supone que se realiza un equijoin externo.