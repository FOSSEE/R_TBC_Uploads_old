n=10
m<-c(59, 54, 53, 52, 51, 39, 49, 46, 49, 48)
s=sd(m)
Xr=round(qchisq(0.95,9),3)
Xl=round(qchisq(0.05,9),3)
lo=(n-1)*(s^2)/Xr
lo=sqrt(lo)
hi=(n-1)*(s^2)/Xl
hi=sqrt(hi)
l<-paste("Hence, you can be 90% confident that the true standard deviation price of all single-day ski lift tickets of the population is between",round(lo,2),"and",round(hi,2),"dollars on a sample of 10 nationwide ski resorts.")
l