#Page number--14.12
#Example number--14.1

n=9000
X=3240

#H0::That die is unbiased
#Probability of success
P=1/6+1/6
Q=1-P
#H1::That die is baised

Z=(X-n*P)/sqrt(n*P*Q)

#Probability limits
p=3240/9000;q=1-p
ll=p-3*sqrt(p*q/n)
ul=p+3*sqrt(p*q/n)
sprintf("Probability of getting 3 or 4 certainly lies between %f and %f",round(ll,3),round(ul,3))