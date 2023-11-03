% file 'midpoint2.m'
% vectorized code

a = 0
b = pi/2
n = 100
dx = (b-1)/n


% define function to integrate
function y=f(x)
  y = exp(x.^2).*cos(x);
end

% create vector of midpoints
m = [a+dx/2:dx: b-dx/2];

% create vector of function values at midpoints
M = f(m);

% midpoint approximation to the integral
approx = dx*sum(M)
