# average no. of accidents in a week is 3

# using poisson distriution

#a
cat("Prob of no accidents in a week p(0)= ", dpois(0,3))

#b
cat("Prob of two accidents in a given week p(2)= ", dpois(2,3))

#c Prob atmost 4 accidents occur in a given week is
# p(0)+p(1)+p(2)+p(3)

cat("Prob atmost 4 accidents occur in a given week is ", ppois(4,3))

#d Average no. of accidents on a given day = 3/7
d <- 3/7
cat("Prob of two accidents on any given day is ", dpois(2,d))
