
# Given X = beryllium contamination follows lognormal distribution
# Parameters of X ,mu = -2.291 , sd = 1.276

# Using lognormal distribution
#a
cat(" the probability that wipe sample  will have beryllium contamination exceeding 0.50 gm/100 cm2 = P(X>0.50) "
    , 1 - plnorm(0.50,meanlog = -2.291,sdlog = 1.276))

#b
cat("The 95th percentile for contamination distribution is", qlnorm(0.95,meanlog = -2.291,sdlog = 1.276))
cat("The result exceeds the DOE safety limit of 0.20 and thus, we can conclude that the beryllium contamination at this smelter is at an unhealthy level for workers")


#c
cat("E(X)= ", exp(-2.291 + (1.276^2)/2))
cat("V(X)= ", (exp((2*(-2.291)) + (1.276^2)))*((exp(1.276^2)) - 1 ))
    
    