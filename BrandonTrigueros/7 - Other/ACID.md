

# ACID
**Propiedades fundamentales de las transacciones en bases de datos.**
___
Garantizan la fiabilidad y seguridad de las transacciones en sistemas de bases de datos transaccionales. 

Evitan corrupción de datos, inconsistencias o pérdida de información, incluso en escenarios con fallos técnicos o accesos concurrentes.
___
### **A**tomicity (Atomicidad)

**"Los pasos se ejecutan todos o ninguno"**

- Una transacción es una unidad indivisible: si falla cualquier paso intermedio, toda la operación se cancela y la base de datos revierte (_rollback_) al estado anterior.
    
- **Ejemplo**: En una transferencia bancaria, si el débito de una cuenta tiene éxito pero el crédito en la otra falla, la transacción se anula por completo.
___
### **C**onsistency (Consistencia)

**"La base de datos siempre pasa de un estado válido a otro estado válido"**

- Las reglas de integridad (como claves únicas, restricciones de valores o relaciones entre tablas) se mantienen antes y después de la transacción.
    
- **Ejemplo**: Si una transacción intenta retirar más dinero del saldo disponible en una cuenta, la operación se rechaza para evitar saldos negativos no permitidos.
___
### **I**solation (Aislamiento)

**"Restringir qué tanto una operación puede ver lo que otras operaciones hacen"**

- Las transacciones que ocurren al mismo tiempo no interfieran entre sí. Evitando que los cambios parciales o intermedios de una transacción sean visibles para otras hasta que se confirmen (_commit_).
    
- **[[Niveles de aislamiento]]**: Desde bajo (mayor concurrencia pero riesgos de inconsistencias) hasta alto (ej. _serializable_, que simula ejecución en serie).
___
### **D**urability (Durabilidad)

**"Los cambios confirmados son permanentes, incluso ante fallos del sistkema"**

- Una vez completada la transacción (_commit_), los datos persisten aunque haya cortes de energía, reinicios o errores de hardware.
    
- **Mecanismos**: Escritura inmediata en discos no volátiles, _logs_ de transacciones (_write-ahead logging_) y réplicas de respaldo.
___
#### Importancia de ACID

Propiedades esenciales en sistemas donde la precisión y confiabilidad son críticas, como banca, comercio electrónico o gestión de inventarios. 

En entornos que priorizan velocidad o escalabilidad sobre consistencia estricta (ej. Big Data), se usan modelos alternativos como [[BASE]] (_Basically Available, Soft state, Eventually consistent_).