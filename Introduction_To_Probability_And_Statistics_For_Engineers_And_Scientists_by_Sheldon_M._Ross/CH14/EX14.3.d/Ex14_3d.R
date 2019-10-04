r = 30;
T = 600;
theta = 25;
val1 = pchisq(2*T/theta,2*r)
val2 = 1 - pchisq(2*T/theta,2*(r+1))
val2
pvalue = min(val1, val2);
cat("The pvalue is",pvalue)
cat("H0 would be accepted when the significance level is 0.10")