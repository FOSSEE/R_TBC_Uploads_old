                                     # Page no. : 184 - 185

# Figuring effect size

m1 <- 220   # Mean of population 1 
m2 <- 200   # Mean of population 2
sd <- 48   # Standard deviation 

d1 <- (m1 - m2) / sd   # Estimated effect size

cat("Estimated effect size is", round(d1, 2))

m1 <- 210   # Mean of population 1 

d2 <- (m1 - m2) / sd   # Estimated effect size

cat("Estimated effect size is", round(d2, 2))

m1 <- 170   # Mean of population 1 

d3 <- (m1 - m2) / sd   # Estimated effect size

cat("Estimated effect size is", round(d3, 2))