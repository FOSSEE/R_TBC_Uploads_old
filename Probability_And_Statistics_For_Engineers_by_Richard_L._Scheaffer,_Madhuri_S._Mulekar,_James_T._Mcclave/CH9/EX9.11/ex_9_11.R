readings <- c(9.54,9.61,9.32,9.48,9.70,9.26)

var= (sd(readings))^2
n=6

# given Confidence interval =90%
alpha= 1-0.90

# Using chi-sq distribution

a <- qchisq(1 - (alpha/2),df= n-1,lower.tail = F)
b <- qchisq((alpha/2),df= n-1,lower.tail = F)

cat("Thus, confidence interval is ", (n-1)*var/b," - ", (n-1)*var/a)
