#number of trials
n<-5
#  the probability of success when one person is selected from the population is
z<-0.9
#  probability that all five heads of the households are employed
y<-5
probability_forall5employed<-(factorial(n))/(factorial(y)*factorial(n-y))*(z^y)*(1-z)^(n-y)
print(probability_forall5employed)