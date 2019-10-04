avg = 0;
var = 4;
num = 9;
X<-c(5,8.5,12,15,7,9,7.5,6.5,10.5)
samplemean= mean(X);
lowerlim = samplemean - (1.96*sqrt(var/num))
upperlim = samplemean + (1.96*sqrt(var/num))
cat("The 95% confidence interval is ",lowerlim,"to ",upperlim)