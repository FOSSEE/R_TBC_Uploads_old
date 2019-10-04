
#Large Sample Confidence Interval for a Difference in Proportions 
#Data for motors

n1 = 250
y1 = 25
p1 = y1/n1
n2 = 200
y2 = 30
p2 = y2/n2

diff_prop = p1 - p2

# givem confidence interval =95%
aplha = 1-0.95
a = qnorm(aplha/2, lower.tail = F)*sqrt(p1*(1-p1)/n1 + p2*(1-p2)/n2)


cat("We are 95% confident that the true difference in proportion of defective motors produced by two shifts is between " ,diff_prop -a," - ", diff_prop+a)
