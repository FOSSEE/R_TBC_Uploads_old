alpha=0.025
pie=0.5
E=0.03
z.alpha=qnorm(1-alpha)
#  sample size necessary to achieve this accuracy
n=((z.alpha^2)*pie*(1-pie))/E^2
print(ceiling(n))
# 1,068 programs would need to be tested in order to be 95% confident that
#the estimate of pie is within .03 of the actual value of pie

pie=0.8
n=((z.alpha^2)*pie*(1-pie))/E^2
print(n)
#  if the designer was fairly certain that the actual value of pie was at least .80,
#then the required sample size can be greatly reduced.