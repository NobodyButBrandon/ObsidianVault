# UNION
La operación de unión fusiona dos cubos que tienen el mismo esquema pero instancias disjuntas. 
_Sintaxis_:
```sql
UNION(NombreCubo1, NombreCubo2)
```

**Ejemplo 1**
Consider el CubeSpain tiene el mismo esquema que nuestro cubo original pero conteniendo sólo las ventas a clientes españoles. Entonces la operación
```sql
UNION(Ventas, VentasEspaña)
```
Produce la siguiente transformación
![200](https://i.imgur.com/OUZSEUA.png) **U** ![200](https://i.imgur.com/Rv7NWk5.png) **->** ![200](https://i.imgur.com/XWXp9PB.png)

**Ejemplo 2**
La operación de unión también se utiliza para mostrar diferentes granularidades en la misma dimensión. Por ejemplo, si VentasPaís es el cubo de la (b), la operación 
```sql
UNION(Ventas, VentasPaís)
```
Resulta en un cubo con medidas de ventas resumidas por ciudad y por país.
![200](https://i.imgur.com/OUZSEUA.png) **U** ![200](https://i.imgur.com/BPtwTWE.png) **->** ![200](https://i.imgur.com/GBRhEdR.png)