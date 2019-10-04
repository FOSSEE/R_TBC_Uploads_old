#Example 2.17,chapter 5,scetion III.2,page 419
#package used matlib v0.9.1
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")
M <- matrix(c(1,1,-1,-1),ncol = 2)
#finding nilpotent index
A <- matrix(c(0,0,0,0),ncol = 2)
count <- 1
Y <- M
repeat{
  Y <- Y %*% M
  if (all.equal(Y,A)){
    print(count+1)
    break()
  }
 count= count+1
}

