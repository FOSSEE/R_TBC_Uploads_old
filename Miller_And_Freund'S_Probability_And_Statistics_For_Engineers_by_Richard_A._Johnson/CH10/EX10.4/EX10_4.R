#Maximum error
n=400
x=136
Z.alpha=2.575
ratio=x/n
E=Z.alpha*sqrt((ratio)*(1-ratio)/n)
cat("Error is: ",E)