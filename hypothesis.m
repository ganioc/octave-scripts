% hypothesis
pkg load statistics;

x = [24.9 22.8 16.2 10.8 32.0 19.2]'

mean(x)

[h pval] = ttest(x, 30, 'tail', 'left', 'alpha', 0.01)


