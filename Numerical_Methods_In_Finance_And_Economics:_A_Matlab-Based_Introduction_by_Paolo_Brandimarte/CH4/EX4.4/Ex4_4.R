LCG <- function(a,c,m,seed,N) {
  ZSeq <-matrix(0,N,1) 
  USeq <-matrix(0,N,1) 
  for (i in 1:N){
    seed = (a*seed+c) %% m
    ZSeq[i] = seed
    USeq[i] = seed/m
  }
  result<-list(ZSeq,USeq)
  return(result)
}

a = 5
c = 3
m = 16
seed = 7 
N = 20
LCG(a,c,m,seed,N)