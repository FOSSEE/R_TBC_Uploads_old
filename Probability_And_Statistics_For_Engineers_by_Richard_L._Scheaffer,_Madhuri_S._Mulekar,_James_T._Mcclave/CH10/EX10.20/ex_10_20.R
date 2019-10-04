# H0: mu1-mu2=0
# H1: mu1-m2 not=0

M =c(42,18,50)
W =c(38,14,50)

diff_mean = M[1]-W[1]
D0=0
alpha=0.05

z=(diff_mean-D0)/sqrt(M[2]/M[3] + W[2]/W[3])

#Using rejection region approach
compare= qnorm(alpha/2,lower.tail = F)

if(z<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}


