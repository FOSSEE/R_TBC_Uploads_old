LSL = 10.98
USL = 11.01
n=80
x = 10.991
s = 0.0035
#Estimating the process capability indices Cp and Cpk
Cp=(USL-LSL)/(6*s)
Cp
Cpk=min(x-LSL,USL-x)/(3*s)
Cpk
cat("This second index is substantially smaller than the first because the mean is
off-center.")