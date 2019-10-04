#number of trials
n<-5
#  the probability of success when one person is selected from the population is
z<-0.9
#   probability that exactly one person in the sample of five households is unemployed.

y<-4
probability_forexactone_unemployed<-(factorial(n))/(factorial(y)*factorial(n-y))*(z^y)*(1-z)^(n-y)
print(probability_forexactone_unemployed)
# the probability of one or fewer being unemployed
probability_foroneorfew_unemployed=((factorial(n))/(factorial(4)*factorial(n-4))*(z^4)*(1-z)^(n-4))+((factorial(n))/(factorial(5)*factorial(n-5))*(z^5)*(1-z)^(n-5))
print(probability_foroneorfew_unemployed)