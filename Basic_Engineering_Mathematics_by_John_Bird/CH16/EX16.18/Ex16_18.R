#page no. 147
#problem 18
#load package --->measurements
library(measurements)
#formula used: alpha = (1/theta)log(R/R0)
#
#function:

find_alpha = function(theta,R,R0)
{ 
  return((1/theta)*log(R/R0))
}


find_theta = function(alpha,R,R0)
{ 
  return((1/alpha)*log(R/R0))
}

#given:
r0 = 5 #kilo_ohms
R0 = conv_unit(r0,'km','m') # resistance in ohms

r = 6 #kilo_ohms
R = conv_unit(r,'km','m') # resistance in ohms

theta = 1500 #temperature in C
alpha = find_alpha(theta,R,R0)

r_new = 5.4 #kilo_ohm
R_new = conv_unit(r_new,'km','m')
theta_new = find_theta(alpha,R_new,R0)

print(theta_new) # temperature to nearest degree
