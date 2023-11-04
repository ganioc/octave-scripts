% special functions

n = [0:4];
x = linspace(-5,5,500);
plot(n, factorial(n), '*', x, gamma(x + 1));
axis([-5 5 -10 30]);


