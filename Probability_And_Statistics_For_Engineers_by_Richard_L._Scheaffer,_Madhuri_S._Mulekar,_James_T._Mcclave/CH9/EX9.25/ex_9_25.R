
# find the confidence coefficient

delta=0.90
n=50
a= 1 - n*(delta^(n-1)) + (n-1)*(delta^n)
cat("We are ",a*100," confident that the interval (2,150, 2,610) contains at least 90% of the lifelength measurements for the population under study. ")
