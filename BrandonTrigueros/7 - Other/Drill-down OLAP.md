### Drill-down
Es la operación inversa del [[Roll-up OLAP]], es decir que va de un nivel mas general a uno más detallado.

_Sintaxis_:
``` c
DRILLDOWN(CubeName, (Dimension → Level)*)
```

_Ejemplo_: Podemos ver si las altas ventas en Francia en el primer Trimestre se dieron en algún mes en particular operando sobre el cubo base de la siguiente manera:
``` c
DRILLDOWN(Sales, Time → Month)
```
Transforma el cubo así y vemos que por alguna razón las ventas de mariscos en enero en Paris y Lyon se dispararon:
![300](https://i.imgur.com/OUZSEUA.png) **->** ![300](https://i.imgur.com/9cMg2Q0.png)

_Otro_ [[Ejemplo Drill-down en la vida real]] sería el siguiente:
![[Ejemplo Drill-down en la vida real#Ejemplo]]
