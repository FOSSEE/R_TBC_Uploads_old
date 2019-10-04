#hypergeometric distribution 
#for sample without replacement 
x=2#successer in n
n=10#sample size
N=20#lot Size (Population size)
a=5#succeser in N
h=(choose(a,x)*choose(N-a,n-x))/choose(N,n)
cat("probabilit is",h)
