# Add measure
La operación de añadir medida añade nuevas medidas al cubo calculadas a partir de otras medidas o dimensiones.

_Sintaxis_:
``` c
ADDMEASURE(CubeName, (NewMeasure = Expression, [AggFunction])* )
```

_Ejemplo_: Para calcular el cambio porcentual de las ventas entre los dos años, tomamos el cubo resultante del ejemplo de [[Drill across OLAP]]:
![300](https://i.imgur.com/EyHFF5h.png)
Y le aplicamos la siguiente operación de Add measure:
``` css
ADDMEASURE(Sales2011-2012, PercentageChange = (Quantity2011 - Quantity2012) / Quantity2011)
```
La nueva medida se ve así:
![300](https://i.imgur.com/KRVmKzY.png)

_Notas_:
La operación ADDMEASURE añade la nueva medida sin eliminar las medidas que ya estaban. Esto significa que el cubo resultante conserva las columnas Quantity2011 y Quantity2012 y añade la columna PercentageChange.