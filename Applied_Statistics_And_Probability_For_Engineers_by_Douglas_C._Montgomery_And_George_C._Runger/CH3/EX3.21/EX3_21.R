#Wafer contamination(Pg no. 88)

contaminated = 0.01

n = 125 #num of wafers

p = dgeom(n,contaminated)

cat("P(X=125) =",p)
#The answer may slightly vary due to rounding off values