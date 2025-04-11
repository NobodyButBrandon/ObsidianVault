Para asegurar resultados correctos de agregación se debe mantener un set de condiciones. A continuación se enumeran algunas de ellas.

**Disyunción de instancias**
La agrupación por instancias en un nivel con respecto al siguiente nivel deben ser de conjuntos disjuntos. Por ejemplo, en la figura

![](https://i.imgur.com/NXZlI0B.png)

Un producto no puede pertenecer a dos categorías, Si este fuera el caso, las ventas de cada producto se contarían dos veces, una por cada categoría.

**Completitud**
Todas las instancias o miembros de una dimensión deben estar presentes en su respectivo nivel y cada instancia en un nivel inferior debe estar mapeado a un miembro de un nivel superior.

Por ejemplo, en la dimensión Tiempo de la imagen, el nivel Día debe contener todos los días en el período de interés. 

![](https://i.imgur.com/xonIsda.png)

Si no se cumpliera esta condición, la agregación de los resultados sería
incorrecta, ya que habría fechas cuyas ventas no se contabilizarían.

**Correctitud**
Las medidas pueden tener varios tipos, y el tipo de medida me va a definir la clase de funciones de agregación que se pueden ejecutar sobre ellas. La correctitud tiene que ver con el uso correcto de las funciones de agregación.