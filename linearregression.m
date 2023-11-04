% linear regression
x = [5 9 18 25 32 40 53];
y = [32 28 23 20 19 18 9];
plot(x,y, 'o');
P = polyfit(x,y,1)

r= corr(x,y)

hold on;
y_hat = polyval(P,x);

plot(x, y_hat)

