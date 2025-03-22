### AdvancedDB 21-Mar-2025 Lecture #UNI_TODO 

21-Mar-2025 09:36
Course: [[Advanced databases - UCR]]
___
#### Lecture contents:
En bases de datos transaccionales se requieren un montón de joins porque la base de datos está muy normalizada. Por lo cual es muy ineficiente responder las preguntas de análisis. Y porque no contienen datos históricos. Y porque no funcionan bien con consultas complejas.

En bases de datos distribuidas las tablas tienen que viajar a través de la red.

Para generar un reporte correcto se deben estandarizar los datos, muchas veces en bases de datos relacionales esto no es así.

En un repositorio puedo tomar fotos estratégicas para tomar decisiones.

ETL (Extract (identificar fuentes, que extraer), Transform (limpiar, estandarizar, transformar), Load.

Un DW es:
	Orientados a un tema
	Integrados
	No volátil
	Generalmente comprende distintos intervalos de tiempo.

Transaccionales -> Automatizar un proceso
DW -> Proveer respuestas para la toma de decisiones.

**Orientados a un tema**
Si tengo varias preguntas, voy a tener diferente mercados de datos para responder distintas cosas sobre la organización reutilizando dimensiones, todo dentro del DW.

**Integrado**
Datos de diferentes fuentes. Pueden estar en la misma dimensión.

**Variable en el tiempo**
No es lo mismo tomar los datos en distintos momentos. Hay que saber cuando se tomaron las imágenes de los datos (snapshots).

**No volátil**
La modificación y eliminación de datos no está permitido.
#### Homeworks:
- _Próxima clase_ -> Leer capítulo 4

#### Teacher notes:
- Vimos el vídeo de hostigamiento sexual.
- Va a haber _quiz_ el próximo viernes 28-Mar-2025 sobre capítulo 3. Repasar este capítulo #UNI_TODO 
- La primera tarea va a ser un data mart investigando algún conjunto de datos. No puede ser solo una base de datos, semi-estructurados,  #UNI_TODO 

#### Mental notes:
