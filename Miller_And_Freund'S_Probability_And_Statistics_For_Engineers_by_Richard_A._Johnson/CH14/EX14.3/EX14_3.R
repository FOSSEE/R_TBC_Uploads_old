#m0=Population are identical 
#m1=population is not identical
Sand1<-c(0.63,0.17,0.35,0.49,0.18,0.43,0.12,0.20,
0.47,1.36,0.51,0.45,0.84,0.32,0.40)
Sand2<-c(1.13,0.54,0.96,0.26,0.39,0.88,0.92,0.53,
1.01,0.48,0.89,1.07,1.11,0.58)
Loc=0.01
z.alpha=qnorm(0.01)
#reject mo if Z<z.alpha or z>z.alpha
n1=15
n2=14
W1=162
U1=W1-((n1*(n1+1))/2)
U1
mu=n1*n2/2
mu
sigma=n2*n1*(n1+n2+1)/12
sigma
z=(U1-mu)/(sigma**0.5)
z
wilcox.test(Sand1,Sand2,exact = FALSE, correct = FALSE)
cat("Since z = ???2.75 is less than ???2.575, the null hypothesis must
be rejected at ?? = 0.01. The P-value = 0.0060 and we conclude that there is a
strong evidence of difference in the populations of grain size")