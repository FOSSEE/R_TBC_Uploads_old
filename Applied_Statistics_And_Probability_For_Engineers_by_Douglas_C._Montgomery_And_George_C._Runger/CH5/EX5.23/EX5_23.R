#install.packages("pracma")
#install.packages("MASS")
library(pracma)
library(MASS)

#Independence Implies Zero Covariance(Pg no. 177)

fun_xy <- function(x, y) (1/16)*(x^2)*(y^2)

E_xy = integral2(fun_xy, 0, 2, 0, 4, reltol = 1e-10)
E_xy = E_xy$Q
cat("E(XY) =",E_xy)
fractions(E_xy)

fun_x <- function(x, y) (1/16)*(x^2)*(y)

E_x = integral2(fun_x, 0, 2, 0, 4, reltol = 1e-10)
E_x = E_x$Q
cat("E(X) =",E_x)
fractions(E_x)

fun_y <- function(x, y) (1/16)*(x)*(y^2)

E_y = integral2(fun_y, 0, 2, 0, 4, reltol = 1e-10)
E_y = E_y$Q
cat("E(Y) =",E_y)
fractions(E_y)

if(ceiling(E_xy-(E_x*E_y)) == 0)
{
  print("The two random variables are independent")
}