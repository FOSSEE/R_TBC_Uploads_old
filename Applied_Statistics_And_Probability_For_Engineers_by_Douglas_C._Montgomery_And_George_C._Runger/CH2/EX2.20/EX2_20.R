#Semiconductor wafers and location(Pg no. 36)

E1 = 0.15 #probability that a wafer contains four or more particles
E2 = 0.28 #probability that a wafer was at the edge
E1_and_E2 = 0.04
E1_or_E2 = E1+E2-E1_and_E2

E3 = 0.60 #probability that a wafer contains less than two particles
E4 = 0.03 #probability that a wafer is both at the edge and contains more than four particles
E3_and_E4 = 0 #mutually exclusive
E3_or_E4 = E3+E4-E3_and_E4

cat("probability of E1 union E2 is",E1_or_E2)
cat("probability of E3 union E4 is",E3_or_E4)