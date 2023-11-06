% file 'dbl_Rsum_v2.m'
% approximates a double integral using upper right hand corners of
%
% define region of integration
a= 0;
b = 2;
c = 0;
d = 4;

% define function
function z = f(x,y)
  z = x + 2*y.^2;
end

% define partition
m = 1000
n = 1000

% calculate dA and initialize Riemann sum total
dx = (b - a)/m
dy = (d - c)/n
dA = dx*dy;

% calculate x and y values in partition
x = [a+dx: dx: b];
y = [c+dy: dy: d];

% create matrix of function values
[X Y] = meshgrid(x, y);
A = f(X,Y);

% calculate the Reimann sum
rsum=dA*sum(sum(A))

