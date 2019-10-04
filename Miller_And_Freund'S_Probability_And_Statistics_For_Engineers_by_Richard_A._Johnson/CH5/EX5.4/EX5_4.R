#f(x)=2e^(-2x) for x>0#is PDF
#MEAN
#f(x)=xf(x)
options(digits = 3)
f=function(x) 2*x*exp(1)^(-2*x)
mean <- integrate(f, lower =0, upper =Inf)
cat("Mean for PDF is",mean$value)
#variance
#var=E(X^2)-E(X)^2
E=function(x) 2*(x^2)*exp(1)^(-2*x)#E(X^2)
E1=integrate(E, lower =0, upper =Inf)
var=E1$value-((mean$value)**2)
cat("Varience for PDF is",var)
