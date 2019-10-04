mean <- 120
sd <-10
fraction <- 0.90
k <-( 1/(1-fraction))^0.5
cat("shortest interval is from ", mean-(k*sd), "-",mean+(k*sd))