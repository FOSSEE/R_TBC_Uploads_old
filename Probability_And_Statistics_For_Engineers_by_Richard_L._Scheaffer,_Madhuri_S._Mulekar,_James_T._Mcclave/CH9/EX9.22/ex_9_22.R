#Confidence Interval for a Ratio of Population Variances

n1 =10
var1 =2.31
n2 =16
var2= 3.68
x = var2/var1

#given , confidence interval=90%
alpha=1-0.90
cat(" we are 90% confident that the ratio is between ",x/qf(alpha/2,n2 -1,n1 -1,lower.tail = F)," - ", x*qf(alpha/2,n1 -1,n2-1,lower.tail = F))
