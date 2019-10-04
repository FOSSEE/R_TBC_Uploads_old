x<-c(28, 34, 32, 38, 22)
claim = 25;
total = sum(x);
pval = 1 - ppois(total-1, (claim*length(x)));
cat("The pvalue is",pval)