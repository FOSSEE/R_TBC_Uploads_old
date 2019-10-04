#  Calculating a Confidence Interval From a Normal Distribution
n<-50
 a<-2.8
 s<-0.6
 #  we will use a 95% confidence level and wish to find the confidence interval
 margin <- qnorm(0.975)*s/sqrt(n)
 left_i <- a-margin
   right_i <- a+margin
   print("Confidence interval is")
   print(left_i)
   print(right_i)