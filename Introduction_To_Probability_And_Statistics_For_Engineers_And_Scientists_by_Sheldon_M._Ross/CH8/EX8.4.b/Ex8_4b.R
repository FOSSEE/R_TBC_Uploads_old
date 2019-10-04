X<-c(5.5, 6.0, 7.0, 6.0, 7.5, 6.0, 7.5, 5.5, 7.0, 6.5)
Y<-c(6.5, 6.0, 8.5, 7.0, 6.5, 8.0, 7.5, 6.5, 7.5, 6.0, 8.5, 7.0)
n = length(X);
m= length(Y);
Xbar= mean(X);
Ybar = mean(Y);
Sx = var(X);
Sy = var(Y);
Sp = ((n-1)*Sx/(n+m-2)) + ((m-1)*Sy/(n+m-2));
den = sqrt(Sp*((1/n)+(1/m)));
TS = (Xbar -Ybar)/den;
cat("The test statistic is",TS);
tvalue = qt( 0.95, m+n-2)
if(TS<tvalue){
  cat("Null hypothesis is rejected at 5% level of significance")
}else{
  cat("Null hypothesis is  accepted at 5% level of significance")  
}
cat("The Pvalue is",pt(TS,m+n-2))