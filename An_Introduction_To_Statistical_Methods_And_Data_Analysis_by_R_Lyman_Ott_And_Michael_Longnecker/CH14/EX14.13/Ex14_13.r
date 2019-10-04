sigma=(70-40)/4

alpha=0.025
z.alpha=qnorm(1-alpha)

E=4 #given
#  number of replications is
n=((sigma^2)*(z.alpha^2))/E^2
print(n)

