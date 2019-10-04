mean <- 120
sd <- 10
lower_limit <- 100
k <- (mean - lower_limit)/sd
 
cat(1-1/k*k, "fraction of days will have prod. between 100 and 140" )