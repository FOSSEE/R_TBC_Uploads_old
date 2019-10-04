t = 1800;
theta = 150;
r =20;
pvalue = 1 - pchisq(2*r,2*t/theta)
cat("P-value is ",pvalue)