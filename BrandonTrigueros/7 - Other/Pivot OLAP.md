# Pivot
La operación de pivote o de rotación, rota los ejes del cubo para presentar la información de una manera alternativa

_Sintaxis_:
``` c
PIVOT(CubeName, (Dimension → Axis)*)
```
donde los ejes se especifican como {X,Y,Z,X1,Y1,Z1,...}

_Ejemplo_: Si quiero ver el cubo inicial con la dimensión de Tiempo en el eje x entonces podemos hacer
``` c
PIVOT(Sales, Time → X, Customer → Y, Product → Z)
```
Para rotar el cubo de la siguiente manera
![300](https://i.imgur.com/OUZSEUA.png) **->** ![300](https://i.imgur.com/JsYzcOu.png)