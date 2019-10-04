f <- function(x) {
  1/x
}
ans = uniroot(f,c(-1,1),tol=2^-52)
ans$root
ans$f.root

#z<-curve(f)

f <- function(x) {
  x^2
}
ans2 = uniroot(f,c(-1,1),tol=2^-52)
ans2$root
ans2$f.root