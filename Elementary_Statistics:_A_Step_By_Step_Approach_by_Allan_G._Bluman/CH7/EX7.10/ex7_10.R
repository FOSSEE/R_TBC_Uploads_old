n=1721
p=0.159
q=1-p
z=round(qnorm(0.975),2)
lo=round((p-(z*sqrt(p*q/n)))*100,1)
hi=round((p+(z*sqrt(p*q/n)))*100,1)
l<-paste("Hence, you can be 95% confident that the true percentage is between",lo,"and",hi,"%")
l