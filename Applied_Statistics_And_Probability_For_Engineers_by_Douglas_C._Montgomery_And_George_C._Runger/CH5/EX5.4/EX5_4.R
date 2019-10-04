#Server Access Time(Pg no. 160)

#P(Y>2000)
f <- function(y) 
{
 (exp((-(0.002*y))))*(1-exp(-(0.001*y)))
}
v = integrate(f, lower = 2000, upper = Inf)
ans = (6*10^-3)*(v$value)
cat("P(Y>2000) =",round(ans,digits = 2))
