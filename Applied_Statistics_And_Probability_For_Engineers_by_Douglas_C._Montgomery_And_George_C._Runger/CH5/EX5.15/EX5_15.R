#install.packages("MASS")
library(MASS)

#Probability as a Ratio of Volumes(Pg no. 168)

area1 = 4*pi
area2 = pi

p = area2/area1
cat("Prabability is",fractions(p))
ans = fractions(p)
ans