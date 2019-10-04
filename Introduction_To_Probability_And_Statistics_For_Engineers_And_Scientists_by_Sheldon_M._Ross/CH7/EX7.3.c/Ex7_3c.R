var = 4;
num = 9;
X<-c(5,8.5,12,15,7,9,7.5,6.5,10.5)
samplemean= mean(X);
samplesd = sd(X)
alpha= 0.005;
zalpha = qnorm(p = alpha,mean = 0,sd = 1,lower.tail = FALSE)
zalpha
lowerlim = samplemean - (zalpha*sqrt(var/num))
upperlim = samplemean + (zalpha*sqrt(var/num))
cat("The 95% confidence interval is ",lowerlim, "to ",upperlim)

alpha= 0.01;
zalpha = qnorm(p = alpha,mean = 0,sd = 1,lower.tail = FALSE)
lowerlim = samplemean - (zalpha*sqrt(var/num))
upperlim = samplemean + (zalpha*sqrt(var/num))
cat("The 95% upper confidence interval is ",lowerlim," to infinity")
cat("The 95% upper confidence interval is minus infinity to ",upperlim)