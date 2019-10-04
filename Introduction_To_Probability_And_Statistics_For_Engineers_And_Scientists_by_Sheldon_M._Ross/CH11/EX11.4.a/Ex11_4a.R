Nij<-matrix(c(68, 56, 32, 52, 72, 20),nrow = 2,ncol = 3,byrow = TRUE)
n= sum(Nij);
Ni = matrix(0,2,1);
Mj = matrix(0,3,1);
for (i in 1:2){
  for (j in 1:3){
    Ni[i] = Ni[i] + Nij[i,j]
  }
}
for (j in 1:3){
  for (i in 1:2){
    Mj[j] = Mj[j] + Nij[i,j]
  }
}
NM = matrix(1,2,3);
for (i in 1:2){
  for (j in 1:3){
    NM[i,j]= Ni[i]*Mj[j]
  }
}
NM= NM/n;
TS = 0
for (i in 1:2){
  for (j in 1:3){
    TS = TS + ((Nij[i,j]-NM[i,j])^2)/NM[i,j]
  }
}
cat("The test statistic is",TS)
compare = pchisq(2, 0.95, 0.05)
if(TS>compare){
  cat("The null hypothesis is rejected at the 5% level of significance")
  } else {
    disp("The null hypothesis is accepted at the 5% level of significance")
  }