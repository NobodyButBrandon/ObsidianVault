# Enunciado
En Logisim crear una CPU que tenga 2 registros de 4 bits. (A, B) para almacenamiento de valores. Debe soportar las siguientes 4 operaciones bajo un formato de instrucción a definir

Yo definí el siguiente formato: opcode(2 bits) reg1(1bit) reg2(1bit) inm(4 bits) 

1. Multiplicar el valor de dos registros y almacenar el producto en el registro P 
   Multiplica RA por RB 
	MUL RA RB 
	00 0 1 0000(unused) 
	
2. Dividir el valor dos registros, almacenar el cociente en el registro C y el residuo en el registro R Divide RA entre RB 
   DIV RA RB 
   01 0 1 0000(unused) 
   
3. Cargar valores inmediatos de 4 bits a registros Carga en RA el inmediato 10 (decimal) 
   LOADI RA 
   10 10 0 0(unused) 1010
   
4. Almacenar en la dirección de memoria indicada en el inmediato el contenido de algún registro RA o RB Guarda en la dirección 0x04 el contenido de RB 
   STORE RB 
   0100 11 1 0(unused) 0100 
   
A, B, P, C, R son registros pero no todos de 4 bits

# Solución
[[cpu4bits.circ]]
