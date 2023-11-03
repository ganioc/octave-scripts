% implicit plot
f=@(x,y) (x-2).^2 + y.^2 -25;

ezplot(f,[-6 10 -8 8]);

x = [-6: 10];
y = 3/4.*x + 19/4;
hold on
plot(x,y,'r--');
