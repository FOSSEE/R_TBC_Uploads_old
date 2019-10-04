Xbar<-c(35.1, 33.2, 31.7, 35.4,  34.5, 36.4, 35.9, 38.4, 35.7, 27.2, 38.1, 37.6, 38.8, 34.3, 43.2, 41.3, 35.7, 36.3, 35.4, 34.6)
S<-c(4.2, 4.4, 2.5, 3.2, 2.6, 4.5, 3.4, 5.1, 3.8, 6.2, 4.2, 3.9, 3.2, 4, 3.5, 8.2, 8.1, 4.2, 4.1, 3.7)
c<-c(0.7978849, 0.8862266, 0.9213181, 0.9399851, 0.9515332, 0.9593684, 0.9650309, 0.9693103, 0.9726596)
Y<-seq(1,20,1)
n =5;
Z<-seq(0.1,20,0.1)
Xbarbar = mean(Xbar);
Sbar = mean(S);
lclX = Xbarbar - (3*Sbar/(sqrt(n)*c[n-1]));
uclX = Xbarbar + (3*Sbar/(sqrt(n)*c[n-1]));
val1 = 1/c[n-1]
val1 = val1^2;
val1 = val1 - 1;
val = sqrt(val1);
ucls = Sbar*(1+(3*val));
lcls = Sbar*(1-(3*val));
plot(Y, Xbar)
P<-matrix(1,1, 200)
Q<-matrix(1,1, 200)
P= P*lclX;
Q=Q*uclX;
cat('UCL(X)=',uclX)
cat('LCL(X)=',lclX)
plot(Z, P)
plot(Z, Q,main = 'Control Chart for X')
cat('UCL(S)=',uclX)
cat('LCL(S)=',lclX)
plot(Y, S)
P= P*lcls/lclX;
Q=Q*ucls/uclX;
plot(Z, P)
plot(Z, Q,main = 'Control Chart for S')