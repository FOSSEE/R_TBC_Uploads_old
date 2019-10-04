samplesize = 500;
p =0.04;
defective=16;
prob1 = 1-pbinom(defective, samplesize, p, 1-p)
prob2 = pbinom(defective-1, samplesize, p, 1-p);
pvalue = 2*min(prob1,prob2);
cat("The pvalue is",pvalue)