# Hypergeometric distribution : P(x) = ACx*(N-A)C(n-x)/NCn

# N = size of the population, n = sample size, A = number of successes in the population, x = number of successes in the sample; sampling is done without replacement

N = 18
n = 3
A = 12

# Using choose function :

1-((choose(A,0)*choose((N-A),n))/choose(N,n))



