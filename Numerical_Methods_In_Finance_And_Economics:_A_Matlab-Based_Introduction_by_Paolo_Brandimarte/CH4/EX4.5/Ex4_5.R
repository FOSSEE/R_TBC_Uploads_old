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

m = 2048;
a = 65;
c = 1;
seed = 0;
U = LCG(a,c,m,seed, 2048);
plot(unlist(U[1])[1:m-1],unlist(U[2])[2:m])
plot(unlist(U[1])[1:511],unlist(U[2])[2:512])

a=1365;
c=1 ;
U = LCG(a,c,m,seed, 2048)
plot(unlist(U[1])[1:m-1],unlist(U[2])[2:m])