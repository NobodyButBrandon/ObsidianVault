% cree un script para graficar f (z) = 2zcos(2z) + (z - 2)^2 en el intervalo
% 0, 2

x = linspace (0, 2, 100);

%Note como se define un funcion anonima
f = @(z) 2*z.*cos(2*z) + (z - 2).^2; % la operacion punto es para hacer la opercion consecuente entrada por entrada

y = f(x);

plot (x, y, "--r");
    