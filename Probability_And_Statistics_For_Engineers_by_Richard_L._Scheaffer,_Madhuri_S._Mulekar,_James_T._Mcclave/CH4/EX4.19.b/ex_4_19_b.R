cat("No. of ways to select 1 female ", choose(2,1))
a <- choose(2,1)
cat("No. of ways to select other 2 employees ", choose(8,2))
b <- choose(8,2)
cat("total ways of selecting 3 employees",choose(10,3))
c <-  choose(10,3)
d <- (a*b)/c
cat("prob is", d)