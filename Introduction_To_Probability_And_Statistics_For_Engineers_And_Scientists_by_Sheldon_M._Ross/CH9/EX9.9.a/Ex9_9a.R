x<-seq(1,10,1);
y<-c(20.6, 30.8, 55, 71.4, 97.3, 131.8, 156.3, 197.3, 238.7, 291.7)
plot(x, y,xlab = "X",ylab = "Y");
n = length(x)
xsquared = x^2;
xcube = x^3;
xfour = x^4;
xy = x*y;
x2y = xy*x;
p= matrix(0,3,3);
q = matrix(0,3,1);
p[1,1] = n;
p[1,2] = sum(x);
p[1,3]=sum(xsquared);
p[2,1] = sum(x);
p[2,2] = sum(xsquared);
p[2,3]=sum(xcube);
p[3,1] = sum(xsquared);
p[3,2] = sum(xcube);
p[3,3]=sum(xfour);
q[1,1]= 1*sum(y);
q[2,1] = 1*sum(xy);
q[3,1] = 1*sum(x2y);
B= solve(p, q);
cat("B0 is",B[1,1]);
cat("B1 is",B[2,1]);
cat("B2 is",B[3,1])