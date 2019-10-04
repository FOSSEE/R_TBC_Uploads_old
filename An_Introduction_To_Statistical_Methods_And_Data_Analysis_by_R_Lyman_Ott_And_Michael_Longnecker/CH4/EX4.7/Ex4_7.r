# The probability of observing y successes in n trials of a binomial experiment 
# number of trials
n<-20
#  let probability of success on a single trial be z
z<-0.85
# probability that 18 or more of the 20 seeds will germinate?
y<-18
probability_for18seeds<-(factorial(n))/(factorial(y)*factorial(n-y))*(z^y)*(1-z)^(n-y)
y<-19
probability_for19seeds<-(factorial(n))/(factorial(y)*factorial(n-y))*(z^y)*(1-z)^(n-y)
y<-20
probability_for20seeds<-(factorial(n))/(factorial(y)*factorial(n-y))*(z^y)*(1-z)^(n-y)
total_probability<-probability_for18seeds+probability_for19seeds+probability_for20seeds
print(total_probability)