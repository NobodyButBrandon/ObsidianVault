**Medidas Distributivas**
Es distributiva si puede aplicarse por separado en subconjuntos particionados del conjunto total y, luego, combinarse para obtener el mismo resultado que si se aplicara a todo el conjunto directamente.

Por ejemplo la **suma:** ya que se suma cada partición y luego se suman las sumas parciales para obtener la suma total. El **conteo:** ya que contar en cada subconjunto y luego sumar los conteos da el total.

Por contraejemplo está la función **distinct count** (conteo de valores únicos). 

**Medidas Algebraicas**  
Las medidas algebraicas son aquellas cuyo resultado se puede obtener como función escalar de otras funciones de agregación distributivas.

Por ejemplo, el **promedio:** se calcula obteniendo primero la **suma** de todos los datos (una función distributiva) y el **conteo** de todos los elementos (también distributivo). Luego, se divide la suma total entre el conteo total. Esto permite computarlo de forma distribuida.

**Medidas Holísticas**  
Las medidas holísticas no pueden derivarse a partir de la combinación de subagregados parciales.

Por ejemplo, la **mediana:** necesita ordenar todos los datos para determinar el valor central. La **moda:** requiere evaluar la frecuencia de cada valor para identificar el más recurrente.

Debido a esta necesidad de procesar todos los datos, estas medidas suelen ser más costosas.