favour = 0.45;
samplesize = 200;
expec= favour*samplesize;
sd = sqrt(samplesize*favour*(1-favour));
cat("The expected value is",expec)
cat("The standard deviation is",sd)

#b
prob = 1-pbinom(q = samplesize/2, size = samplesize,prob = favour)
cat("Probability that more than half the members of the sample favour the candidate",prob)