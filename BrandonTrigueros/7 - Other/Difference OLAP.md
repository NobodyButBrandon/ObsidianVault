# DIFFERENCE
 Dados dos cubos con el mismo esquema, Diferencia elimina las celdas de un cubo que existen en otro. 
 
 _Sintaxis_:
 ```c
DIFFERENCE(NombreCubo1, NombreCubo2) 
```
 
 **Ejemplo 1**
 En nuestro ejemplo, podemos eliminar del cubo original a las celdas de las dos mayores ventas por trimestre y ciudad que se muestran en (n), que se llama TopTwoSales, de la siguiente manera 
 ```c
 DIFFERENCE(Ventas, TopDosVentas)
```
  Esto dará como resultado el cubo
![200](https://i.imgur.com/OUZSEUA.png) **-** ![200](https://i.imgur.com/r5wHk8D.png) **->** ![200](https://i.imgur.com/Lg9xzff.png)
