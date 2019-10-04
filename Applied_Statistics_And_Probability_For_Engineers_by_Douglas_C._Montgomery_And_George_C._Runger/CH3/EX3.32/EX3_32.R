#Magnetic storage and contamination(Pg no. 101)

mean = 0.1 #particles per cm(centiimeter)^2 
t = 100 #cm^2

#P(X=12)
A = dpois(12, lambda = mean*t)

#P(X=0)
B = dpois(0, lambda = mean*t)

#P(X<=12)
C = ppois(12, lambda = mean*t)

cat("P(X=12) =",A)
cat("P(X=0) =",B)
cat("P(X<=12) =",C)
#The answer may slightly vary due to rounding off values