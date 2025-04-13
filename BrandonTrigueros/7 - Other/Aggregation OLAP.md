# Aggregation
Se usa para sumarizar información sin cambiar la granularidad actual del cubo sino más bien agrupando por miembros de una dimensión.
Tenemos funciones de sumarización comunes como: SUM, AVG, COUNT, MIN, MAX, extended MIN & MAX, TOPPERCENT, BOTTOMPERCENT, RANK, DESRANK.

_Sintaxis_:
``` c
AggFunction(CubeName, Measure) [BY Dimension*]
```

## Ejemplos operaciones de agregación
Dado el cubo original, podemos ejemplificar las distintas operaciones
![300](https://i.imgur.com/OUZSEUA.png)

### _SUM_

**Ejemplo 1**
Las ventas totales por trimestre y ciudad pueden calcularse del siguiente modo
``` c
SUM(Sales, Quantity) BY Time, Customer
```
Esto dará como resultado el siguiente cubo bidimensional
![300](https://i.imgur.com/OUZSEUA.png) **->** ![250](https://i.imgur.com/Er7pqQR.png)

**Ejemplo 2**
Por otro lado, para obtener las ventas totales solo por trimestre podemos escribir
``` c
SUM(Sales, Quantity) BY Time
```
Esto dará como resultado el siguiente cubo unidimensional
![300](https://i.imgur.com/OUZSEUA.png) **->** ![90](https://i.imgur.com/nlkWybv.png)

**Ejemplo 3**
Y de omitir la clausula BY como se expresa en la operación
``` c
SUM(Sales, Quantity)
```
Obtenemos entonces la agregación de la cantidad de ventas totales
![300](https://i.imgur.com/OUZSEUA.png) **->**![300](https://i.imgur.com/7ToQmBv.png)

### _MAX_

**Ejemplo 1**
La operación
``` c
MAX(Sales, Quantity) BY Time, Customer
```
Agrupa todas las celdas solo por Customer y Time y produce el siguiente cubo (m)
![300](https://i.imgur.com/OUZSEUA.png) **->**![300](https://i.imgur.com/CFIYdvt.png)
Al aplicar MAX, el sistema revisa todos los registros que comparten el mismo Customer y Time y obtiene el de mayor medida.

_Notas_:
Por ejemplo, todos los registros que comparten Q1 y Paris son:

| Quantity | Time | Customer | Product    |
| -------- | ---- | -------- | ---------- |
| 21       | Q1   | Paris    | Beverages  |
| 10       | Q1   | Paris    | Produce    |
| 18       | Q1   | Paris    | Condiments |
| 35       | Q1   | Paris    | Seafood    |
Entonces la operación MAX anterior en esta instancia, toma el registro  con la medida más grande (35) correspondiente a Q1-Paris-Seafood. Hará lo mismo para Q1-Lyon, Q1-Berlin, Q1-Koln, Q2-Paris, Q2-Lyon, … , Q4-Koln. 

Las celdas que no son el máximo quedan nulas. Por lo tanto y dado que las dimensiones de Time y Customer tienen 4 miembros cada una. El cubo producido por MAX tendrá $4 \times 4 = 16$ celdas no nulas.

**Ejemplo 2**
La siguiente operación es similar a la del ejemplo anterior pero aquí solicitamos las 2 medidas más grandes
```c
MAX(Sales, Quantity, 2) BY Time, Customer
```
Por lo tanto el cubo que obtenemos al aplicar la operación es el siguiente
![300](https://i.imgur.com/OUZSEUA.png) **->**![300](https://i.imgur.com/r5wHk8D.png)

_Notas_:
Si en el cubo hay dos o más casillas que empatan en el último lugar del conjunto de resultados limitados, entonces el número de casillas en el resultado podría ser superior a dos. Este es el caso para Q1 y Berlin, donde hay tres valores en el resultado (33, 25 y 25).

### _TOPPERCENT_
Para calcular los porcentajes superior o inferior, debe especificarse el orden de las celdas.

**Ejemplo 1**
Para calcular el 70% superior de la cantidad medida por City y Category ordenada por trimestre, podemos escribir
```c
TOPPERCENT(Sales, Quantity, 70) BY City, Category ORDER BY Quarter ASC
```
Lo cual nos da el resultado
![300](https://i.imgur.com/OUZSEUA.png) **->**![300](https://i.imgur.com/B06MCv3.png)

**Ejemplo 2**
Del mismo modo, el 70% superior de la Quantity medida por City y Category ordenada por Quantity, puede obtenerse mediante
```c
TOPPERCENT(Sales, Quantity, 70) BY City, Category ORDER BY Quarter ASC
```
Lo cual nos da el resultado
![300](https://i.imgur.com/OUZSEUA.png) **->**![300](https://i.imgur.com/gyrzW1d.png)

_Notas_:
Ver [[Explicación detallada de TOPPERCENT]]

### _RANK_
La operación de Rank también requiere la especificación del orden de las celdas. Por ejemplo, para clasificar los Trimestres por Categoría y Ciudad por Cantidad descendente, podemos escribir
```sql
RANK(Sales, Time) BY Category, City ORDER BY Quantity DESC
```
Para obtener entonces el cubo siguiente
![300](https://i.imgur.com/OUZSEUA.png) **->**![300](https://i.imgur.com/SS9eccg.png)

_Notas_:
Las operaciones de Rank y de DenseRank  difieren en el caso de los empates. La primera asigna el mismo rango a los empates. Por ejemplo, en la fig. (q) hay un empate en los Trimestres de Seafood en Koln, donde Q2 y Q4 están en el primer rango y Q3 y Q1 en el tercero y cuarto, respectivamente. Utilizando el DenseRank, Q3 y Q1 estarían en el segundo y tercer rango, respectivamente.

### _ADDMEASURE using AVG & SUM_

**Ejemplo 1**
Por ejemplo, dado el cubo de la (c), la media móvil de 3 meses  de (r) puede obtenerse mediante 
```sql
ADDMEASURE(Sales, MovAvg3M = AVG(Quantity) OVER Time 2 CELLS PRECEDING)
```
![300](https://i.imgur.com/9cMg2Q0.png) **->**![300](https://i.imgur.com/vZ5E855.png)

**Ejemplo 2**
Del mismo modo, para calcular la suma del año hasta la fecha en (s) podemos escribir
```sql
ADDMEASURE(Sales, YTDQuantity = SUM(Quantity) OVER Time ALL CELLS PRECEDING)
```
Y obtener como resultado el year-to-date sum
![300](https://i.imgur.com/9cMg2Q0.png) **->**![300](https://i.imgur.com/RFoWRP3.png)





