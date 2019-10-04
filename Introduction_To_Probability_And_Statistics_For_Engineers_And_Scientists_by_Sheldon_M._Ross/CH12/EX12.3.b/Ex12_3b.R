n =4;
mo = 2;
X<-c(4.2, 1.8, 5.3, 1.7)
t =3; #value of the test statistic (Ex12_3a)
tstar= min(t, (n*(n+1)/2) - t);
P = matrix(0,4,4);
P[1,1]= 0.5;
P[1,2] = 1;
P[1,3] = 1;
P[1,4] = 1;
for (i in 2:4){
  for (j in 1:4){
    if (j-i <1) {
      P[i,j] = 0.5*P[i-1, j]
    } else{
      P[i,j] = 0.5*(P[i-1,j-i]+P[i-1,j])
    }
  }
}
P