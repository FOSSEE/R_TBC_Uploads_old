m=54
z=round(qnorm(0.975),2)
z
s=6
n=50
x=round((z*s)/sqrt(n),2)
l<-paste("Hence one can say with 95% confidence that the interval between",m-x,"and",m+x,"days does contain the population mean, based on a sample of 50 automobiles.")
l