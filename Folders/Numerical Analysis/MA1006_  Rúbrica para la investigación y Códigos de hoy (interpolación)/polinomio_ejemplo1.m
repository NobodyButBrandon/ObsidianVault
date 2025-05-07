% Ejemplo1: graficando un polinomio

% Parte a)
x2 = linspace(0,2,20); % nodos en el intervalo [0,2]
p = [1, 2, 1]; % definimos el polinomio p 
y2 = polyval(p,x2); % esta función evalua p en el vector x2

% Parte b): Datos
x = [0, 0.5, 1, 1.5, 2];
y = [1, 2.25, 4, 6.25, 9];

% Gráfica
plot(x,y,'*r', x2, y2,'-b')

