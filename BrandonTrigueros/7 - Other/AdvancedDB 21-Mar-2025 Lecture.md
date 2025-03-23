### AdvancedDB 21-Mar-2025 Lecture

21-Mar-2025 09:36
Course: [[Advanced databases - UCR]]
___
#### **Lecture contents:**
En bases de datos transaccionales se requieren un montón de joins porque la base de datos está muy normalizada. Por lo cual es muy ineficiente responder las preguntas de análisis. Y porque no contienen datos históricos. Y porque no funcionan bien con consultas complejas.

En bases de datos distribuidas las tablas tienen que viajar a través de la red.

Para generar un reporte correcto se deben estandarizar los datos, muchas veces en bases de datos relacionales esto no es así.

En un repositorio puedo tomar fotos estratégicas para tomar decisiones.

ETL (Extract (identificar fuentes, que extraer), Transform (limpiar, estandarizar, transformar), Load.

Un DW es:
	Orientados a un tema.
	Integrados.
	No volátil.
	Generalmente comprende distintos intervalos de tiempo.

| Operacionales          | DW  |
| ---------------------- | --- |
| Automatizar un proceso | Proveer respuestas para la toma de decisiones.    |

- Orientados a un tema:
  Si tengo varias preguntas, voy a tener diferente mercados de datos para responder distintas cosas sobre la organización reutilizando dimensiones, todo dentro del DW.
  
- Integrado:
  Datos de diferentes fuentes. Pueden estar en la misma dimensión.
  
- Variable en el tiempo:
  No es lo mismo tomar los datos en distintos momentos. Hay que saber cuando se tomaron las imágenes de los datos (snapshots).
  
- No volátil:
  La modificación y eliminación de datos no está permitido.

En cuanto a la seguridad, existen datos que pueden parecer inocentes pero me permiten individualizar a las personas,  lo cual se presta para un montón de cosas. Por esto se sumariza en los DW.
#### **Homeworks:**
- _Próxima clase_ -> Leer capítulo 4 #UNI_TODO 
- _24-Mar-2025_:
	- Investigar que es un ODBC #UNI_TODO 
	- Averiguar cual driver y con qué versión se utilizaba para conectarse a la base de datos del PI de bases - inge. soft.
	- Cual fue el connection string que se utilizó.
- _28-Mar-2025_:
	- Nombre de los integrantes del grupo para los proyectos
	- Investigar un dataset interesante. Tienen que ser de datos no estructuradas, no solo de una base de datos y de más de un gigabyte.
	- La pregunta que le vamos a hacer al dataset. (justificación de la pregunta, debe ser para tomar una decision importante).

#### **Teacher notes:**
- Vimos el vídeo de hostigamiento sexual.
- Va a haber _quiz_ el próximo viernes 28-Mar-2025 sobre capítulo 3. Repasar este capítulo #UNI_TODO 
- La primera tarea va a ser un data mart investigando algún conjunto de datos. No puede ser solo una base de datos, semi-estructurados.
#### **Mental notes:**
Sería interesante programar drivers en lenguajes como C, C++ o ensamblador. #idea

En cuanto a la educación universitaria de la ECCI, hasta donde llega un profe de ver los contenidos de un curso debe llegar el otro. "Touch the spot". Por ejemplo, el profesor de sistemas operativos que llega hasta sistema de archivos y se ve algún proyecto relacionado a eso, entonces el de bases de datos posteriormente debe llegar ahí en el tema del diseño físico, hacer re-call del conceptos de SO y dejar un proyecto integral. #idea