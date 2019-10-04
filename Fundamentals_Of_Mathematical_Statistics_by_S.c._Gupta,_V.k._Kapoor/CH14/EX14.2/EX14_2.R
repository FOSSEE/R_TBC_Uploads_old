#Page number--14.13
#Example number--14.2

n=500
X=65
p=X/n   		#Proportion on Number of bad pineapples
q=1-p
#S.E of proportion
s.e=sqrt(p*q/n)
#Probability limits
ll=p-3*sqrt(p*q/n)
ul=p+3*sqrt(p*q/n)
sprintf("Percentage of bad pineapples in the consignment between %f and %f",round(ll,3),round(ul,3))