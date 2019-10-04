
# Chapter 3
# Example 3.22 page 103 from the pdf..
# Statistical Independent Problem..

# Note- Example 3.20 is theoretical, we need to just prove the variable is not statistical Independent, code involves just basic multiplication..

# package installed pracma just for simplicity for evaluating integrals numerically..
# given a density function and x1 ,x2, x3 represent 3 of these containers selected independently..
# to find P(x1<2,1<x2<3,x3>2)
# if the package is already installed remove the installed.packages("pracma") from your code..

install.packages("pracma")
library("pracma")

f <- function(x,y,z){
  
  exp(-x-y-z)
  
}


# Answer..
cat("The value of P(x1<2,1<x2<3,x3>2) is",integral3(f,0,2,1,3,2,22))






