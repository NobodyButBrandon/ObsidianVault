31-Mar-2025 22:10
Up: [[Data Warehouse Systems - Vaisman & Zimanyi]]
# Ch4 - Conceptual Data Warehouse Design

## Reference
[[Data Warehouse Systems.pdf#page=99&selection=0,4,0,6|Data Warehouse Systems, page 99]]
___
# Notes
Los modelos conceptuales facilitan la comunicación entre los usuarios y los diseñadores ya que no se necesita conocimiento sobre la plataforma de implementación subyacente.
Además es más fácil y barato realizar cambios sobre el modelo conceptual que sobre el modelo lógico y físico, ya que se centra sobre los requerimientos de los usuarios.

El esquema de _MultiDim_ está compuesto por un conjunto de dimensiones y un conjunto de hechos.
Una _dimensión_ está compuesta por un nivel o uno o más jerarquías. A su vez una jerarquía tiene varios niveles. Un _nivel_ es análogo a una entidad en el modelo relacional. Tambien un nivel tiene un set de _atributos_ e _identificadores_ para describir las características de sus miembros. También se habla _de hechos_ _cardinalidad_.

![](https://i.imgur.com/Z09yX91.png)

En las medidas se especifica la función de agregación relacionada a la derecha de su nombre, por defecto se asume la función de agregación SUM, pero también hay AVG y supongo que otras. Luego para especificar semi-aditivas -> **+!** y para no aditivas -> **+/**. Para medidas que pueden ser derivadas se especifica con **/** como /NetAmount. 

#### Jerarquías balanceadas
Una jerarquía equilibrada sólo tiene una ruta en el nivel de esquema, donde todos los niveles son obligatorios.
Todos los miembros padres tienen al menos un miembro hijo, y un miembro hijo pertenece exactamente a un miembro padre

![](https://i.imgur.com/AHZEypu.png)

#### Jerarquías desbalanceadas
Una jerarquía desequilibrada sólo tiene un camino en el nivel del esquema, donde al menos menos un nivel no es obligatorio. Por lo tanto, en el nivel de instancia puede haber miembros padres sin miembros hijos asociados, es decir, las ramas
del árbol tienen longitudes diferentes.

**Esquema**
![](https://i.imgur.com/tTU8GUR.png)

**Ejemplos de casos**
![](https://i.imgur.com/ftbbUJV.png)

Aquí tenemos un caso especial que son las _jerarquías recursivas_, por ejemplo tenemos

![](https://i.imgur.com/1S6cMoa.png)

En donde los roles Subordinado y Supervisor de la relación padre-hijo están vinculados al nivel de Empleado. 

![](https://i.imgur.com/iXwnITk.png)

Esta jerarquía está desequilibrada, ya que los empleados sin subordinados no tendrán descendientes en el árbol de instancias.

#### Jerarquías generalizadas

# Flashcards