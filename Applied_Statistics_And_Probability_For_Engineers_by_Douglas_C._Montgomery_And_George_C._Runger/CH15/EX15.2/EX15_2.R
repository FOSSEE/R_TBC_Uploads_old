#Chemical Process Concentration(Pg no. 685)

x = c(102.0,94.8,98.3,98.4,102.0,98.5,99.0,97.7,100.0,98.1,101.3,98.7,101.1,98.4,97.0,96.7,100.3,101.4,97.2,101.0)
mr = c(7.2,3.5,0.1,3.6,3.5,0.5,1.3,2.3,1.9,3.2,2.6,2.4,2.7,1.4,0.3,3.6,1.1,4.2,3.8)

xbar = sum(x)/length(x)
xbar

mrbar = sum(mr)/length(mr)
mrbar

d2 = 1.128

UCL = xbar + (3*(mrbar/d2))
cat("UCL =",UCL)

LCL = xbar - (3*(mrbar/d2))
cat("LCL =",LCL)

CL = xbar
cat("CL =",CL)

# The answer may slightly vary due to rounding off values