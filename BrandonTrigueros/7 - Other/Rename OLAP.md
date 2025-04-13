# Rename
Rename devuelve un cubo en el que se han renombrado algunos elementos o miembros del esquema.

_Sintaxis_:
``` c
RENAME(CubeName, ({SchemaElement | Member} → NewName)*)
```

_Ejemplo_: La siguiente expresión:
``` c
RENAME(Sales, Sales → Sales2012, Quantity → Quantity2012)
```
Renombra el cubo original y su mediada.

_Ejemplo_:
La siguiente expresión:
``` c
RENAME(Sales, Customer.all → AllCustomers)
```
cambia el nombre del miembro 'all' de la dimensión cliente.

_Notas_: 
Suele ser necesaria una operación de Rename antes de combinar dos cubos con la operación de [[Drill across OLAP]]