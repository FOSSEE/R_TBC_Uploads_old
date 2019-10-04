#Processor failure(Pg no. 139)

mean = 0.0001 #failure per hr
failures = 40000

u = mean * failures #expectation

#P(X > 40,000) = P(N <= 3)
p = ppois(3, lambda = u)
round(p,digits = 3)
