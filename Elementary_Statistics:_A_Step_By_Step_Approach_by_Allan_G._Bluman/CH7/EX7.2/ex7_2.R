m=5.6
z=round(qnorm(0.995),2)
s=0.8
n=30
x=round((z*s)/sqrt(n),1)
l<-paste(" one can be 99% confident that the mean age of all primary vehicles is between",m-x,"and",m+x,"years, based on 30 vehicles.")
l