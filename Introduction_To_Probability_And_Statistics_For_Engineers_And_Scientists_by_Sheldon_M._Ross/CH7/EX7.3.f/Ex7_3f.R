X<-c(54, 63, 58, 72, 49, 92, 70, 73, 69, 104, 48, 66, 80, 64, 77)
num = 15;
meanX= mean(X);
X2 = X^2;
s2= (sum(X2)- (num*(meanX^2)))/(num-1);
s= sqrt(s2);
tval =  qt(.975,num-1)
upperlim = meanX + (tval*s)/sqrt(num);
lowerlim = meanX - (tval*s)/sqrt(num);
cat("The 95% confidence interval is ",lowerlim,"to ",upperlim)
alpha = 0.05;
tval =  qt(1-alpha,num-1)
lim = meanX + (tval*s)/sqrt(num);
cat("The 95% lower confidence interval is from minus infinity to ",lim)