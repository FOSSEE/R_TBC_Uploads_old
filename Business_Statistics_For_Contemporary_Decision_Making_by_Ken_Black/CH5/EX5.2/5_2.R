# Binomial Distribution : P(x) = nCx*p^x*q^n-x = n!/x!(n - x)! *p^x*q^n-x

p =.65
q = 1-p
n = 25
x = 19
x1 = 0:19

# Binomial Distribution through inbuild function in r :
bd <- dbinom(x,n,p)
bd

# Binomial Distribution through formula :
bd <- (factorial(n)/(factorial(x)*factorial(n-x))) * (p^x) * (q^(n-x))
bd

