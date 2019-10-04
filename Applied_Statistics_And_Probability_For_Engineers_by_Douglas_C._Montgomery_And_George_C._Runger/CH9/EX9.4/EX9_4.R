#install.packages("MASS")
library(MASS)

#Propellant Burning Rate Type II Error From OC Curve(Pg no. 327)

u =51
u0 = 50
std_dev = 2

d = (u-u0)/std_dev
fractions(d)