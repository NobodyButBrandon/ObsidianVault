### 🎯 Supongamos:

Estamos analizando las ventas de un supermercado, y tenemos esta información en un cubo multidimensional:

|Producto|Día|Costo por unidad|
|---|---|---|
|Leche|1-ene|₡500|
|Leche|2-ene|₡500|
|Leche|3-ene|₡500|

El **costo por unidad** es lo que le cuesta al supermercado **una sola unidad** del producto “Leche” cada día. En este caso, el precio no cambia a lo largo de los días.

---
### ❌ ¿Qué pasa si lo sumamos?

Si hacés una agregación del costo por unidad en el tiempo:

**₡500 + ₡500 + ₡500 = ₡1500**

Esto **no tiene sentido**, porque el costo por unidad sigue siendo ₡500 cada día, **no se triplica**. No estamos comprando tres unidades (eso sería ventas, no costo por unidad), solo estamos observando la misma métrica repetida.

---
### ✅ ¿Qué sería lo correcto?

La forma correcta de agregar este tipo de medida sería, por ejemplo, usando:

- **Promedio**: si el costo por unidad varía entre días, el promedio da un valor representativo.
- **Valor más reciente**: si solo te interesa el último costo.
- **Mínimo / máximo**: si querés analizar variabilidad de precios.

---
### 💡 ¿Por qué es no aditiva?

Porque **no se puede agregar con una suma en ninguna dimensión**: ni por tiempo, ni por producto, ni por ubicación. Sumar costos por unidad da como resultado un número sin significado.

---
### Comparación rápida

|Medida|¿Se puede sumar?|¿Tiene sentido sumar?|Ejemplo de agregación útil|
|---|---|---|---|
|Ventas totales|✅ Sí|✅ Sí|Suma|
|Inventario|🟡 Depende|🟡 Solo en algunas|Último valor, promedio parcial|
|Costo por unidad|❌ No|❌ No|Promedio, último valor
