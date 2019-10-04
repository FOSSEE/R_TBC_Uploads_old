#page no. 314-315
#example 8-7

  #part (a)

n=6
v_cap=0.25
x1=qchisq(0.975,6)       #qchisq() is the function used to calculate Chi-square percentile value in R
x2=qchisq(0.025,6)       #qchisq() is the function used to calculate Chi-square percentile value in R
c1=n*v_cap/x1
c2=n*v_cap/x2

cat("(8-23) yields ",c1,"< sigma^2 <",c2,". The corresponding interval for sigma is ",sqrt(c1),"< sigma <",sqrt(c2),"V")
#there is slight difference in the values in the book and that is due to approximation 

  #part (b)


n=5
s=0.6
x1=qchisq(0.975,5)       #qchisq() is the function used to calculate Chi-square percentile value in R
x2=qchisq(0.025,5)       #qchisq() is the function used to calculate Chi-square percentile value in R
c1=(n-1)*s^2/x1
c2=(n-1)*s^2/x2

cat("(8-24) yields ",c1,"< sigma^2 <",c2,". The corresponding interval for sigma is ",sqrt(c1),"< sigma <",sqrt(c2),"V")
#there is slight difference in the values in the book and that is due to approximation