clearvars %borra las variables de memoria
n = 10; %cantidad de iteraciones
x = sqrt(2); %valor que queremos aproximar
xn = 12.5; %aproximacion inicial

for i = 2 : n
    xn = 0.5*(xn-(2/xn));
end

E_ab = abs(x-xn);
E_rel = E_ab/abs(x);

%imprimir resultados
fprintf("La aproximacion es: %1.8f \n", xn);
fprintf("El error absoluto es: %1.8f \n", E_ab);
fprintf("El error relativo es: %1.8f \n", E_rel);