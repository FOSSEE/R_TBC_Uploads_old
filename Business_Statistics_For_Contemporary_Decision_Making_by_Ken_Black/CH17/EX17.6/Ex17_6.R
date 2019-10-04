# SPEARMAN'S RANK CORRELATION  :

Crude_oil <- c(14.60,10.50,12.30,15.10,18.35,22.60,28.90,31.40,26.75)
Gasoline <- c(3.25,3.26,3.28,3.26,3.32,3.44,3.56,3.60,3.54)
Crude_rank <- c(3,1,2,4,5,6,8,9,7)
Gasoline_rank <- c(1,2.5,4,2.5,5,6,8,9,7)
d <- c(2,-1.5,-2,1.5,0,0,0,0,0)
d_sq <- c(4,2.25,4,2.25,0,0,0,0,0)
oil <- data.frame(Crude_oil,Gasoline,Crude_rank,Gasoline_rank,d,d_sq)
oil
d_sq_sum <- sum(d_sq)
d_sq_sum

# Using cor.test :
# install.packages("stats")
library(stats)
cor.test(oil$Crude_oil, oil$Gasoline, method = "spearman")

# using formula :
n = 9
r_s <- 1 - ((6*d_sq_sum)/(n*(n^2-1)))
r_s


# A high positive correlation is computed between the price of a barrel of 
# West Texas intermediate crude and a gallon of regular unleaded gasoline.
