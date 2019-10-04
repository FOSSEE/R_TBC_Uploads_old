Nij<-matrix(c(10, 12, 6, 7, 10, 24, 9, 10, 13, 20, 7, 10),nrow = 3,ncol = 4,byrow = TRUE)
n= sum(Nij);
Ni = matrix(0,3,1);
Mj = matrix(0,4,1);
for (i in 1:3){
  for (j in 1:4){
    Ni[i] = Ni[i] + Nij[i,j]
  }
}
for (j in 1:4){
  for (i in 1:3){
    Mj[j] = Mj[j] + Nij[i,j]
  }
}
NM = matrix(1,3,4);
for (i in 1:3){
  for (j in 1:4){
    NM[i,j]= Ni[i]*Mj[j]
  }
}
NM= NM/n;
TS = 0
for (i in 1:3){
  for (j in 1:4){
    TS = TS + ((Nij[i,j]-NM[i,j])^2)/NM[i,j]
  }
}
cat("The test statistic is",TS)
pvalue = 1- pchisq(TS, 6)
cat("the hypothesis that the machine that causes a breakdown is independent of the shift on which the breakdown occurs is accepted.")