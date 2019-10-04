deltabar=0.054
delta0=0.05
segma_square=0.000041
n=32
z.alpha=1.645 
Z=z.alpha+sqrt(n)*(delta0-deltabar)/sqrt(segma_square)
P=pnorm(Z, lower.tail = FALSE)#P-value for P( Z > -1.889)
message("The Type II error probability is ",(1-P))