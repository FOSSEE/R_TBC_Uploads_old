
# using exponential distribution , alpha=1
# As Y= X1 + X2 , alpha =2  beta =400

#b
cat("Expected value E(Y) =", 2 * 400)

#c
# using Gamma distriution
 cat(" The probability that the system will survive for more than 1000 hours is equal to P(Y>1000) =", 
      1 - pgamma(1000,shape = 2 ,scale = 400))
