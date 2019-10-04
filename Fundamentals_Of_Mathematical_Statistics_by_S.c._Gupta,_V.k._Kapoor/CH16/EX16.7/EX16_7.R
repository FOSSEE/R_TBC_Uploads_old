#Page number--16.14
#Example number--16.7

n=10
u=100
#H0::Null Hypothesis ------> mean IQ of 100 in the population u=100
#H1::Alternative Hypothesis--->u!=100

x=c(70,120,110,101,88,83,95,98,107,100)
m=sum(x)/n  			#Mean
m
a=x-m
b=a^2
data.frame(x,a,b)
s2=sum(b)/9
s2
t=abs((m-u)/sqrt(s2/n))
t
sprintf("H0 is accepted")




