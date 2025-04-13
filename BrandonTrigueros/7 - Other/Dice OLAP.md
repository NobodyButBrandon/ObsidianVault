# Dice
La operación Dice mantiene en un cubo las celdas que satisfacen una condición booleana ϕ. El cubo resultante tiene la misma dimensionalidad que el cubo original y la operación Dice es análoga a una selección en el álgebra relacional.

_Sintaxis_:
``` c
DICE(CubeName, Condition)
```

_Ejemplo_: Podemos obtener un subcubo del cubo original que contenga únicamente las cifras de ventas de los dos primeros trimestres de Lyon y París de la siguiente manera
``` c
DICE(Sales, (Customer.City = 'Paris' OR Customer.City = 'Lyon') AND (Time.Quarter = 'Q1' OR Time.Quarter = 'Q2') )
```
El resultado de la operación a continuación:
![300](https://i.imgur.com/OUZSEUA.png) **->** ![300](https://i.imgur.com/w7gPj2I.png)

_Ejemplo_: Como otro ejemplo, podemos seleccionar las celdas del cubo original que tienen una medida superior a 15 con:
```c
DICE(Sales, Quantity > 15)
```
El resultado de la operación es:
![300](https://i.imgur.com/OUZSEUA.png) **->** ![300](https://i.imgur.com/SB2PT5c.png)
