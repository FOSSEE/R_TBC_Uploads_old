X=8
n=55
#The point estimate is
P=X/n
cat("The Point is: ",P)
# standard error is
E=sqrt((P*(1-P))/n)
cat("Error is : ",E)