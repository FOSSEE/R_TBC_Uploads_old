#page no .95
#problem 19
#load package ---->measurements
library(measurements)
#functions:
R = function(p,v,n,t)
{
  return((p*v)/(n*t))
}
#formula used: pv=nrt
#              r = pv/nt
#given:
p = 3 * 10^6 #pressure of gas in pascal
v = 0.90 #volume of gas
m = 2.81 #mass of gas in kg
t = 231 # temperature in kelvin
r = R(p,v,m,t) #constant
print(r) 