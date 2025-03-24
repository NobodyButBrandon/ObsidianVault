23-Mar-2025 21:29
Up: [[Modern Computer Architecture and Organization - Jim Ledin]]
# Ch1_Computer Architecture

## Reference
[[Modern Computer Architecture and Organization.pdf#page=39&selection=4,0,4,21|Modern Computer Architecture and Organization, page 39]]
___
# Notes

## Números binarios y hexadecimales

Tabla que muestra la representación de los números del 0 al 15 en binario y hexadecimal.
![](https://i.imgur.com/7wUX4Q0.png)

Para convertir números binarios a hex, se toman sub grupos de 4 bits, los cuales pueden albergar $2^4 = 16$ valores. A cada sub grupo se le asigna un número hex.
#### <span style="color:7cd37c;">Ejemplo:</span>

![[6 - Attachments/Ch1_Computer Architecture 2025-03-23 21.38.42.excalidraw.md#^group=2HULiDwhvvZcNqELEmBwM]]

Un número de complemento a dos puede negarse
(multiplicado por -1) invirtiendo todos los bits, sumando 1 e ignorando cualquier acarreo.

Tabla con ejemplos de la operación de negación en binario.
![](https://i.imgur.com/qxxDNZm.png)

Tabla que muestra los valores decimales que caben en 8 bits. Con signo y sin signo
![](https://i.imgur.com/9JvgFbo.png)

## El procesador 6502
Su _word length_ era de 8 bits. Esto quiere decir que el 6502 lee y escribe memoria 8 bits a la vez y almacena datos internamente en registros de 8 bits de ancho.

Implementaba la arquitectura  _von Neumann_
![[6 - Attachments/Ch1_Computer Architecture 2025-03-23 21.38.42.excalidraw.md#^group=Xyht5HbZS54VnBqnSgr3L|500]]

Usa un bus de direcciones de 16 bits, con lo cual se puede acceder a _64KB de memoria_.

Utiliza los siguientes _registros_
![](https://i.imgur.com/Cds9IMf.png)

En el registro P se guardan distintas flags del procesador. Las más importantes son:

- **N**: Bandera de signo negativo: Esta bandera se establece cuando el resultado de una operación aritmética establece bit 7 en el resultado. Esta bandera se utiliza en aritmética con signo.
- **V**: Bandera de desbordamiento: Esta bandera se fija cuando una suma o resta con signo resulta en desbordamiento o subdesbordamiento fuera del rango de -128 a 127.
- **Z**: Zero flag: This flag is set when an operation produces a result of zero.
- **C**: Carry flag: This flag is set when an arithmetic operation produces a carry.

El _stack_ es la región de memoria que va de 0x100 hasta 0x1FF y es apuntado por el registro S (stack pointer).

El siguiente dibujo muestra el estado del stack al ejecutar dos veces la instrucción **PHA**, primero con el valor $42 en el registro A y luego con el valor $37 en el registro A.
![[6 - Attachments/Ch1_Computer Architecture 2025-03-23 21.38.42.excalidraw.md#^group=stVtEvAf4gyv50D38inzg|500]]

[skilldrick's Easy6502 book and emulator](https://skilldrick.github.io/easy6502/)