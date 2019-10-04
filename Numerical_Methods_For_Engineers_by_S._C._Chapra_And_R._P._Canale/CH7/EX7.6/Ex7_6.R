library(pracma)
fun <- function (x) x^10 -1
fzero(f = fun,x = c(0,4))
fzero(f = fun,x = c(0,1.3))
fzero(f = fun,x = c(-1.3,0))
fzero(f = fun,x = c(-1.28, 0.9051))