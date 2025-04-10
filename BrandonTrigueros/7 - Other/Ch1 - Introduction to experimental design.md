23-Mar-2025 13:26
Up: [[Design and analysis of experiments - Montgomery]]
# Ch1 - Introduction to experimental design

## Reference
[[Design and analysis of experiments.pdf#page=11&selection=4,0,4,12|Design and analysis of experiments, page 11]]
___
# Notes

### Estrategia de experimentación

"Se puede observar mucho a través de solo mirar", sin embargo, observar solo nos puede llevar hasta el terreno de crear teorías y formular hipótesis. 

Si queremos probar estas hipótesis y entender más a fondo lo que ocurre en un sistema debemos ser capaces de encontrar las _razones de cambio_ y para encontrar dichas razones de cambio debemos modificar las entradas del sistema y analizar sus salidas, experimentar sobre el sistema.

![[Ch1 - Introduction to experimental design 2025-03-23 13.27.56.excalidraw|400]]

En la figura podemos concebir un proceso como una caja que contiene combinaciones de operaciones, personas, métodos, máquinas y otros recursos que transforman alguna _entrada_ en una o más salidas medibles o _variables de respuesta._
Algunas de las variables del sistema son _controlables_, mientras que otras son _incontrolables_. 

Los objetivos del experimento se pueden centrar en responder las siguientes preguntas:
1. Determinar qué variables influyen más en la respuesta y.
2. Determinar dónde fijar las x influyentes para que y esté casi siempre cerca del valor nominal deseado.
3. 3. Determinar dónde fijar las x influyentes para que la variabilidad en y sea pequeña.
4. Determinar dónde fijar las x influyentes para que los efectos de las variables incontrolables z1, z2, … , zq se reduzcan al mínimo.

#### <span style="color:7cd37c;">Ejemplo golfista:</span>

Para ejemplificar algunas estrategias de experimentación, considere el ejemplo de un golfista que quiere bajar su puntuación sin entrenar ni hacer nada extra. 

El golfista define que el experimento consta de 8 corridas donde cada corrida consiste en jugar los 18 hoyos, también identifica 4 factores relevantes que pueden afectar su puntuación (variable de salida):

1. Palo de golf (oversized or regular sized).
2. Bola (oversized or regular sized).
3. Modo de transporte (Caminar ir en carrito de golf).
4. Hidratación (Agua o cerveza).
##### Best guess approach
Consiste en hacer una corrida inicial con una combinación aleatoria de factores controlables y luego cambiar los niveles de uno o dos (o tal vez varios) factores para la siguiente prueba, en función del resultado de la prueba actual. 

Dos desventajas. 
1. Supongamos que la mejor suposición inicial no produce los resultados deseados. Ahora el experimentador tiene que volver a adivinar la combinación correcta de los niveles de los factores. Esto podría prolongarse durante mucho tiempo, sin ninguna garantía de éxito. 
   
2. En segundo lugar, supongamos que la mejor suposición inicial produce un resultado aceptable. Ahora el experimentador tiene la tentación de dejar de probar, aunque no hay ninguna garantía de que se haya encontrado la mejor solución.

##### One-factor-at-a-time (OFAT)
El método OFAT consiste en seleccionar un punto de partida, o conjunto de niveles de referencia, para cada factor y, a continuación, variar sucesivamente cada factor en su intervalo con los demás factores mantenidos constantes en el nivel de referencia. Luego se crea un gráfico como el siguiente.
![](https://i.imgur.com/lY30yOP.png)

El mayor inconveniente de la estrategia OFAT es que no tiene en cuenta ninguna posible _interacción_ entre los factores.

Si utilizo el palo de tamaño normal, el tipo de bebida consumida no tiene prácticamente ningún efecto sobre la puntuación, pero si utilizo el palo grande, se obtienen resultados mucho mejores bebiendo agua en lugar de cerveza.
![300](https://i.imgur.com/QCNtY3K.png)

##### Factorial experiment
Se trata de una estrategia experimental en la que los factores se varían juntos, en lugar de uno cada vez. 
![300](https://i.imgur.com/oJsW9tw.png)

Así obtenemos una medida del efecto de cambiar del palo de gran tamaño al palo de tamaño normal
![300](https://i.imgur.com/wK5Tl1s.png) ![300](https://i.imgur.com/eVL4onI.png)

![600](https://i.imgur.com/wPyITZr.png)
Es decir, en promedio, pasar del palo de gran tamaño al de tamaño normal aumenta la puntuación en 3.25 golpes por ronda.

Del mismo modo, la diferencia media entre las cuatro puntuaciones de la parte superior del cuadrado y las cuatro puntuaciones de la parte inferior mide el efecto del tipo de pelota utilizada
![300](https://i.imgur.com/rpHGTjO.png) ![300](https://i.imgur.com/eVL4onI.png)

![600](https://i.imgur.com/DeKOZk6.png)

Por último, se puede obtener una medida del efecto de interacción entre el tipo de pelota y el tipo de palo restando las puntuaciones en la diagonal de izquierda a derecha de las puntuaciones medias en la diagonal de derecha a izquierda
![300](https://i.imgur.com/SfUxDTT.png) ![300](https://i.imgur.com/eVL4onI.png)

![600](https://i.imgur.com/NtQk4Wq.png)

Con 3 factores de 2 niveles tenemos
![](https://i.imgur.com/AzPqKPT.png)

Con 4 factores de 2 niveles tenemos lo siguiente
![](https://i.imgur.com/KlmInf6.png)

Generalmente, si hay k factores, cada uno en dos niveles, el diseño factorial requeriría $2^k$ ejecuciones, para el ejemplo necesitaríamos $2^4 = 16$ corridas. Sin embargo, el experimento nos dice que se pueden hacer como máximo 8 iteraciones.

 Si hay cuatro o cinco factores o más, es innecesario ejecutar todas las combinaciones posibles de niveles. Un _experimento factorial fraccionado_ es una variación del diseño básico que sólo se utiliza un subconjunto de las ejecuciones 
![](https://i.imgur.com/L7s3mmC.png)
___
### Principios básicos del diseño experimental

Los tres principios básicos del diseño experimental son la aleatorización, la replicación y la formación de bloques.

1. Por _aleatorización_ entendemos que tanto la asignación del material experimental como el orden en el que se van a realizar las ejecuciones individuales del experimento se determinan al azar. Es importante realizar cada uno de los experimentos en orden aleatorio para evitar sesgos y efectos sistemáticos que pudieran afectar los resultados.

2. Por _replicación_ entendemos una repetición independiente de cada combinación de factores. Es decir, cada combinación de factores (por ejemplo, el tipo de enfriado en un experimento metalúrgico,) se ejecuta más de una vez usando muestras independientes. Ayuda a la estimación del _error experimental_ ya que al tener varias observaciones bajo las mismas condiciones, se puede medir la variabilidad que existe naturalmente en el proceso. Esto es crucial para determinar si las diferencias observadas entre tratamientos (como la dureza obtenida con aceite versus salmuera) son estadísticamente significativas o simplemente fruto del [[Error experimental]].

3. En la _formación de bloques_ la idea es agrupar observaciones o corridas del experimento que se realicen bajo condiciones similares en lo que respecta a los [[factores molestos]]. Su objetivo es mejorar la precisión de las comparaciones entre los factores que nos interesan, minimizando el efecto de los molestos. De manera típica, cada nivel del factor perturbador pasa a ser un bloque. [[Ejemplos de formación de bloques]]
___

### Directrices para el diseño de experimentos

[[Design and analysis of experiments.pdf#page=27|Directrices en detalle]]

1. Reconocimiento y planteamiento del problema
2. Selección de la variable de respuesta
3. Elección de factores, niveles y rangos
4. Elección del diseño experimental
5. Realización del experimento
6. Análisis estadístico de los datos
7. Conclusiones y recomendaciones