#Prediction interval
mu =16.1
s=0.01
n=16

#Given, confidence interval =95%
alpha=1-0.95
x= qt(alpha/2,df = n-1,lower.tail = F)*s*sqrt(1 + 1/n)
cat("We are about 95% confident that the next observation will lie between ", mu-x ," - ", mu+x)

