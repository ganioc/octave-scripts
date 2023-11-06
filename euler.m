% file 'euler.m'
% Euler's method solution for
%  dy/dx = e^(-3x) - 3y, y(0) = 1 on [0,3]

% define function and initial condition
f = @(x,y) exp(-3*x) - 3*y;
y0 = 1;

% define interval and step size 
a=0;
b=3;
h=0.1; % step size must divide b-a
n=(b-a)/h;

% define x-values 
x = [a:h:b];

% calculate y-values 
y(1) = y0;
for i = 1:n
  y(i+1) = y(i) + h*f(x(i), y(i));
end 

% plot solutions
plot(x,y, 'o:', 'linewidth', 2)


