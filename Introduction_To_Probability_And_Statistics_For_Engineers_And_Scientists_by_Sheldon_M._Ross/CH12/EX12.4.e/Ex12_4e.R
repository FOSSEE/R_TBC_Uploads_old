n1 =5;
m1= 6;

t1 =21;
num1 = n1*(n1+m1+1)/2;
d1=abs(t1 - num1);
val = d1/sqrt(n1*m1*(n1+m1+1)/12);
pval = 2*(1- pnorm(val, 0,1))
cat("The p-value for eg 12.4a is",pval)
n2 =9;
m2= 13;
t2 =72;
d2=abs(t2 - n2*(n2+m2+1)/2);
val = d2/sqrt(n2*m2*(n2+m2+1)/12);
pval = 2*(1-pnorm(val, 0,1));
cat("The p-value for eg 12.4d is",pval)