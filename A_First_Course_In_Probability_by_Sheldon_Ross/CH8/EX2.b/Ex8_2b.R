alpha = 0
beta = 10

E_X = (alpha + beta)/ 2
Var_X = (beta - alpha)^2 / 12

ans1 = Var_X/ 4^2

cat("From Chebyshev's inequality, P{|X-5| > 4} <=", ans1, "\n")

ans2 = punif(1, min = alpha, max = beta) + 1 - punif(9, min = 0, max = 10)
cat("Exact ans, P{|X-5| > 4} =", ans2, "\n")