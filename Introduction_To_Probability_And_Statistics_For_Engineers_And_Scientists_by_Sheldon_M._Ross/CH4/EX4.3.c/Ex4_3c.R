#install.packages("IPSUR")
#install.packages("prob")
library(IPSUR)
#read(IPSUR)
library(prob)
#read(prob)
#install.packages("combinat")
library(combinat)
library(discreteRV)
require(pracma)
library(cubature)
#1
fun0 = function(x,y,z) { exp(-x)*exp(-2*y)*z }
fun01 <- function(z) {
  integrate(function(y) { 
    sapply(y, function(y) {
      integrate(function(x) fun0(x,y,z), 1, Inf)$value
    })
  }, 0, 1)$value
}

fun01(2)
#(1-exp(-2))*exp(-1)

#2
fun0 = function(x,y,z) { exp(-x)*exp(-2*y)*z }
fun01 <- function(z) {
  integrate(function(y) { 
    sapply(y, function(y) {
      integrate(function(x) fun0(x,y,z), 0, y)$value
    })
  }, 0, Inf)$value
}

fun01(2)


'
library(cubature)
f <-function(x) 2*exp(-x[1])*exp(-2*x[2])
adaptIntegrate(f,lowerLimit = c(1,0),upperLimit = c(Inf,1))

require(pracma)
f <- function(x, y) 2*exp(-x)*exp(-2*y)
quad2d(f, 0, 1, 1, Inf)

http://stackoverflow.com/questions/23901682/double-integration-in-r-with-additional-argument
'