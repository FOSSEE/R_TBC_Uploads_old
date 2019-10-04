a <- function(x)
{
  x*(3*x*x)
}
EX1 =integrate(a,0,1)$value

b <- function(y)
{
  y*1.5*(1- y^2)
}
EX2 =integrate(b,0,1)$value

c <- function(x)
{
  x*x*(3*x*x)
}
EX1sq =integrate(c,0,1)$value

d <-function(y)
{
  y*y*1.5*(1- y^2)
}
EX2sq =integrate(d,0,1)$value

VX1 = EX1sq - EX1^2
VX2 = EX2sq - EX2^2

e <- function(x)
{
  1.5*(x^4)
}
EX1X2 =integrate(e,0,1)$value

Cov = EX1X2 - EX1*EX2

cat("E(Y) = ",EX1 - EX2)
cat("V(Y) = ",VX1 + VX2 + 2*1*(-1)*Cov)
