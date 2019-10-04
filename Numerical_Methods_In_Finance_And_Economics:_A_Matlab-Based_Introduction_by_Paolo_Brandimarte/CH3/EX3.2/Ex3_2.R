require(rootSolve)
fun <- function (x) x^8 - 36*x^7 + 546*x^6 -4536*x^5 +22449*x^4 -67284*x^3 + 118124*x^2 - 109584*x + 40320
sort(uniroot.all(fun, c(0, 8)),decreasing = TRUE)
p2<-c(1, -36.001, 546, -4536, 22449, -67284, 118124, -109584, 40320)
1/polyroot(p2)