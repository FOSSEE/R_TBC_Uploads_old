#Example 2.18,chapter 5,scetion III.2,page 420
#package used matlib v0.9.1
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")
M <- matrix(c(0,1,-1,0,1,0,0,1,1,0,0,0,1,0,-1,0,0,-1,0,1,0,0,1,0,-1),ncol = 5)
#finding nilpotent index
A <- matrix(c(0),ncol = 5,nrow = 5)
count <- 1
Y <- M
repeat{
  Y <- Y %*% M
  if (all.equal(Y,A)== TRUE){
    print(count+1)
    break()
  }
  count=count+1
}
