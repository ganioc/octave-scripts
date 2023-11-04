% standard diagram

for i = 1:100
  A = floor(6*rand(100,1)+1);
  d(i) = mean(A);
  
end

hist(d)



