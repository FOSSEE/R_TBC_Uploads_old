# Chebyshev's Theorem :  

avg_age = 28
sd = 6

# Chebyshev's theorem states that at least (1 - 1)/k^2 proportion of the values are within
#(mean+k*sd). Because 80% of the values are within this range, let

#1- (1/k^2) = .80

k = sqrt(1/(1-0.80))
k

# now for :
mean = 28
sd = 6

# values are within 
r1 = mean + k * sd
r1  #41.41
r2 = mean - k * sd
r2 # 14.58

# Years of age or between 14.6 and 41.4 years old.








