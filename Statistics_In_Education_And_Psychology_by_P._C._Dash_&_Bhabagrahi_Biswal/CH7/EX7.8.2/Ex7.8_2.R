#Page.No 7.28 - 7.29

x<-c(10,20,30,40,50,60,70)

n <- length(x)  # number of values

std <- sd(x)    # sample standard deviation

S.D<-sqrt((std ^ 2) * ((n - 1) / n))  # Population std deveiation

cat("The standard deviation of the scores is",S.D)
