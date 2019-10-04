require(bitops)
GetDirNumbers <- function(p,m0,n) {
  degree = length(p)-1;
  p = p[2:degree];
  m = cbind(m0 , matrix(0,1,n-degree))
  for (i in (degree+1):n){
    m[i] = bitXor(m[i-degree], 2^degree * m[i-degree])
    for (j in 1:(degree-1)){
      m[i] = bitXor(m[i], 2^j * p[j] * m[i-j]);
    }
  }
  v=m/(2^(1:length(m)))
  final<-list()
  final$v<-v
  final$m<-m
  return(final)
}

p <-matrix(c(1,0, 1, 1),nrow = 1,ncol = 4)
m0 <-matrix(c(1,3, 7),nrow = 1,ncol = 3)
ans<-GetDirNumbers(p,m0, 6)
ans$v
ans$m