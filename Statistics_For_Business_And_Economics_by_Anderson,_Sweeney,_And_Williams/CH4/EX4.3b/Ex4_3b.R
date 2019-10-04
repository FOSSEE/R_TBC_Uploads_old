                                   # Pahe no. : 167

# Intersection and Union of Events

a <- 5   
n <- 50  
c <- 6   
d <- 2   

p_L <- a / n   

p_D <- c / n   

p_L_and_D <- d / n


cat("Probability for L intersection D is",p_L_and_D)

p_L_or_D <- p_L + p_D - p_L_and_D

cat("Probability for L union D is",p_L_or_D)

