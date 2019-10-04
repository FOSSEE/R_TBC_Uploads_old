X<-matrix(c(75, 73, 60, 70, 86, 78, 71, 64, 72, 90, 80, 69, 62, 70, 85, 73, 67, 63, 80, 92),nrow = 4,ncol = 5,byrow = TRUE)
Xidot = matrix(0,4,1);
for (i in 1:4){
  for (j in 1:5){
    Xidot[i]=Xidot[i] + X[i,j]
  }
}
Xidot = Xidot/5;
Xjdot = matrix(0,5,1);
for (j in 1:5){
  for (i in 1:4){
    Xjdot[j]=Xjdot[j] + X[i,j]
  }
}
Xjdot = Xjdot/4;
Xdotdot = sum(Xidot)/4;
meanhat = Xdotdot;
alphahat = Xidot - meanhat;
betahat = Xjdot - meanhat; 
cat("The estimator of the mean is",meanhat)
cat("The alphas are-",alphahat)
cat("The betas are-",betahat)