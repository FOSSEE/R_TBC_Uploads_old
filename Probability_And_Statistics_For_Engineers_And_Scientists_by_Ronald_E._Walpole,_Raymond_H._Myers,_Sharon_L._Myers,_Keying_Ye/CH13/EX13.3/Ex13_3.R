
# Chapter 13
# Example 13.3 page no. 517 from the pdf..
# Bartlett Test..

# to test the following hypothesis
# NULL : H0: sig1^2=sig2^2=sig3^2=sig4^2
# alternate : H1: at least two are not equal

# using bartlett test..
a <- c(49.20,44.54,45.80,95.84,30.10,36.50,82.30,87.85,105.00,95.22,97.50,105.00,58.05,86.60,58.35,72.80,116.70,45.15,70.35,77.40,97.07,73.40,68.50,91.85,106.60,0.57,0.79,0.77,0.81,62.10,94.95,142.50,53.00,175.00,79.50,29.50,78.40,127.50,110.60,57.10,117.60,77.71,150.00,82.90,111.50)

b <- c(rep("I",20),rep("J",9),rep("K",9),rep("L",7))

dat <- data.frame(a,b)

bartlett.test(a~b,data = dat)  # display of Bartlett test..

cat("The p-value is",bartlett.test(a~b,data = dat)$p.value,"we do not reject the null hypothesis and conclude popn. variances are not significantly different")

# the T.B has done this by comparing the areas in the left tail of bartlett distribution,using bartlett test function directly gives p-value in R, so it is more handy..



