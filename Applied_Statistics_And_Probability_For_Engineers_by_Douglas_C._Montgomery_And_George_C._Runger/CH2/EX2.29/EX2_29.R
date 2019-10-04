#install.packages("MASS")
library(MASS)

#Sampling with replacement(Pg no. 49)

# A : event that first part is defective
# B : event that second part is defective

B_given_A = 3
A = 3
total = 50
P = fractions((B_given_A*A)/(total*total))
print(P)
cat("probability that both parts are defective is",P)