X<-c(66, 72, 81, 94, 112, 116, 124, 140, 145, 155);
D= 0.4831487;
n= 10;
Dgiven = 1.480;
Dstar = (sqrt(n) + 0.12 + (0.11/sqrt(n)))*D;
cat("Dstar is ",Dstar);
if(Dstar>Dgiven){
  cat("Null hypothesis is rejected at 2.5% level of significance")
  } else{
    cat("Null hypothesis is accepted at 2.5% level of significance")
  }