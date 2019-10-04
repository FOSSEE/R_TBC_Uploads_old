#Conditional Mean And Variance(Pg no. 164)

#E(Y|X=1500)
f <- function(y) 
{
  y*(0.002*(exp((0.002*1500)-(0.002*y))))
}
v = integrate(f, lower = 1500, upper = Inf)
ans = v$value #ms
cat("E(Y|X=1500) =",ans)