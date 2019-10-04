#confidence Interval Estimate for the Population proportion
# p +- z*sqrt((p*p-1)/n)
X<- 35 #No. of Character having the characteristic
n<- 200 #sample size
z <-1.645 #critical value fromthe standardized normal distribution
p <- X / n #sample proportion
p
Pop_prop_upper<- p + z*sqrt((p*(1-p))/n)
Pop_prop_upper
Pop_prop_lower <-p - z*sqrt((p*(1-p))/n)
Pop_prop_lower
