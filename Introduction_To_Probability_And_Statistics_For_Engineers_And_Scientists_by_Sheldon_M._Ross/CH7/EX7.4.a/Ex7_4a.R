A<-c(36, 44, 41, 53, 38, 36, 34, 54, 52, 37, 51, 44, 35, 44)
B<-c(52, 64, 38, 68, 66, 52, 60, 44, 48, 46, 70, 62)
sigmaA= 40;
sigmaB= 100;
alpha = 1-0.95;
beta= alpha/2;
meanA = mean(A);
meanB= mean(B);
zbeta = qnorm(1-beta)

lowerlim= mean(A) - mean(B) - (zbeta*sqrt((sigmaA/length(A)) + (sigmaB/length(B)))) ;
upperlim= mean(A) - mean(B) + (zbeta*sqrt((sigmaA/length(A)) + (sigmaB/length(B)))) ;
cat("The 95% confidence interval is ",lowerlim, "to ",upperlim)

beta=alpha;
zbeta = qnorm(1-beta)

upperlim= mean(A) - mean(B) + (zbeta*sqrt((sigmaA/length(A)) + (sigmaB/length(B)))) ;
cat("A value that exceed the difference of the means with 95% confidence is",upperlim)