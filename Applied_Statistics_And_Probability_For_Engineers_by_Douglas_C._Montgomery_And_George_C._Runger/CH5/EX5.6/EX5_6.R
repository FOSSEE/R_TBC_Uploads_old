#Conditional Probability(Pg no. 163)

#P(Y>2000|X=1500)
f <- function(y) 
{
  0.002*(exp((0.002*1500)-(0.002*y)))
}
v = integrate(f, lower = 2000, upper = Inf)
ans = v$value
cat("P(Y>2000|X=1500) =",round(ans,digits = 3))