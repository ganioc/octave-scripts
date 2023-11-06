% surface.m

% define the domain
x = linspace(-5, 5, 30);
y = linspace(-5, 5, 30);
[X Y]= meshgrid(x,y);

Z = (1 + X.*Y).*(X+Y)

% plot the surface
%surf(X,Y,Z);
mesh(X,Y,Z);

axis([-5 5 -5 5 -10 10]);