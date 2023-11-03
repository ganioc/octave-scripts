% definite integartion
addpath(pwd);
function y=f(x)
  y=exp(x.^2).*cos(x);
end
quad('f',0,pi/2)
