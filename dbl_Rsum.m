% file 'dbl_Rsum.m'
% approximates a double integral using upper right hand corners of
% subrectangles as sample points
% --nested loop version

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
rsum = 0;

% compute double Riemann sum
for i = 1:m
  for j = 1:n
    rsum = rsum + dA *f(a + dx*i, c+ dy*j);
  end
end

%display result
rsum



