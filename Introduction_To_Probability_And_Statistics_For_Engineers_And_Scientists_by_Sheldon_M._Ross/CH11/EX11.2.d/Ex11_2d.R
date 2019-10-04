X<-c(3, 3, 5, 18, 4, 7)
p<-c(0.1, 0.1, 0.05, 0.4, 0.2, 0.15)
psimu = 0.1843
num= 10000;
T= 0;
n=sum(X);
np = n*p;
Xsqu = X^2;
for (i in 1:6){
  T = T + (Xsqu[i]/np[i])
}
T = T - sum(X)

cat("The test statistic is",T[1])
pvalue = 1- pchisq(T[1], 5);
int1 = psimu - (1.645*sqrt(psimu*(1-psimu)/num));
int2 = psimu + (1.645*sqrt(psimu*(1-psimu)/num));
cat("With 90% confidence p-value lies between ",int1,"and",int2)