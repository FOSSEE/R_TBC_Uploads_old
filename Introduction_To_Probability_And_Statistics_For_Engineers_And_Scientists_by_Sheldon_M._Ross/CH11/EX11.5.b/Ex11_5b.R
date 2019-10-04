Nij<-matrix(c(28, 30, 58, 55, 472, 470, 442, 445),nrow = 2,ncol = 4,byrow = TRUE)
n= sum(Nij);
Ni = matrix(0,2,1);
Mj = matrix(0,4,1);
for (i in 1:2){
  for (j in 1:4){
    Ni[i] = Ni[i] + Nij[i,j]
  }
}
for (j in 1:4){
  for (i in 1:2){
    Mj[j] = Mj[j] + Nij[i,j]
  }
}
NM = matrix(1,2,4);
for (i in 1:2){
  for (j in 1:4){
    NM[i,j]= Ni[i]*Mj[j]
  }
}
NM= NM/n;

TS = 0
for (i in 1:2){
  for (j in 1:4){
    TS = TS + ((Nij[i,j]-NM[i,j])^2)/NM[i,j]
  }
}
cat("The test statistic is",TS)

compare = pchisq(3, 0.99, 0.01)
pvalue = 1- pchisq(TS, 3)
cat("The p-value is",pvalue)

compare
if(TS>compare){
  cat("The null hypothesis is rejected at the 1% level of significance");
} else{
  cat("The null hypothesis is accepted at the 1% level of significance");
}