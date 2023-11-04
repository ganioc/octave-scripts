% file 'linReg.m'
% syntax: [P r] = linReg(x, y)
% display regression equation and correlation data, draws scatter plot 
% optional return values P: regression equation, r: correlation coefficient

function [P r] = linReg(x, y)
  % Calculate regression and correlation
  P = polyfit(x, y, 1);
  r = corr(x, y);
  
  % plot data and regression line
  figure()
  plot(x,y,'o', x, polyval(P, x));
  legend('data values', 'regression line')
  grid on;
  
  % display results
  disp('y=ax + b')
  printf('%s%d\n', 'a=', P(1))
  printf('%s%d\n', 'b=', P(2))
  printf('%s%d\n',  'r^2=', r^2)
  printf('%s%d\n',  'r=', r)
end

