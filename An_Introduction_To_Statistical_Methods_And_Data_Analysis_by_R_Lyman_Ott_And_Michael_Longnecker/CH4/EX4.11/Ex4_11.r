# Mean and Standard Deviation of the Binomial Probability Distribution 
#number of trials
n<-1218
#  the probability of success of single event  is
z<-0.5
Mean<-n*z
print(Mean)
standard_deviation=sqrt(n*z*(1-z))
print(standard_deviation)
# survey of 1,218 customersrevealsthat 516 would add the new service
observed_valueof_y=516
# y = 516 is more than (3 * standard_deviation), or 52.35, less than Mean
# thus the observed number of customers in sample who would add the new service is too small
print(" Consequently, the company concluded that offering the new service was not a good idea")

