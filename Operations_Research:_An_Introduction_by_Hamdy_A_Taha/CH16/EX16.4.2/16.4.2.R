##Chapter 16 : Queuing Systems
##Example 4-1 : Page 632

#probability of placing an order in any one day of the week
Pfunction <- function(mu,t,n,Slimit){
  #empty matrix for the table
  A<-matrix(0,nrow = 3,ncol = 7)
  p0=0
  for(t in 1:7){
    P=p0
    for(n in 1:5){
      P=P+((mu*t)^(Slimit-n) *exp(-mu*t))/factorial(Slimit-n)
    }
    #appending to the table
    A[1,t]=t
    A[2,t]=mu*t
    A[3,t]=round(P,digits = 4)
  }
  return(A)
}
Pfunction(3,7,5,18)

#average number of dozen roses discarded at the end of the week
discardedRoses<-function(N,mu,n,t){
  P=0
  for(i in 1:n){
    P=P+i*((mu*t)^(N-i) * exp(-mu*t))/factorial(N-i)
  }
  return(P)
}
discardedRoses(18,3,18,7)