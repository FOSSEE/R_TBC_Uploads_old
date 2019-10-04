#Example 2.10,chapter 5,scetion III.2,page 414
#package used matlib v0.9.1
#Github reposiory of matlib :https://github.com/friendly/matlib

#installation and loading library
#install.packages("matlib")
library("matlib")
N <- matrix(c(0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0),ncol=4)
P <- matrix(c(1,0,1,0,0,2,1,0,1,1,1,0,0,0,0,1),ncol = 4)
A <- P %*% N %*% Inverse(P)
A
#The new matrix,A is nilpotent; its fourth power is the zero matrix.
x <- P %*% N^4 %*% Inverse(P) 
#since (PNP^-1)^4 = P * N^4 *P^-1
y <- det(x)
all.equal(y,0)
