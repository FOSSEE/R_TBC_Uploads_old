x<-c(0.5, 1, 1.5, 2, 3, 4, 5, 6, 8, 10)
y<-c(15, 15.1, 16.5, 19.9, 27.7, 29.7, 26.7, 35.9, 42, 49.4)
w<-c()
for (i in 1:10){
  w[i] = 1/x[i]
}
n = 10;
p = matrix(0,2,2)
q = matrix(0,2,1)
p[1, 1] = sum(w);
p[1,2] = n;
p[2,1] = n;
p[2,2] = sum(x);
new<-c()
for (i in 1:10){
  new[i] = w[i]*y[i]
}

q[1,1]= 1*sum(new);
q[2,1] = 1*sum(y);
sol = solve(p,q);
A = sol[1,1];
B = sol[2,1];
cat("A is",A);
cat("B is",B); 
plot(x,y)
l = seq(0,10,0.1)
k = A + B*l
lines(l,k)