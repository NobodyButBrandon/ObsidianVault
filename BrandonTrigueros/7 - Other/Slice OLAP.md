# Slice
La operación de Slice remueve una dimensión de un cubo.

_Sintaxis_:
``` c
SLICE(CubeName, Dimension, Level = 'Value')
```
Donde la Dimensión se descartará fijando un único Valor en el Nivel.

_Ejemplo_: Si en el cubo inicial queremos ver los datos solo para Paris, hacemos
``` c
SLICE(Sales, Customer, City='Paris')
```
Lo cual transforma el cubo de la siguiente manera:
![300](https://i.imgur.com/OUZSEUA.png) **->** ![](https://i.imgur.com/J1B2h2Z.png)

_Notas_: 
A menudo es necesario un cambio de granularidad mediante una operación de [[Roll-up OLAP]] o [[Drill-down OLAP]] antes de la operación de Slice, esto porque asume que la granularidad del cubo está en el nivel especificado de la dimensión.