llimy <- 2;  llimx=1
ulimy <-  3    ; ulimx=2
#the first random variable will take on a value between 1 and 2 and the second
#random variable will take on a value between 2 and 3
f <- function(x1,x2)6*exp(1)^(-2*x1-3*x2)
integrate(function(x2) { 
  sapply(x2, function(x2) {
    integrate(function(x1) f(x1,x2), llimx, ulimx)$value
  })
}, llimy, ulimy)
#(b) the first random variable will take on a value less than 2 and the second
#random variable will take on a value greater than 2
llimy <- 2;  llimx=0
ulimy <-  Inf    ; ulimx=2
f <- function(x1,x2)6*exp(1)^(-2*x1-3*x2)
integrate(function(x2) { 
  sapply(x2, function(x2) {
    integrate(function(x1) f(x1,x2), llimx, ulimx)$value
  })
}, llimy, ulimy)