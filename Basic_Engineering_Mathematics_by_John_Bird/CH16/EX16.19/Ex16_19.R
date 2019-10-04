#page no. 147
#problem 19

#load package --->measurements
library(measurements)
#formula used: Q = Q0*exp((-k*t)
#              k = (1/t)log(Q0/Q)------> after applying log on both sides
#NEWTON's COOLING LAW
#function:

find_k = function(t,Q0,Q)
{ 
  return((1/t)*log(Q0/Q))
}


#given:
Q0 = 56.6 #tenperature in C

Q = 16.5 #tenperature in C

t = 76 #time in seconds
k_constant = find_k(t,Q0,Q)

print(k_constant) # constant value
