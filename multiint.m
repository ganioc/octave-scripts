% multiint
% double integral using dblquad
addpath(pwd);
function z = f(x,y)
  z=x.^2.*y+ 2*y;
end

dblquad('f', 0, 2, -1, 3)

printf('Double integral');
function z = g(x,y)
  z = (x.^2.*y + y.^2.*x) .* ((y > x.^2)&(y< sqrt(x)));
end

dblquad('g', 0, 1, 0, 1)

x= linspace(0,1,30);
y = x;
[X Y] = meshgrid(x, y);
Z = g(X, Y);
surf(X, Y, Z); 