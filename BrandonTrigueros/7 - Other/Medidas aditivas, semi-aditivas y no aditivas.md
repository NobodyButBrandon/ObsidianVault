Ahora, las medidas se pueden clasificar de acuerdo a cómo se pueden agregar con respecto a las dimensiones. Existen de 3 tipos
 
**Medidas aditivas**
Son aquellas que pueden ser sumadas de manera significativa a lo largo de todas las dimensiones. Por ejemplo consideremos que la medida que se representa en el siguiente cubo es la de <u>ventas</u>

![600](https://i.imgur.com/qKdIvD4.png)

Se trata de una medida aditiva ya que para agrupar un nivel bajo en uno más alto es posible sumar los valores de las instancias del nivel más bajo y me dará la nueva medida correcta y real para la instancia del nivel más alto que agrupa a las medidas hijas originales. 

Es decir, si estoy en el nivel Día en la dimensión Tiempo y quiero escalar al nivel Mes, es posible sumar las <u>ventas</u> de todos los días y obtendré las ventas del Mes que contiene a esos días. Esto es verdad para cualquiera de las 3 dimensiones.

**Medidas semi-aditivas**
Las medidas semi-aditivas son aquellas en las que puedo resumir correctamente un nivel en uno superior usando adición pero solo para algunas dimensiones. 

Un ejemplo típico es la medida de <u>inventarios</u>. Ya que sumar los inventarios de 30 días distintos no produce la medida correcta mensual, esto se debe a que hay productos en inventario más de 1 día.

**Medidas no aditivas**
Las medidas no aditivas son aquellas que no se pueden resumir correctamente mediante suma en ninguna dimensión. Ejemplos típicos son el precio del artículo, el coste por unidad y el tipo de cambio. Esto se debe a que su **significado** no cambia con el tamaño del conjunto ni se acumula.

- Si sumás los precios de diferentes productos, no obtenés un precio significativo.
- [[Explicación ChatGPT para coste por unidad]].
- Sumar los tipos de cambio de diferentes días no genera un tipo de cambio representativo.