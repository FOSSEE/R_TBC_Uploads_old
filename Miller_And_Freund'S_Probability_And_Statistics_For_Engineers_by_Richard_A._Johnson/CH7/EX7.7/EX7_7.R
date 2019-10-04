n =50
x = 305.58#nm 
var = 1366.86 
s = 36.97#nm
#construct a 99% confidence interval for the population mean of all nanopillars
z0.005 = 2.575
Int1=x-z0.005*(s/sqrt(n))
Int1
Int2=x+z0.005*(s/sqrt(n))
Int2
message("There for the confidence interval is : ",Int1," < ",Int2)
