# Independent Event : P(X|Y) = P(X) and P(Y|X) = P(Y)

T1 <- c("A", "B","C")
D <- c(8,20,6)
E <- c(12,30,9)
total_r <- c(20,50,15)
total_c <- c(" ",34,51,85)
T1 <- cbind(T1,D,E,total_r)
T1 <- rbind(T1,total_c)
View(T1)

# Check the ???rst cell in the matrix to ???nd whether P(A|D) = P(A)
Pb_A_D <- D[1]/sum(D)  # P(A|D)
Pb_A_D

P_A <- sum(D[1],E[1])/sum(total_r)
P_A # P(A)
