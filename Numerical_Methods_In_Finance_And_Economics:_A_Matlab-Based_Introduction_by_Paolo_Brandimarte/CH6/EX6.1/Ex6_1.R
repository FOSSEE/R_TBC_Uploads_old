require(signal)
require("ucminf")

g <- function(x) {
  polyval(c(1, -10.5, 39, -59.5, 30), x)
}
xvet=seq(1,4,0.05)
plot(xvet,g(xvet))
lines(xvet,g(xvet))

x<-ucminf(c(0),g)$par
x
fval<-ucminf(c(0),g)$value
fval

x<-ucminf(c(5),g)$par
x
fval<-ucminf(c(5),g)$value
fval

f <- function(x) {
  polyval(c(1, -8, 22, -24, 1), x)
}
xvet=seq(0,4,0.05)
plot(xvet,f(xvet))
lines(xvet,f(xvet))