#install.packages("tolerance")
library(tolerance)

#Alloy Adhesion(Pg no. 299)

n = 22
sd = 3.55
mean = 13.71
k = K.factor(n, f = NULL, 0.05, 0.90, side = 2)

min = mean - k*sd
max = mean + k*sd

cat("The desired tolerance interval is [",round(min,digits = 2),",",round(max,digits = 2),"]")

# The answer may slightly vary due to rouding off values