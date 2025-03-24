%Escribir un codigo que reciba la edad de un persona como entrada y luego
%me diga si esa persona es menor de edad.

clearvars
edad = input("Digite la edad: ");
if (edad < 18)
    fprintf("No puede votar\n");
else
    if (edad > 64)
        fprintf ("Puede votar y no debe hacer fila\n");
    else
        fprintf("Puede votar y debe hacer fila\n");
    end
end

clearvars
edad = input("Digite la edad: ");
if (edad < 18)
    fprintf("No puede votar\n");
elseif (edad >= 18 && edad < 64)
    fprintf("Puede votar y debe hacer fila\n");
else
    fprintf ("Puede votar y no debe hacer fila\n");
end