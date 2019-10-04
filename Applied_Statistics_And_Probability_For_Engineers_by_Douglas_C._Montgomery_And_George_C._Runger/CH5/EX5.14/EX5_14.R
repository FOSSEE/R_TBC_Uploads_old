#Component Lifetimes(Pg no. 167)

f = function(x1,x2,x3,x4)
{
  (exp(-(0.001*x1)-(0.002*x2)-(0.0015*x3)-(0.003*x4)))
}

#P(X1>1000,X2>1000,X3>1000,X4>1000)

p = f(1000,1000,1000,1000)
cat("P(X1>1000,X2>1000,X3>1000,X4>1000)=",round(p,digits = 5))