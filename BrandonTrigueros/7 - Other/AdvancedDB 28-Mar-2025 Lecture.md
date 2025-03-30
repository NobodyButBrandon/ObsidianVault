### AdvancedDB 28-Mar-2025 Lecture

28-Mar-2025 09:21
Course: [[Advanced databases - UCR]]
___
#### **Lecture contents:**
Presentación: Almacenes de Datos <- Descargar y agregar, agregar al resto de lectures #UNI_TODO

Recapitulando con el modelo de estrella: Esto es un diagrama físico, estamos hablando de tablas, no es la conceptual.

La ventaja de un modelo conceptual es que es muy barato de modificar y que es fácil de adaptar a cualquier sistema de BD porque no contiene detalles técnicos.

La _tabla de hechos_ es donde están las medidas del objeto de estudio, ósea los valores que nos permiten dar respuesta a nuestra pregunta. 

Las medidas de la tabla de hechos tienen que corresponder con las direcciones.

El _copo de nieve_ es una normalización de las dimensiones, me ayuda a que sea más legible a nivel de modelo físico.

Mi tabla de hechos puede no tener medidas explícitas si no que se calculan cuando yo las ocupo en función de otros datos. 

54
_Medidas_ 
Con ejemplo de productos, hay medidas aditivas (ventas), semiaditivas (inventario) y no aditivas (precio). La magia es saber si se pueden sumar cuando hago roll-up.

55
_Dimensiones_
Se usa para ver las medidas desde diferentes perspectivas.
La finalidad del almacén es agrupar datos históricos para ver tendencias.

57
_Jerarquías_
Son una característica de las dimensiones.
Dos operaciones requieren jerarquías,  roll up, drill down.

Sirven para agrupar una dimensión a distintos niveles. En el de copo de nieve se tienen separadas mientras que en estrella van juntas en la misma tabla.

59
Copiar tabla <- #UNI_TODO 
Todo lo que yo genere un un DW que no sea una tabla de hechos, es mejor verlo como una dimensión.

Presentación: DW - Modelo Conceptual <- Agregar #UNI_TODO 
Ejemplo de jerarquía desbalanceada:
El de las regiones y distritos

Ejemplo jerarquía sin cobertura
En la escuela todos los profes son profes y se escoge a uno para ser director, luego hay una catedra que la coordina un profe sobre otros profes pero hay cursos sin catedra. Hay profes que no tienen quien los coordine y otros que sí.

12
Ver diagrama #UNI_TODO 
La relación de hechos me une todas las dimensiones a modelar. 

#### **Homeworks:**
 - Leer el capítulo 4 y ver anexo A3 -> _01-Apr-2025_ #UNI_TODO
 - Primer trabajo de laboratorio -> _04-Apr-2025_ #UNI_TODO

#### **Teacher notes:**
Yapping sobre documentación.

Dice que el lunes va traer un documento en el cual hay que buscar la documentación y generar un diagrama de estrella o de copo de nieve.

Ir pensando en el modelo conceptual de la tarea, ni idea como pero dele.

Tema de doctorado: Definir metodologías de calidad de bases de datos no relacionales (a almacenes de datos?)

#### **Mental notes:**