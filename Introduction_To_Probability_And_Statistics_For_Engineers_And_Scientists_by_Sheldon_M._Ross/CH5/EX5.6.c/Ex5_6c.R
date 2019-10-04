new <- function(lamda,n, t ) {
  newsum = 0;
  for (i in 1:n){
    newsum= newsum + lamda[i]
    result=(exp(1))^(-1*newsum*t)
  }
}