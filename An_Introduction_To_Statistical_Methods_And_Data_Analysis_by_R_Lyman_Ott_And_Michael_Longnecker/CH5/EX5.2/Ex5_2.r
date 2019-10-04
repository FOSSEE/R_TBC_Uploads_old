#  Calculating a Confidence Interval From a Normal Distribution
n<-50
a<-27.3
s<-12.1
#  we will use a 99% confidence level and wish to find the confidence interval
margin <- qnorm(0.995)*s/sqrt(n)
left_i <- a-margin
right_i <- a+margin
print("Confidence interval is")
print(left_i)
print(right_i)