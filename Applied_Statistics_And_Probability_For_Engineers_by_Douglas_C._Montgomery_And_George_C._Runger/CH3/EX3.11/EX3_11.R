#Messages(Pg no. 76)

  x = c(10,11,12,13,14,15) # number of messages
  probability = c(0.08,0.15,0.30,0.20,0.20,0.07)
  
  u = weighted.mean(x,probability) #expectation
  
  v = weighted.mean((x-u)^2,probability)#variance
  
  sd = sqrt(v)
  cat("Expectation E(X) =",u)
  cat("Variance V(X) =",v)
  cat("Standard Deviation  SD(X) =",sd)
#The answer may slightly vary due to rounding off values