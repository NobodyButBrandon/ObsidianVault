% Cree una funcion que reciba como entrada un valor x y una aproximcion x*
% y calcule el error relativo y absoluto.

function[eabs, erel] = errores (x, x_aprox)
    eabs = abs(x-x_aprox);
    erel = eabs/abs(x);
end