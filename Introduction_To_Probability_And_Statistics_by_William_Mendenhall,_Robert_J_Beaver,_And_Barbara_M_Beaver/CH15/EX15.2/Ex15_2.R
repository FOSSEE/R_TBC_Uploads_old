standard1 <- c(1.21,1.43,1.35,1.51,1.39,1.17,1.48,1.42,1.29,1.40)
treated2 <- c(1.49,1.37,1.67,1.50,1.31,1.29,1.52,1.37,1.44,1.53)
n1 <- length(standard1)
n2 <- length(treated2)
alpha = 0.05
x <- c(standard1,treated2)
ranksum<-function(x,start,end){
  return(sum(x[start:end]))
}
rank <- rank(x)
t1 <- ranksum(rank,1,n1)
t2 <- n1 * (n1 + n2 + 1) - t1
if(t1 <= 82){                        #critical value of T at n1=n2=10 at alpha = 0.05 is 82 
  print("Reject the hypothesis")
}else{
  print("Insufficient evidence to conclude that the treated kraft paper is stronger than the standard paper")
}
muo_t <- (n1 * (n1 * n2 + 1))/2
sigma_sqr_t <- ((n1 * n2) *(n1 + n2 +1))/12
sigma_t <- sqrt(sigma_sqr_t)
z <- (t1 - muo_t)/sigma_t;
p_value <- 0.5 - 0.4292            
p_value
if(p_value <= alpha){
  print("Reject the hypothesis")
}else{
  print("Cannot conclude the treated kraft paper is stronger than the standard paper")
}