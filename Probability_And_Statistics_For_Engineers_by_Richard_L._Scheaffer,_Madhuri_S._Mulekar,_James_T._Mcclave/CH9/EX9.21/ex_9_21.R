p11=0.7
p12=0.9
p21=0.8
p22=0.9

#Estimated mean 
p= (p12 - p11) - (p22 - p21)

#Estimated variance
var= sum(p11*(1-p11),p12*(1-p12),p21*(1-p21),p22*(1-p22))/100

# givem confidence interval =95%
aplha = 1-0.95
a = qnorm(aplha/2, lower.tail = F)*sqrt(var)

cat("we are 95% confident that the difference in the change in probability for males and females is between ",p-a," - ",p+a)