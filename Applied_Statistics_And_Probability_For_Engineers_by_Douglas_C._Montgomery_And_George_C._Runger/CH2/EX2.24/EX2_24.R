#install.packages("MASS")
library(MASS)

#Random inspection(Pg no. 42)

remaining_parts = 49 #total remaining parts
defective_parts = 2 #total defective parts remaining

P = defective_parts/remaining_parts
P = fractions(P)
print(P)
cat("conditional probability P(B|A) is ",P)