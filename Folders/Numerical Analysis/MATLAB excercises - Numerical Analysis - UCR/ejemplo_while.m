%suponga que se quiere aproximar el valor de la raiz cuadrada de 2 y
%estamos dispuestos tolerar un error absoluto de 0.001.

clearvars

x = sqrt(2);
tol = 0.001;
xn = 12.5;
error = 1;


while (error > tol)
    xn = 0.5*(xn-(2/xn));
    error = abs(x - xn);
end

fprintf("La aproximacion es: %1.8f \n", xn);
fprintf("El error de la aproximacion es: %1.8f \n", error);