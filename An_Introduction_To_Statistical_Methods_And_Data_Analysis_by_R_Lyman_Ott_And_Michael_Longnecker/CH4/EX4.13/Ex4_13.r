#number of trials
n<-1000
#  the probability of success of single event  is
z<-0.001
Mean<-n*z
print(Mean)
 # Applying the Poisson probability distribution with U= 1

U<-1
# probability that none of a  patients administered the drug experiences a particular side effect

y<-0
probability_nopatientsideeffect<-((U^y)*(exp(1)^-U))/factorial(y)
print(probability_nopatientsideeffect)



