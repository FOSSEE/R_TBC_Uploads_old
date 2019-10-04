#variance using alternative computing formula
s=c(1,2,3,4,5,6)#sample space
p=1/6#Probability of die
mu1=sum(p*s)
mu1
mu2=sum(p*s**2)
var=mu2-mu1**2
var
cat("Variance is",var)
