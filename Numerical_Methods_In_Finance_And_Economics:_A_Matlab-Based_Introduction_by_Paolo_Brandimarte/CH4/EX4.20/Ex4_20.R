require(bitops)
options(warn=-1)

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

GetSobol <- function(GenNumbers, x0, HowMany) {
  Nbits = 20;
  factor = 2^Nbits;
  BitNumbers = GenNumbers * factor;
  SobSeq = matrix(0,HowMany + 1, 1);
  SobSeq[1] = as.integer(x0*factor);
  for (i in 1:HowMany){
    c = pmin(which( intToBits(i-1) [1:16] == 0 ));
    SobSeq[i+1] = bitXor(SobSeq[i], BitNumbers[c]);
  }
  SobSeq = SobSeq / factor;
  return(SobSeq)
}
GetSobol(ans$v,0,10)


p <-matrix(c(1,0, 1, 1,1,1),nrow = 1,ncol = 6)
m0 <-matrix(c(1,3, 5, 9, 11),nrow = 1,ncol = 5)
ans<-GetDirNumbers(p,m0, 10)

GetSobol(ans$v,0.124,10)