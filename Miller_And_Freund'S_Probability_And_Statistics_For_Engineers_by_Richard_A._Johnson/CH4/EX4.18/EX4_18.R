#variance of hypergeometric distribution
N=20#Total tap recorder
n=10#small sample
a=5#defective tap
sigma_seq=(n*a*(N-a)*(N-n))/((N^2)*(N-1))
var=sigma_seq**0.5
cat("variance of hd is",var)
