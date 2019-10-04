n=100#random sample of size
sigma=5.1
xbar=21.6
z0.025=1.96
#ther for 95% confidence interval for the population mean is
Int1=xbar-z0.025*(sigma/sqrt(n))
Int2=xbar+z0.025*(sigma/sqrt(n))
cat("There for confidence interval mean is :",Int1," < ",Int2)