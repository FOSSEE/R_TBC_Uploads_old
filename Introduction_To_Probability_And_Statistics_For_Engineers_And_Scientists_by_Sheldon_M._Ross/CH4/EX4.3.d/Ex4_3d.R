#install.packages("IPSUR")
#install.packages("prob")
#install.packages("discreteRV")
#install.packages("pracma")
#install.packages("cubature")
library(IPSUR)
#read(IPSUR)
library(prob)
#read(prob)
#install.packages("combinat")
library(combinat)
library(discreteRV)
require(pracma)
library(cubature)

fun0 = function(x,y,a) { exp(-x)*exp(-y) }
fun01 <- function(z) {
  integrate(function(y) { 
    sapply(y, function(y) {
      integrate(function(x) fun0(x,y,z), 0, a*y)$value
    })
  }, 0, Inf)$value
}

fun01(1)
fun01(2)