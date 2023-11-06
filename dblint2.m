% function file 'dblint2.m'
% evaluates dblquad(f, x1, x2, y1, y2)
% where f is an anonymous function of x and y
% y1 and y2 are anonymous functions of x
% x1 and x2 are real numbers

function val = dblint2(f, x1, x2, y1, y2)
  f2 = @(x, u) f(x, y1(x) + u.*(y2(x) - y1(x))) .* (y2(x) - y1(x));
  val = dblquad(f2, x1, x2, 0, 1);
end