% Cree una funcion que reciba como entrada una aproximacion inicial x_1,
% una cantidad de iteraciones n y calcule una aproximacion de raiz cuadrada
% de 2

function x = myfunc(x_1, n)
    x_n = x1;
    for i = 2 : n
        x_n = 0.5*(x_n + 2/x_n);
    end
    x = x_n;
end

% intentar este pasandole vector y operando entrada por entrada