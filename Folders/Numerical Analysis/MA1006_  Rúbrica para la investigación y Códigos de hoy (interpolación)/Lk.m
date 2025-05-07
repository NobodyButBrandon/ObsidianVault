function L = Lk(k,x)
% Entradas: k el índice del polinomio Lk
% x un vector con los puntos x_i
% Salidas: polinomio de Lagrange Lk 
N = length (x); % N numero de puntos
L = 1;
for i = [1:(k-1) , (k+1): N ] % no se toma el valor i=k
    den = x(k) - x(i);
    L = conv(L, [1/ den , - x(i)/ den ]);
end
end
