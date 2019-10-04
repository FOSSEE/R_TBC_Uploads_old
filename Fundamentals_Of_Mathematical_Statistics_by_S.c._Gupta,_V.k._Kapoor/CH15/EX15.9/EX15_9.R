#Page number--15.25
#Example number--15.9

X=c(2.5,2.3,2.4,2.3,2.5,2.7,2.5,2.6,2.6,2.7,2.5)
m=sum(X)/length(X)      		 # Mean
a=round(X-m,2)
b=a^2
data.frame(X,m,a,b)

#Null Hypothesis
H0=0.16
#Alternative Hypothesis
#H1>0.16
x=sum(b)/H0
x

sprintf("H0 may be accepted")
sprintf("The data are consistent with the hypothesis that the precision of the instrument is 0.16")