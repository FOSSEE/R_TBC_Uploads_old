X<-c(3.01, 2.97, 3.12, 2.99, 3.03, 3.02, 3.10, 3.14, 3.09, 3.20)
Y<-seq(1,10,1)
u = 3;
sigma = 0.1;
n=4;
ucl = u + (3*sigma/sqrt(n));
lcl = u - (3*sigma/sqrt(n));
Z<-seq(0.1,10,0.1)
P= matrix(1,1,100)
Q= matrix(1,1,100)
P =P*ucl;
Q =Q*lcl;
plot(Y, X)
plot(Z, P)
plot(Z, Q)
cat('ucl is',ucl)
cat('lcl is',lcl)