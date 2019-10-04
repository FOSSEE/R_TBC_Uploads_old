mu = 11.6 
sigma = 3.3
#what is the probability that there will be at least 8 outages in any one month?
#we take 7.5 instand of 8
Z=1-pnorm((7.5-mu)/sigma)
Z