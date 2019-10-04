Nij<-matrix(c(62, 14, 9938, 19986),nrow = 2,ncol = 2,byrow = TRUE)
n= sum(Nij);
Ni = matrix(0,2,1);
Mj = matrix(0,2,1);
for (i in 1:2){
  for (j in 1:2){
    Ni[i] = Ni[i] + Nij[i,j]
  }
}
Ni
for (j in 1:2){
  for (i in 1:2){
    Mj[j] = Mj[j] + Nij[i,j]
  }
}

NM = matrix(1,2,2);
for (i in 1:2){
  for (j in 1:2){
    NM[i,j]= Ni[i]*Mj[j]
  }
}
NM= NM/n;
NM
TS = 0
for (i in 1:2){
  for (j in 1:2){
    TS = TS + ((Nij[i,j]-NM[i,j])^2)/NM[i,j]
  }
}
cat("The test statistic is",TS)
compare = pchisq(1, 0.99, 0.01)
compare
if(TS>compare){
  cat("The null hypothesis is rejected at the 1% level of significance");
} else{
  cat("The null hypothesis is accepted at the 1% level of significance");
}