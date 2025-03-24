% Sucesion 1
x0 = 1;
x1 = 1/3;
n = 20;
v = zeros (n, 1);
y = zeros (n, 1);

v(1) = x0;
v(2) = x1;
y(1) = x0;
y(2) = x1;

for i = 3 : n
    v(i) = ((13/3)* v(i-1)) - ((4/3)*v(i-2));
    y(i) = (1/3)^(i - 1); 
end

disp(v);
disp(y);

