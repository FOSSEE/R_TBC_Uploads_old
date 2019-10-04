samplesize = 300;
p =0.02;
defective=9;
val = pbinom(defective, samplesize, p, 1-p);
cat("P0.02{X>10} = ",val);
cat("Manufacturers claim cannot be rejected at the 5% level of significance")