% normal distribution

% Sample 1000 elements from a standard normal distribution
Z= randn(1000, 1);

% transform the mean and standard deviation
mu = 400; 
sigma = 50;
X = Z*sigma + mu;

% review resulting sample mean and variance
format free;
mean([Z X])

var([Z X])

hist(Z)
%hist(X)

