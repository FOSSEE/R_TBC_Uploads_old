#Chemical Process Concentration EWMA(Pg no. 711)

lambda = 0.2
n = 1
xbar = 99.1
mrbar = 2.59
u0 = 99.1
sigma = 2.59/1.128

LCL = u0 - (3*(sigma/sqrt(n))*sqrt((lambda/(2-lambda))*(1-(1-lambda)^(2))))
UCL = u0 + (3*(sigma/sqrt(n))*sqrt((lambda/(2-lambda))*(1-(1-lambda)^(2))))
cat("The control limits for z1 are LCL=",LCL,"UCL =",UCL)

# The answer may slightly vary due to rounding off values