g<-c(25, 30, 5, 15, 18, 42, 16, 9, 10, 12, 12, 38, 8, 14, 27)
library(EnvStats)
varTest(g,alternative = "greater",conf.level = 0.9,sigma.squared = 64)
#chisq.test didn't give the correct output for me. Hence i have opted for varTest which essentially performs the same on variance as given in the question.
#please install package "EnvStats" before proceeding
