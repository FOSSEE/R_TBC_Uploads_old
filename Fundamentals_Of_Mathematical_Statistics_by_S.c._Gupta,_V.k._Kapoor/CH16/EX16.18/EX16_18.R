#Page number--16.25
#Example number--16.18

#H0::Null Hypothesis ------>p=0
#H0::The value of r=0.2 is not significant

r=0.2
n=625
t=r*sqrt(n-2)/sqrt(1-r^2)
t

sprintf("Null hypothesis is rejected")
sprintf("The sample correlation is significant of correlation in the population.")

#95% confidence limits
ll=r - 1.96*(1-r^2)/sqrt(n) 			 # lower limit
ll
ul=r + 1.96*(1-r^2)/sqrt(n)		   	 # upper limit
ul

#99% confidence limits
ll=r - 2.58*(1-r^2)/sqrt(n) 			 # lower limit
round(ll,3)
ul=r + 2.58*(1-r^2)/sqrt(n)		   	 # upper limit
ul
