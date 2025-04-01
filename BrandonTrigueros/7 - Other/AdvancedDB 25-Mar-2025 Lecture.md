### AdvancedDB 25-Mar-2025 Lecture

25-Mar-2025 10:27
Course: [[Advanced databases - UCR]]
___
#### **Lecture contents:**
___
_Extracción_
Cuando nos traemos datos para el almacén deberíamos preocuparnos por la privacidad.

¿Qué es una expresión regular?
El profe lo define como un conjunto de símbolos que permite identificar un patrón, donde un patrón es una secuencia de caracteres en una hilera de caracteres. Repasar expresiones regulares <- #UNI_TODO 

Correctitud
Una base de datos bien documenta, con el dominio de cada uno de los campos en los metadatos, me ayuda a identificar la basura en la base de datos. Ejemplo, en el campo de tipo de beca de la UCR solo debería permitirse valores del 1 al 5. Se asegura con un check.

Estandarización

Matching
Ejemplo, dos identificaciones que son la misma pero tienen distinta cantidad de dígitos. Eso se arregla con datos.

Consolidación

Limpieza de datos -> **Viene en el quiz**
Que hacer cuando faltan datos? Es lo peor que nos puede pasar. 
Se usan algoritmos de ML para inferir nuevos datos. Los datos ruidosos son diferentes de los datos nulos.

Que son datos ruidosos? Son datos que se salen del rango del dominio. Se pueden dar debido a que los instrumentos de recolección son defectuosos, hay problema de la entrada o problema de transmisión de datos.

Para manejarlo se recomienda detectar los valores atípicos y trabajar de la mano con los expertos del dominio.

_Transformación de datos_
Cambio de formato

La deduplicación es una técnica para eliminar datos repetidos en los datos. Se usa en el contexto de transformación de datos y en el contexto de respaldo de datos.

División de campos

Reemplazo de códigos, porque los que toman decisiones no usan estos códigos, porque en el DW no voy a tener tablas catálogo que me diga que el código tal es San José

Valoires derivados y agregados

_Carga_
Los datos se mueven físicamente al almacén de datos. Muchas veces haya una ventana de carga y es mejor tenerlo presente antes que vivirlo.

Cuando vamos a cargar datos tenemos que desactivar las llaves naturales, porqué? Pues porque nunca lo vamos a usar datos realmente en el DW. 

Establecer un nivel de concurrencia bajo.

Volarnos los índices.

Usar utilidades de carga masiva como bulk insert.

-> La tabla de hechos es donde yo guardo lo que voy a medir y es la que relaciona todas las dimensiones del almacén de datos.

-> Los metadatos son el conjunto de características de los datos, me dicen como son todos los datos que están guardados y para tenerlo hay que documentarlo y para documentarlo hay que definirlo.

Dentro de los metadatos hay que recopilar cual es el consentimiento informado y que permite recopilar esos metadatos. (se valida con un abogado/a). 
___

Los OLAP me permite agrupar en grandes volúmenes y analizar más fácil.

_Modelo multidimensional_
Repasar las filminas #UNI_TODO sobre estrella y copo de nieve

#### **Homeworks:**
Averiguar que es [[K-anonimato, Privacidad diferencial y GDPR]] -> _1-Apr-2025_

#### **Teacher notes:**
También se debe saber de redes, saber en que puertos escucha las bases de datos, saber detectar problemas.

Los teléfonos no tienen firewall porque nos quieren robar al información.

Uno siempre tiene que utilizar consultas pre-preparadas, que es eso? Es hacer la consulta:

select
from
tata...
carne = c17899

Lo que pasa es que cuando le paso la misma consulta con un carne diferente piensa que son consultas diferentes. Lo cual implica hacerle un plan de ejecución diferente y no poder usar lo que ya se usó.

Por eso se debe usar consultas pre-preparadas
#### **Mental notes:**
