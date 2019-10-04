# Poisson Distribution
# Poisson probability of observing y events in a unit of time or space is given by the formula 
# probability_y<-((U^y)*(e^-U))/factorial(y)
# U is the average value of y
U<-2.3
# The probability that a trap contains exactly four field mice is computed
y<-4
probability_findingexactlyfour<-((U^y)*(exp(1)^-U))/factorial(y)
print(probability_findingexactlyfour)
# The probability That a trap contains atmost four feild mice is computed as
probability_findingatmost_four=(((U^0)*(exp(1)^-U))/factorial(0))+(((U^1)*(exp(1)^-U))/factorial(1))+(((U^2)*(exp(1)^-U))/factorial(2))+(((U^3)*(exp(1)^-U))/factorial(3))+(((U^4)*(exp(1)^-U))/factorial(4))
print(probability_findingatmost_four)
# The probability of finding more than four field mice
probability_findingmorethanfour=1-probability_findingatmost_four
print(probability_findingmorethanfour)



