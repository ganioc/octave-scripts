% function 'diff_tst.m'

x = linspace(-5, 5, 30);
y = x;
[X Y] = meshgrid(x,y);

f = @(x,y) x;

dY = f(X, Y);
dX = ones(size(dY));

L =sqrt(1 + dY.^2);

quiver(X, Y, dX./L, dY./L, 0.5);
axis([-4 4 -4 4]);
grid on 
xlabel('x')
ylabel('y')

% add some particular solutions to graph for comparison
hold on
for C = -4:3
  plot(x, 0.5*x.^2 + C, 'r', 'linewidth',2);
end 
