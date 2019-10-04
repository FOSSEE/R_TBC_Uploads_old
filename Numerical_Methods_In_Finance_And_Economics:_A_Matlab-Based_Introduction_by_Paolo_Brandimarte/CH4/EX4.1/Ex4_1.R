#require(pracma)
f <- function(x) {
  exp(-x)*sin(10*x)
}

integrate(f ,0,2*pi)

integrate(f ,0,2*pi,abs.tol = 10e-6)

integrate(f ,0,2*pi,abs.tol = 10e-8)

quadl(f ,0,2*pi)