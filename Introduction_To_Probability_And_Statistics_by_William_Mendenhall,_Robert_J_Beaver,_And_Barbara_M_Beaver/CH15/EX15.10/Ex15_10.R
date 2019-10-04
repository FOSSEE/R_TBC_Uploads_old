xi <- c(7,4,2,6,1,3,8,5)
yi <- c(1,5,3,4,8,7,2,6)
di <- c(xi - yi)
n <- 8;
di_square <- c(di * di)
total = sum(di_square)
total
rs <- 1 - (6 * total)/((n) * (n * n - 1 ))
cat("rs is ",rs)