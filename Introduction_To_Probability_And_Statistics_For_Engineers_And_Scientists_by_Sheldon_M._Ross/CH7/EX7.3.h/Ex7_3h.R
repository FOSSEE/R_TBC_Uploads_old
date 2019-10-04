num=10;
X<-c(0.123, 0.133, 0.124, 0.126, 0.120, 0.130, 0.125, 0.128, 0.124, 0.126)
var(X)
s2 = var(X)
chi1 = qchisq(1-.95,num-1)
chi2 = qchisq(.95,num-1)
lowerlim = (num-1)*s2/chi2;
lowerlim
upperlim = (num-1)*s2/chi1;
upperlim
cat("The 90% confidence interval is ",sqrt(lowerlim), "to ",sqrt(upperlim))