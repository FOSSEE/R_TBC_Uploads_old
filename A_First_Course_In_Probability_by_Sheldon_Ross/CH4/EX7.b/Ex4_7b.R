n = 10
p = 0.1
x = 1

binom_ans = pbinom(x, size = n, prob = p)
cat("Ans :", binom_ans, "\n")

l = n*p

pois_ans = ppois(x, l)
cat("Poisson approximation yields : ", pois_ans)
