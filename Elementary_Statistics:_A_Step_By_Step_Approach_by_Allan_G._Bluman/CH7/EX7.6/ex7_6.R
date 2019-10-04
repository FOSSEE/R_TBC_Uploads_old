t=round(qt(0.975,9),3)
c=0.95
s=0.78
n=10
m=7.1
lo=round(m-(t*(s/sqrt(n))),2)
hi=round(m+(t*(s/sqrt(n))),2)
l<-paste("Therefore, one can be 95% confident that the population mean is between",lo,"and",hi,"inches")
l