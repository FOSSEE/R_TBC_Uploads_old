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
a = 1229;
c = 1;
N = m-2;
seed = 0;
U = LCG(a,c,m,seed,N);
index<-seq(1,N-1,2)
U1 = unlist(U[2])[index]
index<-seq(2,N,2)
U2 = unlist(U[2])[index]
X=sqrt(-2*log(U1))* cos(2*pi*U2);
Y=sqrt(-2*log(U1))* sin(2*pi*U2);
plot(X,Y)
X=sqrt(-2*log(U2))* cos(2*pi*U1);
Y=sqrt(-2*log(U2))* sin(2*pi*U1);
plot(X,Y)