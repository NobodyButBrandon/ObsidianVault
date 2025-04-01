### AdvancedDB 1-Apr-2025 Lecture

01-Apr-2025 10:16
Course: [[Advanced databases - UCR]]
___
#### **Lecture contents:**

Ver la presentación [[DW - Metodología para el diseño.pdf]]

Diseño “_top-down_”: los requisitos de los usuarios en diferentes
niveles organizacionales se fusionan antes de que comience el
proceso de diseño y se crea un esquema para todo el almacén de
datos.
Diseño “_bottom-up_”: se crea un esquema separado para cada
data mart, teniendo en cuenta los requisitos de los usuarios
responsables de la toma de decisiones del área de negocio o
proceso específico correspondiente. Se arma a pedacitos.

El método "top-down" es abrumadora aplicada en toda una empresa. El data mart produce valor más rápidamente.

![](https://i.imgur.com/Fh2sFV5.png)

En análisis tengo que ir a hacer entrevistas a los usuarios, etc.

![](https://i.imgur.com/A3g33SF.png)

En almacenes de datos necesito datos, entonces podemos elegir utilizar la fuente de los datos para DW. Vamos a usar un enfoque _source driven_

Tratamos de tratar de analizar exhaustivamente los datos que tenemos para encontrar elementos que vamos a definir com medidas, dimensiones y jerarquías. 

![](https://i.imgur.com/cZBXOZ3.png)


Es una etapa de investigación sobre los datos, con diferencia de que los datos no mienten y los datos están disponibles.

#### **Homeworks:**

#### **Teacher notes:**
Buscar becas en el extranjero -> _2-Apr-2025_  #UNI_TODO 

#### **Mental notes:**
Se pueden aplicar varios procedimientos para derivar dimensiones y jerarquías automáticamente #idea de Tesis.