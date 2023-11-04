% binomial
pkg load statistics;
%n = 10;
%p = 0.8;

n = 50;
p = 0.8;



x = [0: n];
B = binopdf(x, n, p);
bar(x, B);