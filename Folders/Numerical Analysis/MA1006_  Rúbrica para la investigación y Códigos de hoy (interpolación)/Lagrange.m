function pn = Lagrange(x,y)
% Entradas: un vector "x" de preimágenes y un vector "y" de imágenes
% Salida: un polinomio (vector) pn = [a_n a_(n-1) ... a_1 a_0]
% N es el número de puntos
% pn es un vector de coeficientes del polinomio de Lagrange
N = length (x);
pn = 0;
for k =1: N
    pn = pn + Lk(k,x)*y(k);
end
end