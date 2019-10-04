x=60
n=500
p=round((x/n),2)
q=1-p
z=round(qnorm(0.951),2)
lo=round((p-(z*sqrt(p*q/n)))*100,1)
hi=round((p+(z*sqrt(p*q/n)))*100,1)
l<-paste("Hence, you can be 90% confident that the percentage of applicants who are men is between",lo,"and",hi,"%")
l