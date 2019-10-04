meaneach = 147;
sdeach  = 62;
samplesize = 25;
lim =150;
samplemean = meaneach;
samplesd= sdeach/sqrt(samplesize)
prob = 1 - pnorm(q = lim,mean = samplemean,sd = samplesd)
prob