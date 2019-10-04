#Example 2.4,chapter 5,section IV.2,page 432
#package used pracma v1.9.9
#installing and loading library
#install.packages("pracma")
library("pracma")
T <- matrix(c(2,1,-1,4),ncol=2)
a <- eigen(T)
a$values
#so T has only the single eigenvalue 3.
I <- matrix(c(1,0,0,1),ncol = 2)
T-(3*I)
# so for this,the only eigenvalue is 0 and T -3I is nilpotent.
#to ease this computation we find nulspaces
x <- nullspace(T)
x
