% En esta ocasion estamos dispuestos a tolerar un error absoluto de 1 x
% 10^-6 en la proxim aproximimacion. Sin embargo, queremos ejecutar un maximo
% de 5 iteraciones.
clearvars

x = sqrt(2);
tol = 1*10^(-6);
xn = 12.5;
error = 1;
n_max = 5;
contador = 1;

while (error > tol) && (contador <= n_max)
    xn = 0.5*(xn-(2/xn));
    error = abs(x - xn);
    contador = contador + 1;
end

fprintf("La aproximacion es: %1.8f \n", xn);
fprintf("El error de la aproximacion es: %1.8f \n", error);

fprintf("Cantidad de iteraciones: %d \n", contador - 1);