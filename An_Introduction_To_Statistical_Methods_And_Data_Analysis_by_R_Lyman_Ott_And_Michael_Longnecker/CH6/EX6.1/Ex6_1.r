# confidence interval for indpendent sample
fresh=c(10.2, 10.6,10.5 ,10.7,10.3, 10.2,10.8, 10.0,9.8 ,10.6 )
stored=c( 9.8, 9.7,
          9.6, 9.5,
          10.1, 9.6,
          10.2, 9.8,
          10.1 ,9.9)
n1=length(fresh)
n2= length(stored)
y1bar = mean(fresh)
y2bar=mean(stored)
s1=sd(fresh)
s2=sd(stored)
# common standard deviation 
sp=sqrt(((n1-1)*s1*s1+(n2-1)*s2*s2)/(n1+n2-2))
 
# the t-percentile based on df for 95% confidence interval
tstar=qt( .975, df=18)
 margin=tstar*sp*sqrt((1/n1)+(1/n2))
 left_i=(y1bar-y2bar)-margin
 right_i=(y1bar-y2bar)+margin
 print("confidence interval is")
 print(left_i)
 print(right_i)
