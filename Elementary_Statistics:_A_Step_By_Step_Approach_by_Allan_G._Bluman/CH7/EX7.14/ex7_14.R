n=20
s=1.6
Xr=round(qchisq(0.975,19),2)
Xl=round(qchisq(0.025,19),2)
lo=(n-1)*(s^2)/Xr
lo=sqrt(lo)
hi=(n-1)*(s^2)/Xl
hi=sqrt(hi)
l<-paste("Hence, you can be 95% confident that the true standard deviation for the nicotine content of all cigarettes manufactured is between",round(lo,1),"and",round(hi,1),"milligrams based on a sample of 20 cigarettes.")
l