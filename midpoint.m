% file  'midpoint.m'
% Calculates a midpoint rule approximation of
% the integral from 0 to pi/2 of f(x)=exp(x^2)cos(x)
% -- traditional looped code

% set limits of integration , number of terms and delta x
a = 0
b = pi/2
n = 100
dx = (b-a)/n

% define function to integrate
function y=f(x)
  y = exp(x.^2).*cos(x);
end

% initialize sum
msum = 0;   
% first midpoint 
m1 = a + dx/2;

% loop to create sum of function values
for i = 1:n
  m = m1 + (i - 1)*dx;
  msum = msum + f(m);
end 

% midpoint approximation to the integral
approx = msum * dx 

