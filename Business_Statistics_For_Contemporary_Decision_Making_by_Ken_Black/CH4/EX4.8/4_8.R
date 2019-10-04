# Special law of Mulyiplication : If X, Y are independent, P (X or Y) = P (X) * P (Y)


T1 <- c("A", "B","C")
D <- c(8,20,6)
E <- c(12,30,9)
total_r <- c(20,50,15)
total_c <- c(" ",34,51,85)
T1 <- cbind(T1,D,E,total_r)
T1 <- rbind(T1,total_c)
View(T1)

# Probability of B :
Pb_B = sum(D[2],E[2])/sum(total_r)
Pb_B

# Probability of D :
Pb_D = sum(D)/sum(total_r)
Pb_D

# Probability of B and D is :
Pb_B_D = Pb_B * Pb_D
Pb_B_D