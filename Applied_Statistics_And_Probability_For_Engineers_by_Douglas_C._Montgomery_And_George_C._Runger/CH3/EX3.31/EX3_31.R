#Calculations of wire flaws(Pg no. 99)

mean = 2.3 #flaws per mm(millimeter)
t = 1 #mm
#P(X=2)
A = dpois(2,lambda = mean*t)

t = 5 #mm
#P(X=10)
B = dpois(10, lambda = mean*t)

t = 2 #mm
#P(X>-1) == 1 - P(X=0)
C = 1 - dpois(0,lambda = mean*t)

cat("the probability of two flaws in 1 millimeter of wire is",A)
cat("the probability of 10 flaws in 5 millimeters of wire is",B)
cat("the probability of at least one flaw in 2 millimeters of wire is",C)
#The answer may slightly vary due to rounding off values