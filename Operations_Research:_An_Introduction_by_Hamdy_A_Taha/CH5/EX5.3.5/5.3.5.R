##Chapter 5 : Transportation Model and its Variant
##Example 3-5 : Page 212 
#u-v incidence matrix with columns - u1,v1,v2,u2,v3,v4,u3 and rows as uv equations
a=matrix(c(1,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,1,1,0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,1,1),6,7,byrow = T)

#cost matrix
costs <- matrix (c(10,2,20,11,12,7,9,20,4,14,16,18), 3, 4,byrow = T)
#rhs of uv equations
n=c(10,2,7,9,20,18)

library(limSolve)
##Least Squares with Equality and Inequality Constraints
Sol=lsei(E=a, F=n, A = diag(7), B = rep(0, 7),G=diag(7),H=rep(0, 7), verbose = FALSE)$X

c(Sol[1]+Sol[5]-20,Sol[1]+Sol[6]-11,Sol[4]+Sol[2]-12,Sol[7]+Sol[2]-4,Sol[7]+Sol[3]-14,Sol[7]+Sol[5]-16)
