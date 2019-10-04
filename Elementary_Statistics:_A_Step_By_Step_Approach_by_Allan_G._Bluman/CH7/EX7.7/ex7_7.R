t=qt(0.995,6)
s=1610.3
n=7
m=7041.4
lo=round(m-(t*(s/sqrt(n))))
hi=round(m+(t*(s/sqrt(n))))
l<-paste("Therefore, one can be",c*100,"confident that the population mean is between",lo,"and",hi)
l