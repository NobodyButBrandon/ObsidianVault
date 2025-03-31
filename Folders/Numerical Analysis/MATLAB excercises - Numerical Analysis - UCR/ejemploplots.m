% ejemplo 17 de intro a matlab

N = 100;

a = 0; b = 2;

x = linspace (a, b, N);

y1 = x.^3 +3*x.^2+ 2;
y2 = (x + 1).^2;

figure(1)
plot(x, y, ".b", x, y2, "-r");

legend("Poli. de 3er grado", "Poli. de 2do grado")
title("Polinomios cuadraticos")
xlabel("x")
ylabel("y(x)")

saveas(figure(1), [pwd '/polinomios.eps'],'epsc')