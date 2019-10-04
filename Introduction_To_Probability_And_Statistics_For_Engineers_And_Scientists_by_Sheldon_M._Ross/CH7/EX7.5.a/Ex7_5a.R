phat = 0.8;
zalpha = 1.96;

samplesize = 100;
lowerlim = phat - (zalpha*sqrt(phat*(1-phat)/samplesize));
upperlim = phat + (zalpha*sqrt(phat*(1-phat)/samplesize));
cat("The 95% confidence interval is ",lowerlim, "to ",upperlim)