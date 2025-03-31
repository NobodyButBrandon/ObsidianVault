%n  el intrvlo I = [-10, 10] considere f(x) = 0, si x <= 0. x, si 0 < x <=
%8. 8 en otro caso. Construya un vctor x que contenga un discretizacion d
%00 nodos. Evlue la funcion y grafique 
% salto = 20 / n;
% nodo_actual = -10;
% x = zeros(100);
% x(1) = -10;
% i = 2;

%while nodo_actual ~= 10
 %   x(i) = nodo_actual + salto;
  %  nodo_actual = x(i);
   % i = i + 1;
%end

n = 100;


x = linspace(-10, 10, n);

y = zeros(1, n);

for i = 1 : n
    if x(i) <= 0;
        y(i) = 0;
    elseif (x(i) > 0) && (x(i) <= 8)
        y(i) = x(i);
    else
        y(i) = 8;
    end
end

plot (x, y, '-b');