% Ejemplo2: usando las funciones Lk y Lagrange
% Datos:
f =@(z) 1./(1+25*z.^2); 
datosx = linspace(-1,1,11); % datos (pre-imágenes) en el intervalo [-1,1]
datosy = f(datosx); % datos (imágenes)

% Se utiliza la función "Lagrange"
pn = Lagrange(datosx, datosy); 

% Ahora se crean los nodos para graficar
x = linspace(-1,1,100);
y_Lagrange = polyval(pn,x); % evalúa pn en el vector x2

% función exacta 
y_Exacta = f(x); 

% Gráficos
figure(1)
plot(datosx, datosy,'*r', x, y_Lagrange,'--b', x,y_Exacta,'-k')
legend('datos', 'polinomio pn', 'función f')
title('Efecto Runge')
xlabel('x')
ylabel('y')
saveas(figure(1),[pwd '/polinomios.eps'],'epsc')