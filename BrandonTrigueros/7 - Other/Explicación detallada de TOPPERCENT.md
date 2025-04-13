_Explicación_
La operación TOPPERCENT realiza los siguientes pasos:

1. **Agrupación:**  
    Divide los datos en grupos basados en las dimensiones especificadas en el **BY**. 
    Por ejemplo, agrupa por **City** y **Category**.
    
2. **Ordenamiento:**  
    Dentro de cada grupo, ordena las celdas (o registros) según el atributo definido en el **ORDER BY**.  
    
3. **Cálculo del Total y Porcentaje Objetivo:**  
    Para cada grupo, calcula el total de la medida (**Quantity**) en todo el grupo. Luego determina el 70% de ese total.
    
4. **Acumulación de la Suma (Running Sum):**  
    Comienza en el primer registro del grupo (según el orden establecido) y va acumulando el valor de la medida.
    - Se suma el valor del primer registro.
    - Luego se suma el del segundo, y así sucesivamente.
    - En cada paso, se compara el total acumulado con el 70% calculado previamente.
    
5. **Selección de Celdas:**  
    La operación continúa acumulando hasta que la suma acumulada llegue o supere el 70% del total. Las celdas consideradas en ese recorrido son las que constituyen el “TOP 70%” para ese grupo.  
    Es decir, solo se mantienen las celdas necesarias para alcanzar el porcentaje objetivo.

_Ejemplo Práctico_
Imaginemos que tenemos datos de ventas con las siguientes columnas: **City**, **Category**, **Quarter** y **Quantity**. Supongamos que para un grupo concreto (por ejemplo, City = "Madrid" y Category = "Electrónica") los datos por trimestre son:

|Quarter|Quantity|
|---|---|
|Q1|100|
|Q2|100|
|Q3|150|
|Q4|150|

La instrucción es:
```sql
TOPPERCENT(Sales, Quantity, 70) BY City, Category ORDER BY Quarter ASC
```

**Paso 1: Calcular total y el 70% del total**
- Total en el grupo = 100 + 100 + 150 + 150 = 500
- 70% del total = 0.70 × 500 = 350

**Paso 2: Acumulación (en orden cronológico Q1, Q2, Q3, Q4)**
- **Q1:** Running sum = 100 (100 < 350)
- **Q1 + Q2:** Running sum = 100 + 100 = 200 (200 < 350)
- **Q1 + Q2 + Q3:** Running sum = 200 + 150 = 350 (350 ≥ 350)

Al llegar a Q3, la suma acumulada es de 350, que es igual al 70% del total. Por lo tanto, se incluyen los registros correspondientes a Q1, Q2 y Q3. El registro de Q4 se descarta para este cálculo porque ya se alcanzó el porcentaje objetivo.

**Transformación Final (para este grupo):**

| City   | Category    | Included Quarters | Suma Acumulada |
| ------ | ----------- | ----------------- | -------------- |
| Madrid | Electrónica | Q1, Q2, Q3        | 350            |
