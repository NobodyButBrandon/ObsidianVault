% Método de Jacobi
% Este script debe aplica Jacobi al sistema Ax=b
% Algunas líneas de script están incompletas 
A = [5, -2; 2, -8]; 
b=[-2; 0]; 
n = length(A);   
x0 = zeros(n,1);      
N = 3;          
x_old = x0;        
k = 1;        
          %%%%%% declare aquí el vector xk %%%%%%
while (  )    %%%%%% ingresa la condición del ciclo %%%%%%
    for i=1:n
        suma = 0; 
        for j=1:n 
            if (  ) %%%%%% ingrese la condición %%%%%%                
                suma = (  ); %%%%%% ingresa la expresión %%%%%%
            end
        end
        xk(i) = (1/A(i,i))*( -suma + b(i) );
    end
    x_old = xk;    
    k=k+1;     
    disp(xk)  
end